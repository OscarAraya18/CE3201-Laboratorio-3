module Alu_FPGA(
	input[3:0] A,
	input[3:0] B,
	input[0:2] selector,
	output [6:0] hex1, hex2, 
	output N, Z, C, V	);
	
	reg [3:0] res, resSuma, resResta, resRight, resLeft, resAnd, resOr, resXor;
	

endmodule
	