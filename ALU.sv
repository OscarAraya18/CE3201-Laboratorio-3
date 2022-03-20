module ALU(operandoA, operandoB, seleccion, resultado, banderas);

	parameter ancho = 'd3;
	
	input [ancho:0] operandoA;
	input [ancho:0] operandoB;
	input [3:0] seleccion;
	
	output [ancho:0] resultado;
	output [3:0] banderas;
	
	wire outAux;
	
	wire [ancho:0] resultadoSuma;
	wire [ancho:0] resultadoResta;
	wire [ancho:0] resultadoMultiplicacion;
	wire [ancho:0] resultadoDivision;
	wire [ancho:0] resultadoModulo;
	wire [ancho:0] resultadoAND;
	wire [ancho:0] resultadoOR;
	wire [ancho:0] resultadoXOR;
	wire [ancho:0] resultadoShiftLeft;
	wire [ancho:0] resultadoShiftRight;
	
	Sumador sumadorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoSuma),
		.carryOut(outAux)
	);
	
	Restador restadorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoResta),
		.borrowOut(outAux)
	);
	
	Multiplicador multiplicadorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoMultiplicacion),
		.carryOut(outAux)
	);
	
	Divisor divisorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoDivision),
		.carryOut(outAux)
	);
	
	Modulador moduladorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoModulo)
	);
	
	CompuertaAND andALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoAND)
	);
	
	CompuertaOR orALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoOR)
	);
	
	CompuertaXOR xorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoXOR)
	);
	
	ShiftLeft shiftLeftALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoShiftLeft)
	);
	
	ShiftRight shiftRightALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoShiftRight)
	);
	
	Multiplexor multiplexorALU(
		.entradaSuma(resultadoSuma),
		.entradaResta(resultadoResta),
		.entradaMultiplicacion(resultadoMultiplicacion),
		.entradaDivision(resultadoDivision),
		.entradaModulo(resultadoModulo),
		.entradaAND(resultadoAND),
		.entradaOR(resultadoOR),
		.entradaXOR(resultadoXOR),
		.entradaShiftLeft(resultadoShiftLeft),
		.entradaShiftRight(resultadoShiftRight),
		.seleccion(seleccion),
		.salida(resultado)
	);

	
endmodule 