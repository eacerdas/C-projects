`timescale 1 ns / 1 ps

module system (input clk,
               input resetn,
               output trap,
               output wire [31:0] out_byte,
               output wire out_byte_en);
    // set this to 0 for better timing but less performance/MHz
    parameter FAST_MEMORY = 0;
    
	wire mem_valid;
	wire mem_instr;
	wire mem_ready;
	wire [31:0] mem_addr;
	wire [31:0] mem_wdata;
	wire [3:0] mem_wstrb;
	wire [31:0] mem_rdata;

    wire mem_valid_mem;
	wire mem_instr_mem;
	wire mem_ready_mem;
	wire [31:0] mem_addr_mem;
	wire [31:0] mem_wdata_mem;  
	wire [3:0] mem_wstrb_mem;
	wire [31:0] mem_rdata_mem;

	wire mem_la_read;
	wire mem_la_write;
	wire [31:0] mem_la_addr;
	wire [31:0] mem_la_wdata;
	wire [3:0] mem_la_wstrb;
    
    picorv32 picorv32_core (
    .clk         (clk),
    .resetn      (resetn),
    .trap        (trap),
    .mem_valid   (mem_valid),
    .mem_instr   (mem_instr),
    .mem_ready   (mem_ready),
    .mem_addr    (mem_addr),
    .mem_wdata   (mem_wdata),
    .mem_wstrb   (mem_wstrb),
    .mem_rdata   (mem_rdata),
    .mem_la_read (mem_la_read),
    .mem_la_write(mem_la_write),
    .mem_la_addr (mem_la_addr),
    .mem_la_wdata(mem_la_wdata),
    .mem_la_wstrb(mem_la_wstrb)
    );
    
    memory mem (
    .clk         (clk),
    .resetn      (resetn),
    .mem_valid   (mem_valid_mem),
    .mem_instr   (mem_instr_mem),
    .mem_ready   (mem_ready_mem),
    .mem_addr    (mem_addr_mem),
    .mem_wdata   (mem_wdata_mem),
    .mem_wstrb   (mem_wstrb_mem),
    .mem_rdata   (mem_rdata_mem),
    .out_byte    (out_byte),
    .out_byte_en (out_byte_en)
    );

    cache_direct cache_d (
    .clk            (clk),
    .reset          (resetn),
    .mem_valid_pico (mem_valid),
    .mem_instr_pico	(mem_instr),
    .mem_ready_pico (mem_ready),
    .mem_addr_pico  (mem_addr),
    .mem_wdata_pico (mem_wdata),
    .mem_wstrb_pico (mem_wstrb),
    .mem_rdata_pico (mem_rdata),
    .mem_valid_mem  (mem_valid_mem),
    .mem_instr_mem	(mem_instr_mem),
    .mem_ready_mem  (mem_ready_mem),
    .mem_addr_mem   (mem_addr_mem),
    .mem_wdata_mem  (mem_wdata_mem),
    .mem_wstrb_mem  (mem_wstrb_mem),
    .mem_rdata_mem  (mem_rdata_mem)
	);

endmodule