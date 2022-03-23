module ALU_tb();
  
	parameter ancho = 'd3;  
	logic [ancho:0] A;
	logic [ancho:0] B;
	
	logic [ancho:0] resultado;
	logic [ancho:0] resultadoEsperado;

	logic [3:0] seleccion;
	
	logic N;
	logic Nesperada;
	logic Z;
	logic Zesperada;
	logic C;
	logic Cesperada;
	logic V;
	logic Vesperada;

	ALU #(.ancho(ancho)) Test(
	 .operandoA(A),
    .operandoB(B),
	 .seleccion(seleccion),
    .resultado(resultado),
	 .N(N),
	 .Z(Z),
	 .C(C),
	 .V(V)
	);
	
	
	initial
		begin
		$display ("=============SUMADOR=============");
		seleccion = 4'b0000;
		
		A = 4'b0001;
		B = 4'b0001;
		resultadoEsperado=4'b0010;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		V=0;	
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada) 
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b0010;
		B = 4'b0001;
		resultadoEsperado=4'b0011;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;	
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada) 
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b0100;
		B = 4'b0001;
		resultadoEsperado=4'b0101;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b1111;
		B = 4'b0001;
		resultadoEsperado=4'b0000;
		Nesperada=0;
		Zesperada=1;
		Cesperada=1;
		Vesperada=0;	
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada) 
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		
		
		$display ("=============Restador=============");
		seleccion = 4'b0001;
		
		A = 4'b0001;
		B = 4'b0001;
		resultadoEsperado=4'b0000;
		Nesperada=0;
		Zesperada=1;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada) 
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b0010;
		B = 4'b0001;
		resultadoEsperado=4'b0001;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b0100;
		B = 4'b0001;
		resultadoEsperado=4'b0011;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b0000;
		B = 4'b0001;
		resultadoEsperado=4'b1111;
		Nesperada=1;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		

		$display ("=============Multiplicador=============");
		seleccion = 4'b0010;
		
		A = 4'b0001;
		B = 4'b0001;
		resultadoEsperado=4'b0001;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b0010;
		B = 4'b0010;
		resultadoEsperado=4'b0100;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b1000;
		B = 4'b0000;
		resultadoEsperado=4'b0000;
		Nesperada=0;
		Zesperada=1;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b1000;
		B = 4'b0010;
		resultadoEsperado=4'b0000;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=1;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		
		
		$display ("=============Divisor=============");
		seleccion = 4'b0011;
		
		A = 4'b0011;
		B = 4'b0001;
		resultadoEsperado=4'b0011;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;	
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada) 
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b0100;
		B = 4'b0010;
		resultadoEsperado=4'b0010;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada) 
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b1111;
		B = 4'b0011;
		resultadoEsperado=4'b0101;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada) 
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b0000;
		B = 4'b0010;
		resultadoEsperado=4'b0000;
		Nesperada=0;
		Zesperada=1;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada) 
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		
		
		$display ("=============Modulo=============");
		seleccion = 4'b0100;
		
		A = 4'b0000;
		B = 4'b1100;
		resultadoEsperado=4'b0000;
		Nesperada=0;
		Zesperada=1;
		Cesperada=0;
		V=0;	
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b0011;
		B = 4'b0010;
		resultadoEsperado=4'b0001;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b0111;
		B = 4'b0110;
		resultadoEsperado=4'b0001;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada) 
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b1101;
		B = 4'b1010;
		resultadoEsperado=4'b1101;
		Nesperada=1;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		
		
		$display ("=============AND=============");
		seleccion = 4'b0101;
		
		A = 4'b1001;
		B = 4'b1001;
		resultadoEsperado=4'b1001;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;	
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b0010;
		B = 4'b0010;
		resultadoEsperado=4'b0010;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada) 
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b0000;
		B = 4'b0000;
		resultadoEsperado=4'b0000;
		Nesperada=0;
		Zesperada=1;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b1111;
		B = 4'b1111;
		resultadoEsperado=4'b1111;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		
		
		$display ("=============OR=============");
		seleccion = 4'b0110;
		
		A = 4'b1111;
		B = 4'b0000;
		resultadoEsperado=4'b1111;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;	
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b1010;
		B = 4'b0110;
		resultadoEsperado=4'b1110;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b0000;
		B = 4'b0000;
		resultadoEsperado=4'b0000;
		Nesperada=0;
		Zesperada=1;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b0001;
		B = 4'b0101;
		resultadoEsperado=4'b0101;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada) 
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		
		
		$display ("=============XOR=============");
		seleccion = 4'b0111;
		
		A = 4'b1111;
		B = 4'b0001;
		resultadoEsperado=4'b1110;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b1010;
		B = 4'b0110;
		resultadoEsperado=4'b1100;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b1001;
		B = 4'b0000;
		resultadoEsperado=4'b1001;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada) 
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b1001;
		B = 4'b0110;
		resultadoEsperado=4'b1111;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada) 
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		
		
		$display ("=============SHIFT LEFT=============");
		seleccion = 4'b1000;
		
		A = 4'b0001;
		B = 4'b0001;
		resultadoEsperado=4'b0010;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;	
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada) 
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b0011;
		B = 4'b0010;
		resultadoEsperado=4'b1100;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b0001;
		B = 4'b1000;
		resultadoEsperado=4'b0000;
		Nesperada=0;
		Zesperada=1;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada) 
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b1001;
		B = 4'b0001;
		resultadoEsperado=4'b0010;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada) 
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		
		
		$display ("=============SHIFT RIGHT=============");
		seleccion = 4'b1001;
		
		A = 4'b0010;
		B = 4'b0001;
		resultadoEsperado=4'b0001;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;	
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b1000;
		B = 4'b0011;
		resultadoEsperado=4'b0001;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada) 
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b1111;
		B = 4'b0100;
		resultadoEsperado=4'b0000;
		Nesperada=0;
		Zesperada=1;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada)
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		A = 4'b1011;
		B = 4'b0010;
		resultadoEsperado=4'b0010;
		Nesperada=0;
		Zesperada=0;
		Cesperada=0;
		Vesperada=0;
		#10
		assert (resultado == resultadoEsperado && N == Nesperada && Z == Zesperada && C == Cesperada && V == Vesperada) 
			$display ($sformatf("Prueba exitosa para A = %b, B = %b", A, B));
		else $error($sformatf("Prueba fallida para A = %b, B = %b", A, B));
		
		
	end
 
 
 endmodule
 