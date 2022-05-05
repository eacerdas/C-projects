module lut_multiplier_16b #(parameter SIZE = 16)
                           (input wire [(SIZE-1):0] A, input wire [15:0] B, input wire reset, output reg [(SIZE*2-1):0] M);
    
    wire [SIZE*2-1:0] mux_1_out;
    wire [SIZE*2-1:0] mux_2_out;
    
    lut_multiplier_8b #(.SIZE(SIZE)) mux_1(
    .A (A),
    .B (B[7:0]),
    .reset (reset),
    .M (mux_1_out)
    );
    
    lut_multiplier_8b #(.SIZE(SIZE)) mux_2(
    .A (A),
    .B (B[15:8]),
    .reset (reset),
    .M (mux_2_out)
    );
    
    always @ (*) begin
        M = mux_1_out + (mux_2_out<<8);
    end
endmodule
