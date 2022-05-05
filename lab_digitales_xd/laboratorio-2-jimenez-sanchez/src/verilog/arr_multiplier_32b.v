module adder_wCarry( input bit1, input bit2, input carryIn, input reset, output reg result, output reg carryOut );
    always @(*) begin
        if(reset) begin
            {carryOut, result} = bit1 + bit2 + carryIn;
        end
        else begin
            carryOut = 0;
            result = 0;
        end
    end
endmodule

module arr_multiplier_32b(
    input [31:0] A,
    input [31:0] B,
    input reset,
    output [63:0] result);

    wire [31:0] adder_results[31:0];
    wire [31:0] adder_input1[31:0];
    wire [31:0] adder_input2[31:0];
    wire [31:0] adder_Co[31:0];
    wire [31:0] adder_Ci[31:0];

    genvar CurrentRow, CurrentCol;
    generate
        //Cada bit de resultado se obtiene en la columna 0. Esta columna no tiene Ci
        for(CurrentRow = 0; CurrentRow < 32; CurrentRow=CurrentRow+1) begin: row

            assign adder_Ci[CurrentRow][0] = 0;

            for(CurrentCol = 0; CurrentCol < 32; CurrentCol=CurrentCol+1) begin: column
                adder_wCarry adder(
                    .reset (reset),
                    .bit1 (adder_input1[CurrentRow][CurrentCol]),
                    .bit2 (adder_input2[CurrentRow][CurrentCol]),
                    .carryIn (adder_Ci[CurrentRow][CurrentCol]),
                    .carryOut (adder_Co[CurrentRow][CurrentCol]),
                    .result (adder_results[CurrentRow][CurrentCol])
                );
                
                assign adder_input1[CurrentRow][CurrentCol] = A[CurrentCol]&B[CurrentRow];
                assign adder_input2[0][CurrentCol] = 0;


                if(CurrentCol != 0) begin
                    assign adder_Ci[CurrentRow][CurrentCol] = adder_Co[CurrentRow][CurrentCol-1];
                end

                if(CurrentRow != 0) begin
                    if (CurrentCol!=31)begin
			            assign adder_input2[CurrentRow][CurrentCol]=adder_results[CurrentRow-1][CurrentCol+1];
                    end
                    else begin
			            assign adder_input2[CurrentRow][CurrentCol]=adder_Co[CurrentRow-1][CurrentCol];
                    end
		        end

                assign result[CurrentRow] = adder_results[CurrentRow][0];
                
                if(CurrentRow==31) begin
                    assign result[CurrentCol+31] = adder_results[31][CurrentCol];
                end

            end
        end
    endgenerate
    assign result[63] = adder_Co[31][31];
endmodule
