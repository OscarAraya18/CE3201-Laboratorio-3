module Restador(operandoA, operandoB, resultado, borrowOut);
	parameter ancho = 'd3;
	input [ancho:0] operandoA;
	input [ancho:0] operandoB;
	output [ancho:0] resultado;
	output borrowOut;
	assign {borrowOut, resultado} = operandoA - operandoB;
endmodule 