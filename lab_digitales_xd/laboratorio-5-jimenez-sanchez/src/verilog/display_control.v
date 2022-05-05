module text_display (
    input [3:0] selector,
    input clk,
    input reset,
	output reg [7:0] c_out,
    output reg [7:0] an_out
);
reg [20:0] counter;
always @(posedge clk) begin 
    if(reset==0) counter<= 0;
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
endmodule