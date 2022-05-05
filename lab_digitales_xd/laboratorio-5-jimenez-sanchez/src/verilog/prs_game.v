module prs_game (
    input data_ps2,
    input clk_ps2,
    input clk,
    input resetn,
    input [1:0] random,
    output reg enable_random,
    output reg [7:0] an_out,
    output reg [7:0] c_out
);

//Se declaran los regs a utilizar
reg [0:7] spi_data;
reg [0:7] datos_mouse;
reg [3:0] selector;
reg [6:0] datos_contados;
reg [2:0] opcion_jugador;
reg [1:0] opcion_rival;
reg buffer;
reg [31:0] state;
reg [31:0] delay, delay_return;
reg placeholder;
reg random_select;

//lista de los estados del juego
parameter start = 1;
parameter select = 2;
parameter selected = 3; 
parameter rival = 4;
parameter result = 5;



//módulo para mostrar mensajes
reg [20:0] counter;

always @(posedge clk) begin 
    if(resetn==0) begin
        counter<= 0;
        delay_return <= 0;
        random_select <= 0;
    end
    else counter <= counter+ 1;
end 
always @(*) begin 
case(selector)
    0: begin
        if (counter[20:18] == 0) begin //t 
            c_out = 8'b10000111;   
            an_out = 8'b11111110;
        end
        else if (counter[20:18] == 1) begin //r 
            c_out = 8'b10101111;
            an_out = 8'b11111101;
        end
        else if (counter[20:18] == 2) begin //a
            c_out = 8'b10001000;    
            an_out = 8'b11111011;
        end
        else if (counter[20:18] == 3) begin //t
            c_out = 8'b10000111;   
            an_out = 8'b11110111;
        end
        else if (counter[20:18] == 4) begin //s
            c_out  = 8'b11010010; 
            an_out = 8'b11101111;
        end
        else if (counter[20:18] == 5) begin
            c_out = 8'b11111111; 
            an_out = 8'b11011111;
        end  
        else if (counter[20:18] == 6) begin
            c_out = 8'b11111111;  
            an_out = 8'b10111111;
        end  
        else if (counter[20:18] == 7) begin
            c_out = 8'b11111111;  
            an_out = 8'b01111111;
        end 
    end
    1: begin
        if (counter[20:18] == 0) begin //t 
            c_out = 8'b10000111; 
            an_out = 8'b11111110;
        end
        else if (counter[20:18] == 1) begin //c
            c_out = 8'b11000110; 
            an_out = 8'b11111101;
        end
        else if (counter[20:18] == 2) begin //e
            c_out = 8'b10000110; 
            an_out = 8'b11111011;
        end
        else if (counter[20:18] == 3) begin //l
            c_out = 8'b11000111;     
            an_out = 8'b11110111;
        end
        else if (counter[20:18] == 4) begin //e
            c_out = 8'b10000110;     
            an_out = 8'b11101111;
        end
        else if (counter[20:18] == 5) begin //s
            c_out  = 8'b11010010; 
            an_out = 8'b11011111;
        end
        else if (counter[20:18] == 6) begin
            c_out = 8'b11111111; 
            an_out = 8'b10111111;
        end  
        else if (counter[20:18] == 7) begin
            c_out = 8'b11111111; 
            an_out = 8'b01111111;
        end    
    end

    2: begin
        if (counter[20:18] == 0) begin //r
                c_out =  8'b10101111; 
                an_out = 8'b11111110;
        end
        else if (counter[20:18] == 1) begin //e
                c_out = 8'b10000110;
                an_out = 8'b11111101;
        end
        else if (counter[20:18] == 2) begin //p
                c_out = 8'b10001100;
                an_out = 8'b11111011;
        end
        else if (counter[20:18] == 3) begin //a 
                c_out = 8'b10001000;  
                an_out = 8'b11110111;
        end
        else if (counter[20:18] == 4) begin //p 
                c_out = 8'b10001100; 
                an_out = 8'b11101111;
        end
            else if (counter[20:18] == 5) begin
                c_out = 8'b11111111; 
                an_out = 8'b11011111;
        end  
        else if (counter[20:18] == 6) begin
                c_out = 8'b11111111; 
                an_out = 8'b10111111;
        end  
        else if (counter[20:18] == 7) begin
                c_out = 8'b11111111;
                an_out = 8'b01111111;
        end
    end
//Scissors
    3: begin
        if (counter[20:18] == 0) begin //s
            c_out = 8'b11010010; 
            an_out = 8'b11111110;
        end
        else if (counter[20:18] == 1) begin //r
            c_out =  8'b10101111;
            an_out = 8'b11111101;
        end
        else if (counter[20:18] == 2) begin //o
            c_out = 8'b10100011;
            an_out = 8'b11111011;
        end
        else if (counter[20:18] == 3) begin //s 
            c_out = 8'b11010010;
            an_out = 8'b11110111;
        end
        else if (counter[20:18] == 4) begin //s 
            c_out = 8'b11010010; 
            an_out = 8'b11101111;
        end   
        else if (counter[20:18] == 5) begin //i
            c_out = 8'b11001111; 
            an_out = 8'b11011111;
        end  
        else if (counter[20:18] == 6) begin //c 
            c_out = 8'b11000110; 
            an_out = 8'b10111111;
        end  
        else if (counter[20:18] == 7) begin //s
            c_out = 8'b11010010; 
            an_out = 8'b01111111;
        end  
end

    4: begin
        if (counter[20:18] == 0) begin //k
            c_out = 8'b10001010;
            an_out = 8'b11111110;
        end
        else if (counter[20:18] == 1) begin //c
            c_out = 8'b11000110;
            an_out = 8'b11111101;
        end
        else if (counter[20:18] == 2) begin //o
            c_out = 8'b10100011;
            an_out = 8'b11111011;
        end
        else if (counter[20:18] == 3) begin //r 
            c_out =  8'b10101111;  
            an_out = 8'b11110111;
        end   
        else if (counter[20:18] == 4) begin
            c_out = 8'b11111111; 
            an_out = 8'b11101111;
        end
            else if (counter[20:18] == 5) begin
            c_out = 8'b11111111; 
            an_out = 8'b11011111;
        end  
        else if (counter[20:18] == 6) begin
            c_out = 8'b11111111; 
            an_out = 8'b10111111;
        end  
        else if (counter[20:18] == 7) begin
            c_out = 8'b11111111; 
            an_out = 8'b01111111;
        end
end

    5: begin
        if (counter[20:18] == 0) begin //l 
            c_out =  8'b11000111;  
            an_out = 8'b11111110;
        end
        else if (counter[20:18] == 1) begin //a
            c_out = 8'b10001000;
            an_out = 8'b11111101;
        end
        else if (counter[20:18] == 2) begin //v
            c_out = 8'b11010101;     
            an_out = 8'b11111011;
        end
        else if (counter[20:18] == 3) begin //i 
            c_out = 8'b11001111;     
            an_out = 8'b11110111;
        end
        else if (counter[20:18] == 4) begin //r
            c_out  = 8'b10101111;   
            an_out = 8'b11101111;
        end    
        else if (counter[20:18] == 5) begin
            c_out = 8'b11111111; 
            an_out = 8'b11011111;
        end  
        else if (counter[20:18] == 6) begin
            c_out = 8'b11111111; 
            an_out = 8'b10111111;
        end  
        else if (counter[20:18] == 7) begin
            c_out = 8'b11111111; 
            an_out = 8'b01111111;
        end
    end

    6: begin
        if (counter[20:18] == 0) begin //n
            c_out = 8'b10101011; 
            an_out = 8'b11111110;
        end
        else if (counter[20:18] == 1) begin //o
            c_out = 8'b10100011;
            an_out = 8'b11111101;
        end
        else if (counter[20:18] == 2) begin //w
            c_out = 8'b10010101;
            an_out = 8'b11111011;
        end
        else if (counter[20:18] == 3) begin 
            c_out = 8'b11111111; 
            an_out = 8'b11110111;
        end  
        else if (counter[20:18] == 4) begin //u 
            c_out = 8'b11100011; 
            an_out = 8'b11101111;
        end   
        else if (counter[20:18] == 5) begin //o
            c_out = 8'b10100011; 
            an_out = 8'b11011111;
        end  
        else if (counter[20:18] == 6) begin //y
            c_out = 8'b10010001;  
            an_out = 8'b10111111;
        end  
        else if (counter[20:18] == 7) begin
            c_out = 8'b11111111; 
            an_out = 8'b01111111;
        end  
    end


    7: begin
        if (counter[20:18] == 0) begin //t
            c_out =  8'b10000111; 
            an_out = 8'b11111110;
        end
        else if (counter[20:18] == 1) begin //s
            c_out  = 8'b11010010;
            an_out = 8'b11111101;
        end
        else if (counter[20:18] == 2) begin //o
            c_out = 8'b10100011;
            an_out = 8'b11111011;
        end
        else if (counter[20:18] == 3) begin //l 
            c_out = 8'b11000111; 
            an_out = 8'b11110111;
        end
        else if (counter[20:18] == 4) begin
            c_out = 8'b11111111;  
            an_out = 8'b11101111;
        end     
        else if (counter[20:18] == 5) begin //u
            c_out =  8'b11100011;
            an_out =  8'b11011111;
        end  
        else if (counter[20:18] == 6) begin //o
            c_out = 8'b10100011; 
            an_out = 8'b10111111;
        end  
        else if (counter[20:18] == 7) begin //y
            c_out = 8'b10010001; 
            an_out = 8'b01111111;
        end  
    end

    8: begin
        if (counter[20:18] == 0) begin //e 
            c_out = 8'b10000110;  
            an_out = 8'b11111110;
        end
        else if (counter[20:18] == 1) begin //i
            c_out = 8'b11001111; 
            an_out = 8'b11111101;
        end
        else if (counter[20:18] == 2) begin //t  
            c_out = 8'b10000111;  
            an_out = 8'b11111011;
        end
        else if (counter[20:18] == 3) begin
            c_out = 8'b11111111;
            an_out = 8'b11110111;
        end
        else if (counter[20:18] == 4) begin
            c_out = 8'b11111111; 
            an_out = 8'b11101111;
        end
        else if (counter[20:18] == 5) begin
            c_out = 8'b11111111; 
            an_out = 8'b11011111;
        end  
        else if (counter[20:18] == 6) begin
            c_out = 8'b11111111;  
            an_out = 8'b10111111;
        end  
        else if (counter[20:18] == 7) begin
            c_out = 8'b11111111;  
            an_out = 8'b01111111;
        end
    end
endcase
end


//sección se parsea la señal recibida y la coloca en un reg
always @(negedge clk_ps2) begin
    if (!resetn) begin
        placeholder <= 0;
        spi_data <= 0;
        buffer<=0;
        datos_contados <= 0;
    end
    else begin
        //paralelización de los datos
        case(datos_contados)
            0:placeholder<=0;
            1:spi_data[0]<=data_ps2;
            2:spi_data[1]<=data_ps2;
            3:spi_data[2]<=data_ps2;
            4:spi_data[3]<=data_ps2;
            5:spi_data[4]<=data_ps2;
            6:spi_data[5]<=data_ps2;
            7:spi_data[6]<=data_ps2;
            8:spi_data[7]<=data_ps2;
            9:buffer<=1'b1;
            10:buffer=1'b0;
        endcase

    //cuenta de los datos recibidos, de deben leer de 11 en 11 [0-10]
    if(datos_contados<=9) datos_contados<=datos_contados+1;
    else if(datos_contados==10) datos_contados<=0;
        
    end 
end

//cuando se lee toda la trama, se guarda y se trabaja con ellos
always @(posedge buffer) begin
    datos_mouse<= spi_data; 
end

always @(posedge clk) begin
    if (!resetn) begin
        delay <= 0;
        enable_random<=1;
        state <= start;
        opcion_rival <= 1; 
        random_select <= 0;
    end
    else begin
        case (state)
        //estado inicial, muestra mensaje 1
            start :begin
                delay_return <= 0;
                random_select <= 0;
                selector<=0;
                if (delay <= 80000000) begin
                    state <= start;
                    delay <= delay + 1;
                end
                else begin
                    state <= select;
                    delay <= 0;
                    enable_random <= 1;
                end
            end
            //estado de seleccion, muestra mensaje 2 y genera una elección aleatoria
            select : begin
                if(random_select == 0) begin
                    random_select <=1;
                    selector<=1;
                end
                if (delay <= 80000000) begin
                    state <= select;
                    delay <= delay + 1;
                end
                else begin
                    state <= selected;
                    delay <= 0;
                    if (random == 0) begin
                        selector <= 2; //pape;
                        state <= selected;
                        delay <= 0;
                        opcion_jugador<=0;
                    end 
                    else if (random == 1) begin
                        selector <= 3; //tijera
                        state <= selected;
                        delay <= 0;
                        opcion_jugador<=1;
                    end
                    else begin
                        selector <= 4; //roca
                        state <= selected;
                        delay <= 0;
                        opcion_jugador<=2;
                    end
       
                //muestro papel
                end           
            end
            //se espera a recibir algo del mouse para continuar
            selected: begin 
                
                if (datos_mouse[1]) begin
                    state <= rival;
                    enable_random <= 1;
                    opcion_jugador <= selector-2;
                end
                else begin 
                    if (datos_mouse[2]) begin
                        if (selector == 4) begin
                            selector <= 2;
                        end 
                        else selector <= selector+1;
                    end
                    state <= selected;
                
                    enable_random<=1;
                    end
                end

            // se muestra la elección aleatoria dle rival
            rival: begin
                selector <= 5;
                if (delay <= 80000000) begin
                    delay<= delay+1;
                    state<= rival;
                end
                else begin

                    if (random == 0) begin
                        selector <= 2; //pape;
                        state <= result;
                        delay <= 0;
                        opcion_rival<=0;
                    end else if (random == 1) begin
                        selector <= 3; //tijera
                        state <= result;
                        delay <= 0;
                        opcion_rival<=1;
                    end
                    else begin
                        selector <= 4; //roca
                        state <= result;
                        delay <= 0;
                        opcion_rival<=2;
                    end
                    
                end               
            end

            result: begin
                if (delay <= 80000000) begin
                    delay <= delay +1;
                    state<= result;
                end
                else begin
                    if ((opcion_jugador == 0 && opcion_rival ==1) || (opcion_jugador == 1 && opcion_rival ==2) || (opcion_jugador ==2 &&opcion_rival ==0)) selector <= 7; //pierde
                    else if ((opcion_jugador ==0 && opcion_rival == 0) || (opcion_jugador == 1 && opcion_rival ==1) || (opcion_jugador ==2 && opcion_rival ==2)) selector <= 8; //empate
                    else if ((opcion_jugador == 0 && opcion_rival ==2) || (opcion_jugador == 1 && opcion_rival ==0) || (opcion_jugador == 2 && opcion_rival ==1)) selector <= 6; //gana
                    
                    if (delay_return <= 80000000) begin
                        delay_return <= delay_return+1;
                        state <= result;
                    end
                    else state <= start;
                        
                end         
            end

        endcase
        
    end
end
endmodule