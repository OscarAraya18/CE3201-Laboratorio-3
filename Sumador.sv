module Sumador #(parameter ancho = 'd3) (operandoA, operandoB, resultado, carryOut);
	input [ancho:0] operandoA;
	input [ancho:0] operandoB;
	output [ancho:0] resultado;
	output carryOut;
	assign {carryOut, resultado} = operandoA + operandoB;
endmodule 