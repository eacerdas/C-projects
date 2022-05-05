module lsfr_generator(input clk, input get, input resetn, output reg [1:0] random);
    reg [2:0] lsfr;

    always @(posedge clk) begin
        if (~resetn) lsfr <= 3'b111; //must be 111 to be able to initialize
        else if (get) lsfr <= {lsfr[2]^lsfr[0], lsfr[2], lsfr[1]}; // does the shift and appends the xor of bit 0 and 2
    end
    always @(*) begin
        random = {lsfr[1], lsfr[0]}; //updates the random numer in real time
    end
    
endmodule