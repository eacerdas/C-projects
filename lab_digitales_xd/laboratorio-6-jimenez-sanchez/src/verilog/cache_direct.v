module cache_direct #(parameter block_size = 2, cache_size = 1) (
    input clk,
    input reset,
    input [31:0] mem_rdata_mem,
    input mem_ready_mem,
    input mem_valid_pico,
    input mem_instr_pico,
    input [31:0] mem_addr_pico,
    input [31:0] mem_wdata_pico,
    input [3:0] mem_wstrb_pico,
    output reg mem_ready_pico,
    output reg [31:0] mem_rdata_pico,
    output reg mem_valid_mem,
    output reg mem_instr_mem,
    output reg [31:0] mem_addr_mem,
    output reg [31:0] mem_wdata_mem,
    output reg [3:0] mem_wstrb_mem
);

    // Field sizes
    parameter word_size = 4;
    parameter address_size = 32;
    parameter sets_size = (cache_size*1024)/(block_size*word_size);   
    parameter index_size = $clog2(sets_size);                    
    parameter offset_size = $clog2(block_size*word_size);   
    parameter tag_size = address_size - index_size - offset_size;      

    // States
    parameter IDLE = 1;
    parameter DATA_R_W = 2;
    parameter WRITE = 3;
    parameter READ = 4;
    parameter MEM_READ = 5; 
    parameter MEM_WRITE = 6;  
    parameter WRITE_BACK = 7;
    parameter UPDATE_ADDR = 8;
    parameter MEM_WRITEBACK = 9;
    parameter RETURN = 10;
    parameter WRITEBACK_DELAY = 11;
    parameter OFF_LIMIT = 12;

    // Memories
    reg [0:block_size*address_size-1] cache_memory [0:sets_size-1];
    reg [0:2+tag_size-1] cache_info [0:sets_size-1];                  // valid, dirty, tag*sets_size
    reg [index_size-1:0] index;
    reg [tag_size-1:0] tag, current_tag;
    reg [offset_size-1:0] offset;
    reg [63:0] total_inst_counter, hits, misses;
    reg [31:0] temp_addr;
    reg [31:0] state;
    reg return_read;
    reg test;
    reg writeback_flag, read_write_flag, hit_miss_flag, current_dirty, current_valid;

    integer i;
    integer read_line;

    // Real time tags
    always @(*) begin
        current_valid = cache_info[index][0];
        current_tag = cache_info[index][2:2+tag_size-1];
        current_dirty = cache_info[index][1];
    end

    always@(posedge clk) begin
        if(~reset) begin
            for(i = 0; i<sets_size; i = i + 1) begin                                // Clears cache
                cache_info[i] <= 0;
            end
            read_write_flag <= 0;                                                   // Initialize flags
            total_inst_counter <= 0;
            return_read <= 0;
            hits <= 0;
            misses <= 0;
            test <= 0;
            state <= IDLE;
        end
        else begin
            case (state)
                IDLE : begin                                                        // Waiting for activity for the cache
                    test <= 0;
                    read_line <= 0;
                    mem_ready_pico <= 0;
                    writeback_flag <= 0;
                    offset <= mem_addr_pico[offset_size-1:0];
                    index <= mem_addr_pico[index_size+offset_size-1:offset_size];
                    tag <= mem_addr_pico[address_size-1:index_size+offset_size];
                    
                    if(mem_valid_pico) begin
                        total_inst_counter <= total_inst_counter + 1;
                        if(mem_addr_pico > 'hFFFF) begin                            // The address id out of bounds
                            state <= OFF_LIMIT;
                        end
                        else if (mem_wstrb_pico) begin
                            read_write_flag <= 1;                                   //write flag
                            state <= DATA_R_W;
                        end
                        else if (!mem_wstrb_pico) begin
                            read_line <= 0;
                            read_write_flag <= 0;                                   //read flag
                            state <= DATA_R_W;
                        end
                    end
                    else state <= IDLE;
                end

                DATA_R_W : begin                                                // state to define what need to be done
                    read_line <= 0;
                    writeback_flag <= 0;

                    if (read_write_flag) begin //write
                        if(current_tag == tag && current_valid) begin           // The data is already in memory, hit
                            if(!writeback_flag) hits <= hits + 1;               // Sees if its a writeback, if not: hit
                            hit_miss_flag <= 1; //hit
                            state <= WRITE;
                        end 
                        else begin
                            temp_addr <= mem_addr_pico & (32'hFFFFFFFF<<(offset_size));     // temp address to read memory
                            cache_info[index][0] <= 1;                                      // enables valid flag

                            hit_miss_flag <= 0;                                             //miss
                            if(!writeback_flag) misses <= misses + 1;

                            if(current_dirty) state <= WRITE_BACK;                          // dirty, need to writeback
                            else state <= WRITE;                                            // write state
                        end
                    end
                    else begin //read
                        if(current_tag == tag && current_valid) begin                       // read hit
                            if(!writeback_flag) hits <= hits + 1;
                            
                            read_line <= 0;
                            hit_miss_flag <= 1;                                             //hit
                            state <= READ;
                        end  
                        else begin
                            temp_addr <= mem_addr_pico & (32'hFFFFFFFF<<(offset_size));     // temp address to read memory
                            read_line <= 0;
                            if(!writeback_flag) misses <= misses + 1;
                            
                            if(current_dirty) state <= WRITE_BACK;                          // dirty, need to writeback
                            else begin
                                hit_miss_flag <= 0;                                         //miss
                                state <= READ;                                              //read state
                            end
                        end   
                    end
                end

                WRITE : begin
                    if(hit_miss_flag) begin                                                 // is a hit
                        cache_info[index][1] <= 1;                                      // dirty flag set
                        cache_memory[index][offset[2+:offset_size-2]*32+: 32] <= mem_wdata_pico;      // writes to memory
                        mem_ready_pico <= 1;
                        state <= RETURN;                                           
                    end
                    else begin //miss
                        mem_addr_mem <= temp_addr;
                        state <= MEM_WRITE;
                    end
                end

                MEM_WRITE : begin
                    mem_wstrb_mem <= 0;
                    mem_valid_mem <= 1;
                    if(mem_ready_mem) begin
                        cache_memory[index][read_line*32 +: 32] <= mem_rdata_mem;
                        if(read_line==(block_size-1)) begin
                            mem_ready_pico <= 1;
                            cache_memory[index][offset[2+: offset_size-2]*address_size +: 32] <= mem_wdata_pico;
                            cache_info[index][1] <= 1;                     //update dirty
                            cache_info[index][2:2+tag_size-1] <= tag;      //update tag
                            mem_valid_mem <= 0;
                            state <= RETURN;                                //enables the data to the cpu (picorv32)
                        end
                        else begin
                            read_line <= read_line + 1;
                            mem_ready_pico <= 0;
                            mem_valid_mem <= 0;
                            state <= UPDATE_ADDR;
                        end
                    end 
                    else begin
                        state <= MEM_WRITE;                                 // access the main memory
                    end   
                end

                READ : begin                                                // controls the reading, sees if needed to access memory
                    if(hit_miss_flag)begin
                        mem_rdata_pico <= cache_memory[index][offset[2 +: offset_size-2]*32 +: 32]; //reads data
                        mem_ready_pico <= 1;
                        state <= RETURN;                                            //return data to pico
                    end
                    else begin
                        mem_addr_mem <= temp_addr;
                        state <= MEM_READ; 
                    end
                end

                MEM_READ : begin
                    mem_wstrb_mem <= 0;
                    mem_valid_mem <= 1;
                    if( mem_ready_mem ) begin
                        cache_memory[index][read_line*32 +: 32] <= mem_rdata_mem;           //read the whole line
                        if(read_line==(block_size-1)) begin
                            cache_info[index][0] <= 1;                                      //valid
                            cache_info[index][2:2+tag_size-1] <= tag;                       //new tag
                            mem_valid_mem <= 0;
                            state <= RETURN;
                        end
                        else begin
                            read_line <= read_line + 1;
                            mem_ready_pico <= 0;
                            mem_valid_mem <= 0;
                            state <= UPDATE_ADDR;
                        end
                    end
                end
                
                UPDATE_ADDR : begin
                    mem_addr_mem <= mem_addr_mem + 4;
                    if(writeback_flag) state <= MEM_WRITEBACK;
                    else if(read_write_flag) state <= MEM_WRITE;  //write
                    else state <= MEM_READ; //read
                end

                RETURN : begin                                                  //allows to comunicate with picorv32
                    if(return_read) begin
                        mem_ready_pico <= 0;
                        state <= IDLE;
                        return_read <= 0;
                    end
                    else begin
                        mem_ready_pico <= 1;
                        mem_rdata_pico <= cache_memory[index][offset[2 +: offset_size-2]*address_size+: 32];
                        return_read <= 1;
                        state <= RETURN;
                    end
                end

                MEM_WRITEBACK : begin
                    if(mem_ready_mem) begin
                        mem_wdata_mem <= cache_memory[index][read_line*32+: 32];
                        if(read_line == (block_size-1)) begin
                            cache_info[index][1] <= 0; // update dirty
                            state <= WRITEBACK_DELAY;
                        end
                        else begin
                            read_line <= read_line + 1;
                            writeback_flag <= 1;
                            state <= UPDATE_ADDR;
                        end    
                    end
                    else begin
                        state <= MEM_WRITEBACK;
                    end
                end

                WRITE_BACK : begin
                    mem_valid_mem <= 1;
                    mem_wstrb_mem <= 4'hF;
                    mem_addr_mem <= {cache_info[index][2:2+tag_size-1], index, {offset_size{1'b0}}};
                    state <= MEM_WRITEBACK;
                end

                WRITEBACK_DELAY : begin
                    if(mem_ready_mem)begin
                        mem_valid_mem <= 0;
                        state <= DATA_R_W;   
                    end
                end

                OFF_LIMIT : begin                                                   // enables direct connection between the cpu and main memory, physical memory size limitations
                    mem_addr_mem<=mem_addr_pico;
                    mem_ready_pico<=mem_ready_mem;
                    mem_wdata_mem<= mem_wdata_pico;
                    mem_rdata_pico<=mem_rdata_mem;
                    mem_valid_mem<= mem_valid_pico;
                    mem_wstrb_mem<=mem_wstrb_pico;
                    state <= IDLE;
                end

                default : begin
                    state <= IDLE;
                end
            endcase    
        end
    end
endmodule    
