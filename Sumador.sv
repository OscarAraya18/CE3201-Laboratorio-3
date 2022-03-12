module Sumador(operandoA, operandoB, resultado, carryIn, carryOut);
	parameter ancho = 'd3;
	input [ancho:0] operandoA;
	input [ancho:0] operandoB;
	output [ancho:0] resultado;
	
	input carryIn;
	output carryOut;
	
	assign {carryOut, resultado} = operandoA + operandoB + carryIn;
	
endmodule 