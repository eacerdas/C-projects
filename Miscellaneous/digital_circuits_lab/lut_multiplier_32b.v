/* modulo : lut_multiplier_32b
usado en: ejercicio 4
descripcion : multiplicador de 32 bits ,
compuesto de 16 multiplicadores LUT de 2 bits */

module lut_multiplier_32b
(
  input wire reset, // reset
  input wire [31:0] A, // numero de 8 bits
  input wire [31:0] B, // numero de 8 bits
  output reg [63:0] AB // resultado de la multiplicacion
);

/* cables de los resultados de los 16
multiplicadores LUT de 2 bits */
wire [33:0] AB_1 , AB_2 , AB_3 , AB_4;
wire [33:0] AB_5 , AB_6 , AB_7 , AB_8;
wire [33:0] AB_9 , AB_10 , AB_11 , AB_12;
wire [33:0] AB_13 , AB_14 , AB_15 , AB_16;

/* Se instancia los 16 multiplicadores LUT de 2 bits */

lut_multiplier_2b #(.N(32)) mul_ab32_1(
  .reset (reset), // reset
  .A (A), // numero de 32 bits
  .B (B [1:0]), // numero de 2 bits
  .AB (AB_1) // resultado mux 2
);

lut_multiplier_2b #(.N(32)) mul_ab32_2(
  .reset (reset), // reset
  .A (A), // numero de 32 bits
  .B (B [3:2]), // numero de 2 bits
  .AB (AB_2) // resultado mux 2
);

lut_multiplier_2b #(.N(32)) mul_ab32_3 (
  .reset (reset), // reset
  .A (A), // numero de 32 bits
  .B (B [5:4]), // numero de 2 bits
  .AB (AB_3) // resultado mux 2
);

lut_multiplier_2b #(.N(32)) mul_ab32_4 (
  .reset (reset), // reset
  .A (A), // numero de 32 bits
  .B (B [7:6]), // numero de 2 bits
  .AB (AB_4) // resultado mux 2
);

lut_multiplier_2b #(.N(32)) mul_ab32_5 (
  .reset (reset), // reset
  .A (A), // numero de 32 bits
  .B (B [9:8]), // numero de 2 bits
  .AB (AB_5) // resultado mux 2
);

lut_multiplier_2b #(.N(32)) mul_ab32_6 (
  .reset (reset), // reset
  .A (A), // numero de 32 bits
  .B (B [11:10]), // numero de 2 bits
  .AB (AB_6) // resultado mux 2
);

lut_multiplier_2b #(.N(32)) mul_ab32_7 (
  .reset (reset), // reset
  .A (A), // numero de 32 bits
  .B (B [13:12]), // numero de 2 bits
  .AB (AB_7) // resultado mux 2
);

lut_multiplier_2b #(.N(32)) mul_ab32_8 (
  .reset (reset), // reset
  .A (A), // numero de 32 bits
  .B (B [15:14]), // numero de 2 bits
  .AB (AB_8) // resultado mux 2
);

lut_multiplier_2b #(.N(32)) mul_ab32_9 (
  .reset (reset), // reset
  .A (A), // numero de 32 bits
  .B (B [17:16]), // numero de 2 bits
  .AB (AB_9) // resultado mux 2
);

lut_multiplier_2b #(.N(32)) mul_ab32_10 (
  .reset (reset), // reset
  .A (A), // numero de 32 bits
  .B (B [19:18]), // numero de 2 bits
  .AB (AB_10) // resultado mux 2
);

lut_multiplier_2b #(.N(32)) mul_ab32_11 (
  .reset (reset), // reset
  .A (A), // numero de 32 bits
  .B (B [21:20]), // numero de 2 bits
. AB ( AB_11 ) // resultado mux 2
);

lut_multiplier_2b #(.N(32)) mul_ab32_12 (
  .reset (reset), // reset
  .A (A), // numero de 32 bits
  .B (B [23:22]), // numero de 2 bits
  .AB (AB_12) // resultado mux 2
);

lut_multiplier_2b #(.N(32)) mul_ab32_13 (
  .reset (reset), // reset
  .A (A), // numero de 32 bits
  .B (B [25:24]), // numero de 2 bits
  .AB (AB_13) // resultado mux 2
);

lut_multiplier_2b #(.N(32)) mul_ab32_14 (
  .reset (reset), // reset
  .A (A), // numero de 32 bits
  .B (B [27:26]), // numero de 2 bits
  .AB (AB_14) // resultado mux 2
);

lut_multiplier_2b #(.N(32)) mul_ab32_15 (
  .reset (reset), // reset
  .A (A), // numero de 32 bits
  .B (B [29:28]), // numero de 2 bits
  .AB (AB_15) // resultado mux 2
);

lut_multiplier_2b #(.N(32)) mul_ab32_16(
  .reset (reset), // reset
  .A (A), // numero de 32 bits
  .B (B [31:30]), // numero de 2 bits
  .AB (AB_16)// resultado mux 2
);

/*Se suman las multiplicaciones de los 16 multiplicadores LUT
cada resultado se corre 2 bits
*/

always @ (*) AB = AB_1 + (AB_2 << 2) + (AB_3 << 4) + (AB_4 << 6)
+ (AB_5 << 8) + (AB_6 << 10) + (AB_7 << 12) + (AB_8 << 14)
+ (AB_9 << 16) + (AB_10 << 18) + (AB_11 << 20) + (AB_12 << 22)
+ (AB_13 << 24) + (AB_14 << 26) + (AB_15 << 28) + (AB_16 << 30);

endmodule
