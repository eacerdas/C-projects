module lut_multiplier_2b #(parameter SIZE = 2)
                          (input wire [(SIZE-1):0] A, input wire [1:0] B, input wire reset, output reg [(SIZE*2-1):0] M);
    
    always @ (*) begin
        if (reset == 0)
            M = 0;
        else
            if (B == 2'b00) begin
                M = 0;
            end
            else if (B == 2'b01)begin
                M = A;
            end
                else if (B == 2'b10)begin
                M = A<<1;
                end
                else if (B == 2'b11) begin
                M = (A<<1)+A;
                end
            else begin
                M = 0;
            end
    end
endmodule
