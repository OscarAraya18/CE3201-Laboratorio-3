module ALU #(parameter ancho = 'd3) (operandoA, operandoB, seleccion, resultado, banderas);
	input [ancho:0] operandoA;
	input [ancho:0] operandoB;
	input [3:0] seleccion;
	output [ancho:0] resultado;
	output [3:0] banderas;
	
	// N,Z,C,V
		
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
	
	wire carryOut;
	
	Sumador #(ancho) sumadorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoSuma),
		.carryOut(carryOut),
	);
	
	Restador #(ancho) restadorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoResta),
		.borrowOut(carryOut)
	);
	
	Multiplicador #(ancho) multiplicadorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoMultiplicacion),
		.carryOut(carryOut)
	);
	
	Divisor #(ancho) divisorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoDivision),
		.carryOut(carryOut)
	);
	
	Modulador #(ancho) moduladorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoModulo)
	);
	
	CompuertaAND #(ancho) andALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoAND)
	);
	
	CompuertaOR #(ancho) orALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoOR)
	);
	
	CompuertaXOR #(ancho) xorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoXOR)
	);
	
	ShiftLeft #(ancho) shiftLeftALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoShiftLeft)
	);
	
	ShiftRight #(ancho) shiftRightALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoShiftRight)
	);
	
	Multiplexor #(ancho) multiplexorALU(
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
	
	ControladorBanderas #(ancho) controladorBanderas(
		.resultado(resultado),
		.carryOut(carryOut),
		.N('d0),
		.Z('d0),
		.C('d0),
		.V('d0)
		
	);

	
endmodule 