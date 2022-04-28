module sumador (
  input a,
  input b,
  input Ci,
  output Co,
  output resultado_sumador 
);

  wire [1:0] suma;

  assign suma = a + b + Ci;
  assign resultado_sumador = suma [0];
  assign Co = suma [1];

endmodule

module array_multiplier_4b(
  input [3:0] A,
  input [3:0] B,
  input reset_L,
  output [7:0] resultado);
  
  wire cero = 0;
  // Para los acarreos

  wire Co0 , Co1 , Co2 , Co3 , Co4 , Co5 , Co6 , Co7 , Co8 , Co9 , Co10;
  wire Co11 , Co12 , Co13;

  // Para los resultados de las sumas

  wire RS0 , RS1 , RS2 , RS3 , RS4 , RS5;


  // Se instancia el modulo sumador tantas veces commo sea necesario :

  sumador R0 (
    .a (A[0] & B[0]),
    .b (cero),
    .Ci (cero),
    .Co (Co0),
    .resultado_sumador (resultado[0])
  );

  sumador R1 (
    .a (A[0] & B[1]),
    .b (A[0] & B[0]),
    .Ci (cero),
    .Co (Co1),
    .resultado_sumador (resultado[1])
  );

  // intermedia - R2

  sumador R02 (
    .a (A[2] & B[0]),
    .b (A[1] & B[1]),
    .Ci (Co1),
    .Co (Co2),
    .resultado_sumador (RS0)
  );

  sumador R2 (
    .a (RS0),
    .b (A[0] & B[2]),
    .Ci (cero),
    .Co (Co3),
    .resultado_sumador (resultado[2])
  );

  // intermedia - R3

  sumador R003 (
    .a (A[3] & B[0]),
    .b (A[2] & B[1]),
    .Ci (Co2),
    .Co (Co4),
    .resultado_sumador (RS1)
  );

  sumador R03 (
    .a (RS1),
    .b (A[1] & B[2]),
    .Ci (Co3),
    .Co (Co5),
    .resultado_sumador (RS2)
  );

  sumador R3 (
    .a (RS2),
    .b (A[0] & B[3]),
    .Ci (cero),
    .Co (Co6),
    .resultado_sumador (resultado[3])
  );

  // intermedia - R4

  sumador R004 (
    .a (cero),
    .b (A[3] & B[1]),
    .Ci (Co4),
    .Co (Co7),
    .resultado_sumador (RS3)
  );

  sumador R04 (
    .a (RS3),
    .b (A[2] & B[2]),
    .Ci (Co5),
    .Co (Co8),
    .resultado_sumador (RS4)
  ) ;

  sumador R4 (
    .a (RS4),
    .b (A[1] & B[3]),
    .Ci (Co6),
    .Co (Co9),
    .resultado_sumador (resultado[4])
  );

  // intermedia - R5

  sumador R05 (
    .a ( A[3] & B[2]),
    .b ( Co7 ),
    .Ci ( Co8 ),
    .Co ( Co10 ),
    .resultado_sumador (RS5)
  ) ;

  sumador R5(
    .a (RS5),
    .b (A[2] & B[3]),
    .Ci (Co9),
    .Co (Co11),
    .resultado_sumador (resultado[5])
  ) ;

  // intermedia - R6

  sumador R6 (
    .a (Co10),
    .b (A[3] & B[3]),
    .Ci (Co11),
    .Co (Co12),
    .resultado_sumador (resultado[6])
  );

  // R7
  sumador R7(
    .a (Co12),
    .b (cero),
    .Ci (cero),
    .Co (Co13),
    .resultado_sumador (resultado[7])
  );
endmodule
