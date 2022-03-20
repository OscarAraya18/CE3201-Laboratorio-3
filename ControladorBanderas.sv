module ControladorBanderas(resultado, N, Z, C, V);
	parameter ancho = 'd3;
	input [ancho:0] resultado;
	output N;
	output Z;
	output C;
	output V;
	
	always @(resultado) begin
		if (resultado == 0)
			N = 0;
	end

endmodule 