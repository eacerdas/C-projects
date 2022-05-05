module seven_segment_hex(
	input  [31:0] num_in,
	input  clk,
	input  resetn,
	output [7:0] an_out,
	output [7:0] c_out
);

        reg [20:0] big_cnt;
        wire [2:0] cnt;
        reg [3:0] num_bcd;
        wire [7:0] an_outn;

        bin_to_one_hot u_bin_to_one_hot (
        .bin        (cnt),
        .one_hot    (an_outn)
        );

        bcd_to_7seg u_bcd_to_7seg (
        .resetn      (resetn),
        .num_bcd     (num_bcd),
        .num_7seg    (c_out)
        );

        always @(*) begin
                case (cnt)
                        0: num_bcd = num_in[3:0];
                        1: num_bcd = num_in[7:4];
                        2: num_bcd = num_in[11:8];
                        3: num_bcd = num_in[15:12];
                        4: num_bcd = num_in[19:16];
                        5: num_bcd = num_in[23:20];
                        6: num_bcd = num_in[27:24];
                        7: num_bcd = num_in[31:28];
                endcase
        end

        always @(posedge clk) begin 
                if (!resetn) begin
                        big_cnt <= 0;
                end
                else begin
                        big_cnt <= big_cnt + 1; 
                end
        end 

        assign an_out = ~an_outn;
        assign cnt = big_cnt[20:18];
endmodule