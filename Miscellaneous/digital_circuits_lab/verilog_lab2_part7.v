"include "lut_multiplier_32b.v"

module factorial (
    input clk,
    input reset,
    input [31:0] source,
    input control,
    output reg status,
    output reg [63:0] out_fact64
);

reg estado_presente;
reg proximo_estado;
reg [31:0] counter;
reg [31:0] A_i;
wire [63:0] out_fact_aux;

parameter RESET = 0;    //0000
parameter CALC = 1; //0001

lut_multiplier_32b  a(
	.reset (reset),
	.A (A_i),
	.B (counter),
	.out_64b (out_fact_aux)	
);

always @(posedge clk)begin
    if (~reset)begin
        estado_presente <= RESET;
        out_fact64 <= 0;
    end
    else begin
        estado_presente <= proximo_estado;
        counter <= counter + 1;
        A_i <= out_fact_aux;
    end
end

always @(*)begin
    proximo_estado = estado_presente;

    case (estado_presente)
        
        RESET:begin
            status = 0;
            counter = 1;
            A_i = 1;
            if (~control)begin
                proximo_estado = RESET;
            end
            else begin
                proximo_estado = CALC;
            end
        end

        CALC:begin
            if (counter <= source)begin
                proximo_estado = CALC;
            end
            else begin
                proximo_estado = RESET;
                status = 1;
                out_fact64 = A_i;
            end
        end

        default:begin
            proximo_estado = RESET;
        end

    endcase
end
    
endmodule
