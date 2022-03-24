module FPGA #(parameter ancho = 'd3) (
	input [ancho:0] A,
	input [ancho:0] B,
	input [3:0] seleccion,
	
	output [6:0] hex1,
	output N,
	output Z,
	output C,
	output V);

	reg [11:0] bcd;
	reg [3:0] res;
	reg [4:0] salida;

	ALU #(ancho) problemaALU(
		.operandoA(A),
		.operandoB(B),
		.seleccion(seleccion),
		.resultado(res),
		.N(N),
		.Z(Z),
		.C(C),
		.V(V)
	);
	
	

	assign salida[0] = res[0];
	assign salida[1] = res[1];
	assign salida[2] = res[2];
	assign salida[3] = res[3];
	assign salida[4] = N;
		
		
	Display7Seg Display(salida,hex1);


endmodule 