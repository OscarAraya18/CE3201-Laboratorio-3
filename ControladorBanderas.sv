module ControladorBanderas #(parameter ancho = 'd3) (resultado, carryOut, N, Z, C, V);
	input [ancho:0] resultado;
	input carryOut;
	output N;
	output Z;
	output C;
	output V;
	
	always @(resultado) begin
		if (resultado == 0)
			Z = 1;
		else
			Z = 0;
		
		if (carryOut == 1)
			C = 1;
		else
			C = 0;
		
	end

endmodule 