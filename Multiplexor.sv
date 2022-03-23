module Multiplexor #(parameter ancho = 'd3) (entradaSuma, entradaResta, entradaMultiplicacion, entradaDivision, entradaModulo, 
						entradaAND, entradaOR, entradaXOR, entradaShiftLeft, entradaShiftRight, seleccion, salida);
		
	input [ancho:0] entradaSuma;
	input [ancho:0] entradaResta;
	input [ancho:0] entradaMultiplicacion;
	input [ancho:0] entradaDivision;
	input [ancho:0] entradaModulo;
	input [ancho:0] entradaAND;
	input [ancho:0] entradaOR;
	input [ancho:0] entradaXOR;
	input [ancho:0] entradaShiftLeft;
	input [ancho:0] entradaShiftRight;	
	input [ancho:0] seleccion;
	output logic [ancho:0] salida;
	
	always @(entradaSuma, entradaResta, entradaMultiplicacion, entradaDivision, entradaModulo, 
				entradaAND, entradaOR, entradaXOR, entradaShiftLeft, entradaShiftRight, seleccion) begin
		case (seleccion)
			4'b0000:  salida = entradaSuma;
			4'b0001:  salida = entradaResta;
			4'b0010:  salida = entradaMultiplicacion;
			4'b0011:  salida = entradaDivision;
			4'b0100:  salida = entradaModulo;
			4'b0101:  salida = entradaAND;
			4'b0110:  salida = entradaOR;
			4'b0111:  salida = entradaXOR;
			4'b1000:  salida = entradaShiftLeft;
			4'b1001:  salida = entradaShiftRight;
			default:  salida = 4'b000;
		endcase
	end

endmodule 