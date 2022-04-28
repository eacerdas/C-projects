module array_multiplier_32b(
  input [31:0] A,
  input [31:0] B,
  input reset_L,
  output [63:0] resultado 
);

  wire [31:0] Ci [31:0];
  wire [31:0] Co [31:0];
  wire [31:0] RS0 [31:0];
  wire [31:0] RS1 [31:0];
  wire [31:0] RS2 [31:0];

  genvar i , j;

  generate
  for (i=0; i <32; i=i+1) begin:fila
    assign Ci [i][0] = 0;

    for( j = 0; j <32; j = j +1) begin:columna
      assign RS2[i][j] = B[i] & A[j];

      sumador RN (
        .a (RS2[i][j]),
        .b (RS1[i][j]),
        .Ci (Ci[i][j]),
        .Co (Co[i][j]),
        .resultado_sumador (RS0[i][j]) 
      );

      if ( j == 31 && i !=0) begin
        assign RS1[i][j] = Co[i-1][j];
      end

      if (j !=0) begin
        assign Ci [i][j] = Co [i][j-1];
      end

      if (j !=31 && i !=0) begin
        assign RS1[i][j] = RS0[i-1][j+1];
      end

      assign RS1 [0][j] = 0;
      assign resultado[i] = RS0[i][0];

      if (i==31) begin
        assign resultado[j+31] = RS0[31][j];
      end
    end
  end

  endgenerate

  assign resultado[63] = Co[31][31];

endmodule
