`timescale 1 ns / 1 ps

module system_tb;
	reg clk = 1;
	always #5 clk = ~clk;

	reg resetn = 0;
	reg irq = 0;
	initial begin
		if ($test$plusargs("vcd")) begin
			$dumpfile("system.vcd");
			$dumpvars(0, system_tb);
		end
		repeat (1) @(posedge clk);
		resetn <= 1;

		repeat (100) @(posedge clk);
		irq <= 0;

		repeat (10) @(posedge clk);
		irq <= 1;

		repeat (10) @(posedge clk);
		irq <= 0;

		repeat (10) @(posedge clk);
		irq <= 1;

		repeat (100) @(posedge clk);
		irq <= 0;

		repeat (1000) @(posedge clk);
		irq <= 1;

		repeat (1000) @(posedge clk);
		irq <= 0;

		repeat (3000) @(posedge clk);
		irq <= 1;

		repeat (100) @(posedge clk);
		irq <= 0;

		repeat (100) @(posedge clk);
		irq <= 1;
		
		repeat (200) @(posedge clk);
		irq <= 0;

		repeat (2000) @(posedge clk);
		irq <= 1;

		repeat (100) @(posedge clk);
		irq <= 0;
	end

	wire trap;
	wire [7:0] out_byte;
	wire out_byte_en;

	system uut (
		.clk        (clk        ),
		.irq        (irq        ),
		.resetn     (resetn     ),
		.trap       (trap       ),
		.out_byte   (out_byte   ),
		.out_byte_en(out_byte_en),
		.irq_counter(irq_counter)
	);

	always @(posedge clk) begin
		if (resetn && out_byte_en) begin
			$write("%c", out_byte);
			$fflush;
		end
		if (resetn && trap) begin
			$finish;
		end
	end
endmodule
