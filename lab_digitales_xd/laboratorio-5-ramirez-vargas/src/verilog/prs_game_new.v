module lsfr(
    input clk,
    input ready,
    input reset,
    output [1:0] lsfr_bit
);

reg [2:0] lsfr_reg;
wire feedback;

assign feedback = (lsfr_reg[2]^lsfr_reg[0]);
assign lsfr_bit = lsfr_reg[1:0];

always @(posedge clk) begin
    if (~reset)
    lsfr_reg <= 3'b111;
    else if (ready) begin
    lsfr_reg <= {feedback, lsfr_reg[2], lsfr_reg[1]};
    end
end
endmodule

module prs_game (
    input data_ps2,
    input clk_ps2,
    input clk,
    input reset,
    input [1:0] random,
    output reg enable_random,
    output reg [7:0] anodo,
    output reg [7:0] catodo
);


//Cables
reg [20:0] contador;
reg [3:0] selector;
reg [6:0] datos_contador;
reg [0:7] datos_paralelos;
reg [0:7] datos_mouse;
reg [2:0] opcion_jugador;
reg flag;
reg f;
reg [31:0] estados;
reg [31:0] contador_espera;
reg [1:0] opcion_rival;

//Estados
parameter send_start = 1;
parameter send_select = 2;
parameter select_object_player = 4; 
parameter select_object_rival = 8;
parameter result = 16;

always @(negedge clk_ps2) begin
    if (!reset) begin
        datos_paralelos <= 0;
        datos_contador <= 0;
        f<=0;
        datos_contador <= 0;
    end
    else begin

    case(datos_contador)
     //Logica para leer los 8 bits de datos del mouse, paralelizamos el valor
    0:;//Start bit
    1:datos_paralelos[0]<=data_ps2;
    2:datos_paralelos[1]<=data_ps2;
    3:datos_paralelos[2]<=data_ps2;
    4:datos_paralelos[3]<=data_ps2;
    5:datos_paralelos[4]<=data_ps2;
    6:datos_paralelos[5]<=data_ps2;
    7:datos_paralelos[6]<=data_ps2;
    8:datos_paralelos[7]<=data_ps2;
    9:f<=1'b1;
    10:f=1'b0;
    
    endcase
        if(datos_contador<=9) datos_contador<=datos_contador+1;
        else if(datos_contador==10) datos_contador<=0;
        
    end 

end



always @(posedge f) begin
    datos_mouse<= datos_paralelos; 
end

always @(posedge clk) begin
    if (!reset) begin
        contador_espera <= 0;
        flag <= 0;
        enable_random<=1;
        estados <= send_start;
        opcion_rival <= 1; 
        //En este caso ponemos por defecto que el rival es 1, es tijeras
    end
    else begin
        case (estados)
        send_start :begin
            selector<=0;
            if (contador_espera <= 72000000) begin
            estados <= send_start;
            contador_espera <= contador_espera + 1;
            end
            else begin
            estados <= send_select;
            contador_espera <= 0;
            end
        end

        send_select : begin
            selector<=1;
            if (contador_espera <= 72000000) begin
            estados <= send_select;
            contador_espera <= contador_espera + 1;
            end
            else begin
	    estados <= select_object_player;
            contador_espera <= 0;
            selector <= 2;
            //muestro papel
            end           
        end
        //Aqui seleccionamos la opcion del jugador
        select_object_player: begin 
            if (datos_mouse[1]) begin
                opcion_jugador <= selector-2;
                estados <= select_object_rival;
            end
            else begin 
                if (datos_mouse[2]) begin
                    if (selector==4) begin
                        selector<=2;
                    end
                    else begin
                        selector <= selector+1;
                    end
                end
                estados <= select_object_player;
                //Generamos el valor aleratorio que representa la opcion del rival
                enable_random<=1;
                end
            end

        select_object_rival: begin
            selector <= 5;
            if (contador_espera <= 72000000) begin
                contador_espera<= contador_espera+1;
                estados<= select_object_rival;
            end
            else begin

                if (random == 0) begin
                    selector <= 2; //muestro paper
                    estados <= result;
                    contador_espera <= 0;
                    opcion_rival<=0;
                end else if (random == 1) begin
                    selector <= 3; //muestro tijera
                    estados <= result;
                    contador_espera <= 0;
                    opcion_rival<=1;
                end
                else if (random == 2) begin
                    selector <= 4; //muestro roca
                    estados <= result;
                    contador_espera <= 0;
                    opcion_rival<=2;
                end
                else begin
                    selector <= 4; //muestro roca
                    estados <= result;
                    contador_espera <= 0;
                    opcion_rival<=2;
                end
                
            end               
        end

        result: begin
            if (contador_espera <= 36000000) begin
                contador_espera <= contador_espera +1;
                estados<= result;
            end
            else begin
                //Verificamos quien es el ganador
            if ((opcion_jugador ==0 && opcion_rival == 0) || (opcion_jugador == 1 && opcion_rival ==1) || (opcion_jugador ==2 && opcion_rival ==2)) begin //caso empate
            selector <= 8;
            end
            else if ((opcion_jugador == 0 && opcion_rival ==1) || (opcion_jugador == 1 && opcion_rival ==2) || (opcion_jugador ==2 &&opcion_rival ==0)) begin //caso pierde jugador
            selector <= 7;
            end
            else if ((opcion_jugador == 0 && opcion_rival ==2) || (opcion_jugador == 1 && opcion_rival ==0) || (opcion_jugador == 2 && opcion_rival ==1)) begin     //caso gana jugador   
            selector <= 6;
            end 
            end         
        end

      


        endcase
        
    end
end

  

/*Proceso para desplegar en el display*/
always @(posedge clk or negedge reset) begin 
 if(reset==0)
  contador <= 0;
 else
 //Contador que permite que los numeros sean visibles
  contador <= contador + 1;
end 
/*Se van eligiendo los valores a desplegar en el display de 7 segmentos*/
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