module Multiplicador #(parameter ancho = 'd3) (operandoA, operandoB, resultado, overflow);
	input [ancho:0] operandoA;
	input [ancho:0] operandoB;
	output [ancho:0] resultado;
	output logic overflow;
	assign resultado = operandoA * operandoB;
	
	always @(resultado) begin
		if ((operandoA * operandoB) > 'd15)
			overflow = 1;
		else
			overflow =
			0;
	end
	
endmodule 