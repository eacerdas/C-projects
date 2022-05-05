module sumador_wCarry( input bit1, input bit2, input carryIn, output result, output carryOut );
    assign {carryOut, result} = bit1 + bit2 + carryIn;
endmodule

module arr_multiplier_4b(input [3:0] A, input [3:0] B, output [7:0] result);
    wire carry0, carry1, carry2, carry3, carry4, carry5, carry6, carry7, carry8, carry9, carry10, carry11, carry12, carry13;
    wire sum_result2, sum_result3, sum_result6, sum_result4,sum_result7, sum_result8;

        sumador_wCarry suma0(
            .bit1(A[0] & B[0]),
            .bit2(1'b0),
            .carryIn(1'b0),
            .carryOut(),
            .result(result[0])
        );
    
        sumador_wCarry suma1(
            .bit1(A[1] & B[0]),
            .bit2(A[0] & B[1]),
            .carryIn(1'b0),
            .carryOut(carry0),
            .result(result[1])
        );
    
        sumador_wCarry suma2(
            .bit1(A[1] & B[1]),
            .bit2(A[2] & B[0]),
            .carryIn(carry0),
            .carryOut(carry1),
            .result(sum_result2)
        );
    
        sumador_wCarry suma3(
            .bit1(A[3] & B[0]),
            .bit2(A[2] & B[1]),
            .carryIn(carry1),
            .carryOut(carry2),
            .result(sum_result3)
        );
    
        sumador_wCarry suma4(
            .bit1(1'b0),
            .bit2(A[3] & B[1]),
            .carryIn(carry2),
            .carryOut(carry3),
            .result(sum_result4)
        );
    
        sumador_wCarry suma5(
            .bit1(sum_result2),
            .bit2(A[0] & B[2]),
            .carryIn(1'b0),
            .carryOut(carry4),
            .result(result[2])
        );
    
        sumador_wCarry suma6(
            .bit1(sum_result3),
            .bit2(A[1] & B[2]),
            .carryIn(carry4),
            .carryOut(carry5),
            .result(sum_result6)
        );
    
        sumador_wCarry suma7(
            .bit1(sum_result4),
            .bit2(A[2] & B[2]),
            .carryIn(carry5),
            .carryOut(carry6),
            .result(sum_result7)
        );
    
        sumador_wCarry suma8(
            .bit1(carry3),
            .bit2(A[3] & B[2]),
            .carryIn(carry6),
            .carryOut(carry7),
            .result(sum_result8)
        );
        sumador_wCarry suma9(
            .bit1(sum_result6),
            .bit2(A[0] & B[3]),
            .carryIn(1'b0),
            .carryOut(carry8),
            .result(result[3])
        );
    
        sumador_wCarry suma10(
            .bit1(sum_result7),
            .bit2(A[1] & B[3]),
            .carryIn(carry8),
            .carryOut(carry9),
            .result(result[4])
        );
    
        sumador_wCarry suma11(
            .bit1(sum_result8),
            .bit2(A[2] & B[3]),
            .carryIn(carry9),
            .carryOut(carry10),
            .result(result[5])
        );
    
        sumador_wCarry suma12(
            .bit1(carry7),
            .bit2(A[3] & B[3]),
            .carryIn(carry10),
            .carryOut(result[7]),
            .result(result[6])
        );



    
endmodule
