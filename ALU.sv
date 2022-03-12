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
	
	AND andALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoAND)
	);
	
	
	always @(operandoA, operandoB, seleccion) begin
		case (seleccion)
			// aqui lo que hay que hacer es que, en funcion de los bits de seleccion, se asigne el resultado, 
			//y se asignen las banderas correspondientes.
			4'b0000: resultado = resultadoSuma;
			4'b0001: resultado = resultadoResta;
			
			4'b0101: resultado = resultadoAND;
	
			default: resultado = resultadoSuma;
		endcase
		
	end


endmodule 