module ControladorBanderas #(parameter ancho = 'd3) (resultado, carryOut, borrowOut, overflow, N, Z, C, V);
	input [ancho:0] resultado;
	input carryOut;
	input borrowOut;
	input overflow;
	
	output logic N;
	output logic Z;
	output logic C;
	output logic V;
	
	
	always @(resultado) begin
		N = 0;
		Z = 0;
		C = 0;
		V = 0;
		if (borrowOut == 1)
			N = 1;
		else
			N = 0;
		if (resultado == 0)
			Z = 1;
		else
			Z = 0;			
		if (carryOut == 1)
			C = 1;
		else
			C = 0;
		if (overflow == 1)
			V = 1;
		else
			V = 0;
	end

endmodule 