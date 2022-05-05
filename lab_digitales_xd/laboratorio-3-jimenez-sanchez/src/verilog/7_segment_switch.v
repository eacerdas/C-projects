module seven_segment_switch(
	input  [31:0] num_in,
	input  clk,
	input  resetn,
        input base_sel,
	output reg [7:0] an_out,
	output reg [7:0] c_out
);

        wire [7:0] an_out_dec;
        wire [7:0] an_out_hex;
        wire [7:0] c_out_dec;
        wire [7:0] c_out_hex;

        seven_segment_hex u_seven_segment_hex (
                .num_in    (num_in),
                .clk       (clk),
                .resetn    (resetn),
                .an_out    (an_out_hex),
                .c_out     (c_out_hex)
        );

        seven_segment_dec u_seven_segment_dec (
                .num_in    (num_in),
                .clk       (clk),
                .resetn    (resetn),
                .an_out    (an_out_dec),
                .c_out     (c_out_dec)
        );

        always @(*) begin
                if (base_sel == 1) begin
                        an_out = an_out_dec;
                        c_out = c_out_dec;
                end else begin
                        an_out = an_out_hex;
                        c_out = c_out_hex;
                end
        end
endmodule