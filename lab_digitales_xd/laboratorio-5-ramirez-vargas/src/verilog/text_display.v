module text_display (
    input [3:0] selector,
    input clk,
    input reset,
    output reg [7:0] anodo,
	output reg [7:0] catodo
);

reg [20:0] contador;

always @(posedge clk or negedge reset) begin 
 if(reset==0)
  contador <= 0;
 else
 //Contador que permite que los numeros sean visibles
  contador <= contador + 1;
end 

always @(*) begin 


if (selector == 0) begin
    if (contador [20:18] == 0) begin
    anodo = 8'b11111110;
    catodo= 8'b10000111;  //t  
    end
    else if (contador [20:18] == 1) begin
    anodo = 8'b11111101;
    catodo= 8'b10101111; //   r 
    end
    else if (contador [20:18] == 2) begin
    anodo = 8'b11111011;
    catodo= 8'b10001000;  //a     
    end
    else if (contador [20:18] == 3) begin
    anodo = 8'b11110111;
    catodo= 8'b10000111;  //t     
    end
    else if (contador [20:18] == 4) begin
    anodo = 8'b11101111;
    catodo = 8'b11010010; //s   
    end

    else if (contador [20:18] == 5) begin
    anodo = 8'b11011111;
    catodo= 8'b11111111;  //
    end  
    else if (contador [20:18] == 6) begin
    anodo = 8'b10111111;
    catodo= 8'b11111111;  // 
    end  
    else if (contador [20:18] == 7) begin
    anodo = 8'b01111111;
    catodo= 8'b11111111;  //
    end 
end

if (selector == 1) begin
    if (contador [20:18] == 0) begin
    anodo = 8'b11111110;
    catodo= 8'b10000111; //t 
    end
    else if (contador [20:18] == 1) begin
    anodo = 8'b11111101;
    catodo= 8'b11000110; //   c
    end
    else if (contador [20:18] == 2) begin
    anodo = 8'b11111011;
    catodo= 8'b10000110; //   e
    end
    else if (contador [20:18] == 3) begin
    anodo = 8'b11110111;
    catodo= 8'b11000111;  //l   
    end
    else if (contador [20:18] == 4) begin
    anodo = 8'b11101111;
    catodo= 8'b10000110;  //e   
    end
    else if (contador [20:18] == 5) begin
    anodo = 8'b11011111;
    catodo = 8'b11010010; //s
    end
    else if (contador [20:18] == 6) begin
    anodo = 8'b10111111;
    catodo= 8'b11111111;  // 
    end  
    else if (contador [20:18] == 7) begin
    anodo = 8'b01111111;
    catodo= 8'b11111111;  //
    end    
   
end

if (selector == 2) begin
    if (contador [20:18] == 0) begin
    anodo = 8'b11111110;
    catodo=  8'b10101111;  //r
    end
    else if (contador [20:18] == 1) begin
    anodo = 8'b11111101;
    catodo= 8'b10000110; //   e
    end
    else if (contador [20:18] == 2) begin
    anodo = 8'b11111011;
    catodo= 8'b10001100; //   p
    end
    else if (contador [20:18] == 3) begin
    anodo = 8'b11110111;
    catodo= 8'b10001000;  //a  
    end
    else if (contador [20:18] == 4) begin
    anodo = 8'b11101111;
    catodo= 8'b10001100;  //p 
    end
        else if (contador [20:18] == 5) begin
    anodo = 8'b11011111;
    catodo= 8'b11111111;  //
    end  
    else if (contador [20:18] == 6) begin
    anodo = 8'b10111111;
    catodo= 8'b11111111;  // 
    end  
    else if (contador [20:18] == 7) begin
    anodo = 8'b01111111;
    catodo= 8'b11111111;  //
    end
end
//Scissors
if (selector == 3) begin
    if (contador [20:18] == 0) begin
    anodo = 8'b11111110;
    catodo= 8'b11010010;  //s
    end
    else if (contador [20:18] == 1) begin
    anodo = 8'b11111101;
    catodo=  8'b10101111; //   r
    end
    else if (contador [20:18] == 2) begin
    anodo = 8'b11111011;
    catodo= 8'b10100011; //   o
    end
    else if (contador [20:18] == 3) begin
    anodo = 8'b11110111;
    catodo= 8'b11010010;  //s 
    end
    else if (contador [20:18] == 4) begin
    anodo = 8'b11101111;
    catodo= 8'b11010010;  //s 
    end   
    else if (contador [20:18] == 5) begin
    anodo = 8'b11011111;
    catodo= 8'b11001111;  //i
    end  
    else if (contador [20:18] == 6) begin
    anodo = 8'b10111111;
    catodo= 8'b11000110;  //c 
    end  
    else if (contador [20:18] == 7) begin
    anodo = 8'b01111111;
    catodo= 8'b11010010;  //s
    end  
end

if (selector == 4) begin
    if (contador [20:18] == 0) begin
    anodo = 8'b11111110;
    catodo= 8'b10001010;;  //k
    end
    else if (contador [20:18] == 1) begin
    anodo = 8'b11111101;
    catodo= 8'b11000110; //   c
    end
    else if (contador [20:18] == 2) begin
    anodo = 8'b11111011;
    catodo= 8'b10100011; //   o
    end
    else if (contador [20:18] == 3) begin
    anodo = 8'b11110111;
    catodo=  8'b10101111;   //r 
    end   

    else if (contador [20:18] == 4) begin
    anodo = 8'b11101111;
    catodo= 8'b11111111;  //
    end
        else if (contador [20:18] == 5) begin
    anodo = 8'b11011111;
    catodo= 8'b11111111;  //
    end  
    else if (contador [20:18] == 6) begin
    anodo = 8'b10111111;
    catodo= 8'b11111111;  // 
    end  
    else if (contador [20:18] == 7) begin
    anodo = 8'b01111111;
    catodo= 8'b11111111;  //
    end
end

if (selector == 5) begin
    if (contador [20:18] == 0) begin
    anodo = 8'b11111110;
    catodo=  8'b11000111;   //l 
    end
    else if (contador [20:18] == 1) begin
    anodo = 8'b11111101;
    catodo= 8'b10001000; //   a
    end
    else if (contador [20:18] == 2) begin
    anodo = 8'b11111011;
    catodo= 8'b11010101;  //v    
    end
    else if (contador [20:18] == 3) begin
    anodo = 8'b11110111;
    catodo= 8'b11001111;  //i     
    end
    else if (contador [20:18] == 4) begin
    anodo = 8'b11101111;
    catodo = 8'b10101111; //r   
    end    
    else if (contador [20:18] == 5) begin
    anodo = 8'b11011111;
    catodo= 8'b11111111;  //
    end  
    else if (contador [20:18] == 6) begin
    anodo = 8'b10111111;
    catodo= 8'b11111111;  // 
    end  
    else if (contador [20:18] == 7) begin
    anodo = 8'b01111111;
    catodo= 8'b11111111;  //
    end
end

if (selector == 6) begin
    if (contador [20:18] == 0) begin
    anodo = 8'b11111110;
    catodo= 8'b10101011;  //n
    end
    else if (contador [20:18] == 1) begin
    anodo = 8'b11111101;
    catodo= 8'b10100011; //   o
    end
    else if (contador [20:18] == 2) begin
    anodo = 8'b11111011;
    catodo= 8'b10010101; //   w
    end


    else if (contador [20:18] == 3) begin
    anodo = 8'b1110111;
    catodo= 8'b1111111;  //u 
    end  

    else if (contador [20:18] == 4) begin
    anodo = 8'b11101111;
    catodo= 8'b11100011;  //u 
    end   
    else if (contador [20:18] == 5) begin
    anodo = 8'b11011111;
    catodo= 8'b10100011;  //o
    end  
    else if (contador [20:18] == 6) begin
    anodo = 8'b10111111;
    catodo= 8'b10010001;  //y 
    end  

    else if (contador [20:18] == 7) begin
    anodo = 8'b01111111;
    catodo= 8'b11111111;  //
    end  
end


if (selector == 7) begin
    if (contador [20:18] == 0) begin
    anodo = 8'b11111110;
    catodo=  8'b10000111;  //t
    end
    else if (contador [20:18] == 1) begin
    anodo = 8'b11111101;
    catodo = 8'b11010010; //   s
    end
    else if (contador [20:18] == 2) begin
    anodo = 8'b11111011;
    catodo= 8'b10100011; //   o
    end
    else if (contador [20:18] == 3) begin
    anodo = 8'b11110111;
    catodo= 8'b11000111;   //l 
    end
 
    else if (contador [20:18] == 4) begin
    anodo = 8'b11101111;
    catodo= 8'b11111111;  //
    end     
    else if (contador [20:18] == 5) begin
    anodo =  8'b11011111;
    catodo=  8'b11100011; //u
    end  
    else if (contador [20:18] == 6) begin
    anodo = 8'b10111111;
    catodo= 8'b10100011;  //o
    end  
    else if (contador [20:18] == 7) begin
    anodo = 8'b01111111;
    catodo= 8'b10010001;  //y
    end  
end

if (selector == 8) begin
    if (contador [20:18] == 0) begin
    anodo = 8'b11111110;
    catodo= 8'b10000110;   //e 
    end
    else if (contador [20:18] == 1) begin
    anodo = 8'b11111101;
    catodo= 8'b11001111; //   i
    end
    else if (contador [20:18] == 2) begin
    anodo = 8'b11111011;
    catodo= 8'b10000111;  //t   
    end
    else if (contador [20:18] == 3) begin
    anodo = 8'b11110111;
    catodo= 8'b11111111;   //
    end

     else if (contador [20:18] == 4) begin
    anodo = 8'b11101111;
    catodo= 8'b11111111;  //
    end
    
    else if (contador [20:18] == 5) begin
    anodo = 8'b11011111;
    catodo= 8'b11111111;  //
    end  
    else if (contador [20:18] == 6) begin
    anodo = 8'b10111111;
    catodo= 8'b11111111;  // 
    end  
    else if (contador [20:18] == 7) begin
    anodo = 8'b01111111;
    catodo= 8'b11111111;  //
    end
end

end
endmodule