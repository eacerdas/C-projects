module bin_to_one_hot(
        input [2:0] bin,
        output reg [7:0] one_hot
);
        always @(*) begin
                case (bin)
                        0: one_hot = 8'b00000001;
                        1: one_hot = 8'b00000010;
                        2: one_hot = 8'b00000100;
                        3: one_hot = 8'b00001000;
                        4: one_hot = 8'b00010000;
                        5: one_hot = 8'b00100000;
                        6: one_hot = 8'b01000000;
                        7: one_hot = 8'b10000000;
                endcase
        end
endmodule