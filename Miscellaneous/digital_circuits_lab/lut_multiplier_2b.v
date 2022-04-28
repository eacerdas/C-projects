module lut_multiplier_2b #(parameter N = 2)
(
  input wire reset, // reset
  input wire [(N-1):0] A , // numero de N bits
  input wire [1:0] B , // numero de 2 bits
  output reg [(N+1):0] AB // resultado de la multiplicacion
);

/* La tabla LUT es combinacional , no es secuencial
por lo tanto se puede implementar con un always (*)
y no es necesario usar flip - flops */
always @ (*) begin
  if (~reset) AB = 0; // reset
  else begin
    if (B == 2’ b00) begin
      AB = 0;
    end
    else if (B == 2’ b01) begin
      AB = A;
    end
    else if (B == 2’ b10) begin
      AB = A << 1;
    end
    else if (B == 2’ b11) begin
      AB = A + (A << 1);
    end
    else begin
      AB = 0;
    end
  end
end

endmodule
