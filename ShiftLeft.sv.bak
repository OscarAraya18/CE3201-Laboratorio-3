module Restador(operandoA, operandoB, resultado, borrowIn, borrowOut);
	parameter ancho = 'd3;
	input [ancho:0] operandoA;
	input [ancho:0] operandoB;
	output [ancho:0] resultado;
	
	input borrowIn;
	output borrowOut;
	
	assign {borrowOut, resultado} = operandoA - operandoB - borrowIn;
	
endmodule 