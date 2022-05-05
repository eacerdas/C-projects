module memory #(parameter integer MEM_SIZE = 16384, 
                parameter READ_DELAY = 10,
                parameter WRITE_DELAY = 15)
               (input clk,
                input resetn,
                input mem_valid,
                input mem_instr,
                input [31:0] mem_addr,
                input [31:0] mem_wdata,
                input [3:0] mem_wstrb,
                output reg mem_ready,
                output reg [31:0] mem_rdata,
                output reg [31:0] out_byte,
                output reg out_byte_en);

  reg [31:0] mem [0:MEM_SIZE-1];
    
`ifdef SYNTHESIS
initial $readmemh("../firmware/firmware.hex", mem);
`else
initial $readmemh("firmware.hex", mem);
`endif
    
	reg m_read_en;
    integer cnt, ciclos0, ciclos1;

    // Delay Counter
    always @(posedge clk) begin
        if(!resetn) begin
            cnt <= 0;
            ciclos0 <= 0;
            ciclos1 <= 0;
        end 
        else begin
            if (mem_valid) cnt <= cnt + 1;
            else cnt <= 0;
        end
    end

    // Memory read/write with delays
    always @(posedge clk) begin
        m_read_en <= 0;
        out_byte_en <= 0;
        mem_ready <= mem_valid && !mem_ready && m_read_en;
        mem_rdata <= mem[mem_addr >> 2];

        if(out_byte == 0) ciclos0 <= ciclos0+1;
        if(out_byte == 1) ciclos1 <= ciclos1+1;

        (* parallel_case *)
        case (1)
            // READ_DELAY-2 to account for mem_ready setting only until next clk cycle
            (cnt >= READ_DELAY-2) && mem_valid && !mem_ready && !mem_wstrb && (mem_addr >> 2) < MEM_SIZE: begin
                m_read_en <= 1;
            end
            (cnt >= WRITE_DELAY-1) && mem_valid && !mem_ready && |mem_wstrb && (mem_addr >> 2) < MEM_SIZE: begin
                if (mem_wstrb[0]) mem[mem_addr >> 2][ 7: 0] <= mem_wdata[ 7: 0];
                if (mem_wstrb[1]) mem[mem_addr >> 2][15: 8] <= mem_wdata[15: 8];
                if (mem_wstrb[2]) mem[mem_addr >> 2][23:16] <= mem_wdata[23:16];
                if (mem_wstrb[3]) mem[mem_addr >> 2][31:24] <= mem_wdata[31:24];
                mem_ready <= 1;
            end
            // Intercept values from certain addresses for analysis
            mem_valid && !mem_ready && |mem_wstrb && mem_addr == 32'h1000_0000: begin
                    out_byte_en <= 1;
					out_byte <= mem_wdata;
					mem_ready <= 1;
			end
        endcase
    end
    
endmodule