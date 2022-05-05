module lut_multiplier_8b #(parameter SIZE = 8)
                          (input wire [(SIZE-1):0] A, input wire [7:0] B, input wire reset, output reg [(SIZE*2-1):0] M);
    
    wire [SIZE*2-1:0] mux_1_out;
    wire [SIZE*2-1:0] mux_2_out;
    
    lut_multiplier_4b #(.SIZE(SIZE)) mux_1(
    .A (A),
    .B (B[3:0]),
    .reset (reset),
    .M (mux_1_out)
    );
    
    lut_multiplier_4b #(.SIZE(SIZE)) mux_2(
    .A (A),
    .B (B[7:4]),
    .reset (reset),
    .M (mux_2_out)
    );
    
    always @ (*) begin
        M = mux_1_out + (mux_2_out<<4);
    end
endmodule
    
