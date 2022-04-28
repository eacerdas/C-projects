module lut_multiplier_4b #(parameter N=4)
(
  input wire reset, // reset
  input wire [(N -1):0] A , // numero de 4 bits
  input wire [3:0] B , // numero de 4 bits
  output reg [(N +3) :0] AB // resultado de la multiplicacion
);

wire [5:0] AB_1 , AB_2;

/* se instancia el primer mux */
lut_multiplier_2b #(.N(4)) mul_ab1 (
  .reset (reset) , // reset
  .A (A) , // numero de 4 bits
  .B (B [1:0]) , // numero de 4 bits
  .AB (AB_1) // resultado mux 1
);

/* se instancia el segundo mux */
lut_multiplier_2b #(.N(4)) mul_ab2 (
  .reset (reset) , // reset
  .A (A) , // numero de 4 bits
  .B (B [3:2]) , // numero de 4 bits
  .AB (AB_2) // resultado mux 2
);

/*obtiene el resultado final
que es la suma de la salida del primer mux mas
el segundo desplazado 2 a la izquierda*/
always @ (*) AB = AB_1 + (AB_2 << 2);

endmodule
