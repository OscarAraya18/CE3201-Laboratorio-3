module Divisor #(parameter ancho = 'd3) (operandoA, operandoB, resultado);
	input [ancho:0] operandoA;
	input [ancho:0] operandoB;
	output [ancho:0] resultado;
	assign resultado = operandoA / operandoB;
endmodule 