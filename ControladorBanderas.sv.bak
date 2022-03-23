module ControladorBanderas #(parameter ancho = 'd3) (resultado, carryOut, borrowOut, overflow, salida);
	input [ancho:0] resultado;
	input carryOut;
	input borrowOut;
	input overflow;
	
	output [3:0] salida;
	
	// N, Z, C, V
	
	always @(resultado) begin
		if (borrowOut == 1)
			salida[0] = 1;
		else
			salida[0] = 0;
		if (resultado == 0)
			salida[1] = 1;
		else
			salida[1] = 0;			
		if (carryOut == 1)
			salida[2] = 1;
		else
			salida[2] = 0;
		if (overflow == 1)
			salida[3] = 1;
		else
			salida[3] = 0;
	end

endmodule 