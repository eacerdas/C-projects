module bcd_to_7seg(
        input resetn,
	input  [3:0] num_bcd,
	output reg [7:0] num_7seg
);
        always @(*) begin
                if (!resetn) begin
                        num_7seg = 8'b11111111; // "0"     
                end
                else begin
                        case (num_bcd)
                                4'h00: num_7seg = 8'b11000000; // "0"     
                                4'h01: num_7seg = 8'b11111001; // "1" 
                                4'h02: num_7seg = 8'b10100100; // "2" 
                                4'h03: num_7seg = 8'b10110000; // "3" 
                                4'h04: num_7seg = 8'b10011001; // "4" 
                                4'h05: num_7seg = 8'b10010010; // "5" 
                                4'h06: num_7seg = 8'b10000010; // "6" 
                                4'h07: num_7seg = 8'b11111000; // "7" 
                                4'h08: num_7seg = 8'b10000000; // "8" 
                                4'h09: num_7seg = 8'b10011000; // "9" 
                                4'h0a: num_7seg = 8'b10001000; // "a" 
                                4'h0b: num_7seg = 8'b10000011; // "b"  
                                4'h0c: num_7seg = 8'b11000110; // "c" 
                                4'h0d: num_7seg = 8'b10100001; // "d" 
                                4'h0e: num_7seg = 8'b10000110; // "e" 
                                4'h0f: num_7seg = 8'b10001110; // "f" 
                        endcase
                end
        end
endmodule