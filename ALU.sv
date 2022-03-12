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
	wire [ancho:0] resultadoAND;
	wire [ancho:0] resultadoOR;
	wire [ancho:0] resultadoShiftLeft;
	wire [ancho:0] resultadoShiftRight;
	
	Sumador sumadorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoSuma),
		.carryIn(1'b0),
		.carryOut(outAux)
	);
	
	Restador restadorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoResta),
		.borrowIn(1'b0),
		.borrowOut(outAux)
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
	
	always @(operandoA, operandoB, seleccion) begin
		case (seleccion)
			4'b0000: resultado = resultadoSuma;
			4'b0001: resultado = resultadoResta;
			4'b0101: resultado = resultadoAND;
			4'b0110: resultado = resultadoOR;
			4'b0111: resultado = resultadoShiftLeft;
			4'b1000: resultado = resultadoShiftRight;
			default: resultado = resultadoSuma;
		endcase
		
	end


endmodule 