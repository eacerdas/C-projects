`timescale 1 ns / 1 ps

module system_tb;
	reg clk = 1;
	always #5 clk = ~clk;

	reg resetn = 0;
	initial begin
		if ($test$plusargs("vcd")) begin
			$dumpfile("system.vcd");
			$dumpvars(0, system_tb);
		end
		repeat (100) @(posedge clk);
		resetn <= 1;
	end

	wire trap;
	wire [7:0] an_out;
	wire [7:0] c_out;
	wire out_byte_en;

	system uut (
		.clk        (clk        ),
		.resetn     (resetn     ),
		.trap       (trap       ),
		.an_out   (an_out  ),
		.c_out   (c_out  ),
		.out_byte_en(out_byte_en)
	);

	always @(posedge clk) begin
		if (resetn && out_byte_en) begin
			$write("%c", an_out);
			$write("%c", c_out);
			$fflush;
		end
		if (resetn && trap) begin
			$finish;
		end
	end
endmodule
