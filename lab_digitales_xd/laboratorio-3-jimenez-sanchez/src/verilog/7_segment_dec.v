module seven_segment_dec (
    input clk,
    input resetn,
    input [31:0] num_in,
    output reg [7:0] c_out,
    output reg [7:0] an_out
);

reg [20:0] contador; 
wire [2:0] refresh; 
reg [3:0] numero_BCD;


always @(posedge clk) begin 
    if(~resetn)
        contador <= 0;
    else
        contador <= contador + 1;
end 

// El tene run contador de gran tamaño, ayuda a que los cambios sean notorios al ojo humano y las pantallas puedan mostrarlo

assign refresh = contador[20:18];

//Se puede hacer un tipo de desplazamiento decimal utilizando el módulo. Además sabemos que verilog trabaja con divisiones enteras
// de modo que podemos aislar cada número utilizando este tipo de "desplazamiento" y luego diviendo entre el número de decimales que
// queremos ignorar a la derecha. 

// Ejemplo
// 98765432 / 10000000 = 9
// 98765432 % 10000000 = 8765432 / 1000000 = 8

always @(*) begin
    if (!resetn) begin
            c_out = 8'b11111111; // "0" 
            an_out = 8'b11111110;     
    end
    else begin
        case(refresh)
            3'b000: begin
                an_out = 8'b01111111; 

                numero_BCD = num_in/10000000;            
            end
            3'b001: begin
                an_out = 8'b10111111; 

                numero_BCD = (num_in%10000000)/1000000;            
            end
            3'b010: begin
                an_out = 8'b11011111; 

                numero_BCD = ((num_in%10000000)%1000000)/100000;            
            end
            3'b011: begin
                an_out = 8'b11101111; 

                numero_BCD = (((num_in%10000000)%1000000)%100000)/10000;            
            end
            3'b100: begin
                an_out = 8'b11110111; 

                numero_BCD = ((((num_in%10000000)%1000000)%100000)%10000)/1000;            
            end
            3'b101: begin
                an_out = 8'b11111011; 

                numero_BCD = (((((num_in%10000000)%1000000)%100000)%10000)%1000)/100;            
            end
            3'b110: begin
                an_out = 8'b11111101; 

                numero_BCD = ((((((num_in%10000000)%1000000)%100000)%10000)%1000)%100)/10;            
            end
            3'b111: begin
                an_out = 8'b11111110; 
                
                numero_BCD = ((((((num_in%10000000)%1000000)%100000)%10000)%1000)%100)%10;            
            end
        endcase

        case(numero_BCD)
            4'b0000: 
                c_out = 8'b11000000;      
            4'b0001: 
                c_out = 8'b11111001; 
            4'b0010: 
                c_out = 8'b10100100;  
            4'b0011: 
                c_out = 8'b10110000;  
            4'b0100:    
                c_out = 8'b10011001;  
            4'b0101: 
                c_out = 8'b10010010; 
            4'b0110: 
                c_out = 8'b10000010;  
            4'b0111: 
                c_out = 8'b11111000;  
            4'b1000:    
                c_out = 8'b10000000;      
            4'b1001: 
                c_out = 8'b10011000;  
            default: 
                c_out = 8'b10011000; 
        endcase
    end
end
endmodule