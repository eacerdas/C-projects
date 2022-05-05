module cache_4_way_lru #(parameter block_size = 2, cache_size = 1) (
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
    parameter sets_size = (cache_size*1024)/(block_size*word_size*4);   
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
    reg [0:block_size*address_size-1] cache_memory [0:3][0:sets_size-1];
    // Each set in each way has these info bits: 
    // [valid, dirty, LRU bit 0, LRU bit 1, tag*sets_size]
    reg [0:4+tag_size-1] cache_info [0:3][0:sets_size-1];                  
    reg [index_size-1:0] index;
    reg [tag_size-1:0] tag;
    reg [offset_size-1:0] offset;
    reg [63:0] total_inst_counter, hits, misses;
    reg [31:0] temp_addr;
    reg [31:0] state;
    reg return_read;
    reg test;

    // Flags
    reg writeback_flag, read_write_flag, hit_miss_flag;
    // hit_way: way in which a hit has found, LRU_way: the LRU's way
    // MRU_way: the MRU's way
    reg [0:3] hit_way, LRU_way, MRU_way;

    // Current set info for all 4 ways
    reg [0:3] current_valid, current_dirty;
    reg [0:1] current_LRU [0:3];
    reg [0:tag_size-1] current_tag [0:3];

    // Counters
    integer i, j;
    integer read_line;

    // Real time tags and flags
    always @(*) begin
        hit_miss_flag = 0;
        hit_way = -1;
        LRU_way = -1;
        MRU_way = -1;
        for(i = 0; i < 4; i = i + 1) begin
            // Tags
            current_valid[i] = cache_info[i][index][0];
            current_dirty[i] = cache_info[i][index][1];
            current_LRU[i] = cache_info[i][index][2:3];
            current_tag[i] = cache_info[i][index][4:4+tag_size-1];
            // Flags
            if (current_tag[i] == tag && current_valid[i] && !hit_miss_flag) begin
                hit_miss_flag = 1;
                hit_way = i;
            end 
            if (current_LRU[i] == 0) LRU_way = i;
            if (current_LRU[i] == 3) MRU_way = i;
        end
    end

    always@(posedge clk) begin
        if(~reset) begin
            // Reset cache, set all valid and dirty bits to 0 and reset LRU bits
            for(j = 0; j < sets_size; j = j + 1) begin  
                for(i = 0; i < 4; i = i + 1) begin                     
                    cache_info[i][j][0] <= 0;
                    cache_info[i][j][1] <= 0;
                    cache_info[i][j][2:3] <= i;
                    cache_info[i][j][4:4+tag_size-1] <= 0;
                end
            end
            // Initialize flags
            read_write_flag <= 0;                                                   
            total_inst_counter <= 0;
            return_read <= 0;
            hits <= 0;
            misses <= 0;
            test <= 0;
            state <= IDLE;
        end
        else begin
            case (state)
                // Waiting for activity for the cache
                IDLE : begin                                                        
                    test <= 0;
                    read_line <= 0;
                    mem_ready_pico <= 0;
                    writeback_flag <= 0;
                    offset <= mem_addr_pico[offset_size-1:0];
                    index <= mem_addr_pico[index_size+offset_size-1:offset_size];
                    tag <= mem_addr_pico[address_size-1:index_size+offset_size];
                    
                    if(mem_valid_pico) begin
                        total_inst_counter <= total_inst_counter + 1;
                        // The address id out of bounds
                        if(mem_addr_pico > 'hFFFF) begin                            
                            state <= OFF_LIMIT;
                        end
                        // Write request, set write flag
                        else if (mem_wstrb_pico) begin
                            read_write_flag <= 1;                                   
                            state <= DATA_R_W;
                        end
                        // Read request, set read flag
                        else if (!mem_wstrb_pico) begin
                            read_line <= 0;
                            read_write_flag <= 0;                                   
                            state <= DATA_R_W;
                        end
                    end
                    else state <= IDLE;
                end

                // State to define what needs to be done (read, write,
                // writeback)
                DATA_R_W : begin                                                
                    read_line <= 0;
                    writeback_flag <= 0;
                    // HIT
                    if (hit_miss_flag) begin
                        // Update LRU
                        for (j=0; j<4; j=j+1) begin
                            case (current_LRU[hit_way])
                            0: begin
                                if (j != hit_way) begin
                                    cache_info[j][index][2:3] <= cache_info[j][index][2:3] - 1;
                                end
                            end
                            1: begin
                                if (j != hit_way) begin
                                    if(current_LRU[j] > 1) cache_info[j][index][2:3] <= cache_info[j][index][2:3] - 1;
                                end
                            end 
                            2: begin
                                if (j != hit_way) begin
                                    if(current_LRU[j] > 2) cache_info[j][index][2:3] <= cache_info[j][index][2:3] - 1;
                                end
                            end
                            endcase
                        end
                        cache_info[hit_way][index][2:3] <= 3; // New MRU
                        if(!writeback_flag) hits <= hits + 1;  
                        hit_miss_flag <= 1; // Hit
                        // WRITE
                        if (read_write_flag) begin
                            state <= WRITE;
                        end
                        // READ
                        else begin
                            read_line <= 0;
                            state <= READ;
                        end
                    end
                    // MISS
                    else begin
                        // Update LRU
                        for (j=0; j<4; j=j+1) begin
                            if (j != LRU_way) begin
                                cache_info[j][index][2:3] <= cache_info[j][index][2:3] - 1;
                            end
                        end
                        cache_info[LRU_way][index][2:3] <= 3; // New MRU
                        if(!writeback_flag) misses <= misses + 1;
                        hit_miss_flag <= 0; // Miss    
                        temp_addr <= mem_addr_pico & (32'hFFFFFFFF<<(offset_size));         // Temp address to read memory
                        // WRITE
                        if (read_write_flag) begin
                            cache_info[LRU_way][index][0] <= 1;                             // Enables valid flag on inserted block   
                            if(current_dirty[LRU_way]) state <= WRITE_BACK;                 // Dirty, need to writeback
                            else state <= WRITE;
                        end
                        // READ
                        else begin
                            read_line <= 0;
                            if(current_dirty[LRU_way]) state <= WRITE_BACK;                 // Dirty, need to writeback
                            else state <= READ;     
                        end                                 
                    end
                end

                WRITE : begin
                if(hit_miss_flag) begin
                        cache_info[MRU_way][index][1] <= 1;                                 // Set dirty
                        cache_memory[MRU_way][index][offset[2+:offset_size-2]*32+: 32] <= mem_wdata_pico;   // Write to cache
                        mem_ready_pico <= 1;
                        state <= RETURN;                                           
                    end
                    else begin
                        mem_addr_mem <= temp_addr;
                        state <= MEM_WRITE;
                    end
                end

                MEM_WRITE : begin
                    mem_wstrb_mem <= 0;
                    mem_valid_mem <= 1;
                    if(mem_ready_mem) begin
                        cache_memory[MRU_way][index][read_line*32 +: 32] <= mem_rdata_mem;
                        if(read_line==(block_size-1)) begin
                            mem_ready_pico <= 1;
                            cache_memory[MRU_way][index][offset[2+: offset_size-2]*address_size +: 32] <= mem_wdata_pico;
                            cache_info[MRU_way][index][1] <= 1;                     // Update dirty
                            cache_info[MRU_way][index][4:4+tag_size-1] <= tag;      // Update tag
                            mem_valid_mem <= 0;
                            state <= RETURN;                                // Enables the data to the cpu (picorv32)
                        end
                        else begin
                            read_line <= read_line + 1;
                            mem_ready_pico <= 0;
                            mem_valid_mem <= 0;
                            state <= UPDATE_ADDR;
                        end
                    end 
                    else begin
                        state <= MEM_WRITE;                                 // Access the main memory
                    end   
                end

                READ : begin
                    if(hit_miss_flag)begin
                        mem_rdata_pico <= cache_memory[MRU_way][index][offset[2 +: offset_size-2]*32 +: 32]; // Reads data
                        mem_ready_pico <= 1;
                        state <= RETURN;                                            // Return data to pico
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
                        cache_memory[MRU_way][index][read_line*32 +: 32] <= mem_rdata_mem;           // Read the whole line
                        if(read_line==(block_size-1)) begin
                            cache_info[MRU_way][index][0] <= 1;                                      // Valid
                            cache_info[MRU_way][index][4:4+tag_size-1] <= tag;                       // New tag
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
                    else if(read_write_flag) state <= MEM_WRITE;  // Write
                    else state <= MEM_READ; // Read
                end

                RETURN : begin  //Allows to comunicate with PicoRV32
                    if(return_read) begin
                        mem_ready_pico <= 0;
                        state <= IDLE;
                        return_read <= 0;
                    end
                    else begin
                        mem_ready_pico <= 1;
                        mem_rdata_pico <= cache_memory[MRU_way][index][offset[2 +: offset_size-2]*address_size+: 32];
                        return_read <= 1;
                        state <= RETURN;
                    end
                end

                MEM_WRITEBACK : begin
                    if(mem_ready_mem) begin
                        mem_wdata_mem <= cache_memory[MRU_way][index][read_line*32+: 32];
                        if(read_line == (block_size-1)) begin
                            cache_info[MRU_way][index][1] <= 0; // Update dirty
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
                    mem_addr_mem <= {cache_info[MRU_way][index][4:4+tag_size-1], index, {offset_size{1'b0}}};
                    state <= MEM_WRITEBACK;
                end

                WRITEBACK_DELAY : begin
                    if(mem_ready_mem)begin
                        mem_valid_mem <= 0;
                        state <= DATA_R_W;   
                    end
                end

                // Enables direct connection between the cpu and main memory,
                // physical memory size limitations 
                OFF_LIMIT : begin                                                   
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
