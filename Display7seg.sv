//Referencia: https://verilogcodes.blogspot.com/2015/10/verilog-code-for-bcd-to-7-segment.html


module Display7Seg( 
	 input [4:0] inBits,
    output reg [6:0] outBits
);

	always @ (inBits) begin  
      case (inBits)  
         5'b00000 : outBits <= 7'b0000001; 
			5'b00001 : outBits <= 7'b1001111;//1
			5'b00010 : outBits <= 7'b0010010;//2
			5'b00011 : outBits <= 7'b0000110;//3
			5'b00100 : outBits <= 7'b1001100;//4
			5'b00101 : outBits <= 7'b0100100;//5
			5'b00110 : outBits <= 7'b0100000;//6
			5'b00111 : outBits <= 7'b0001111;//7
			5'b01000 : outBits <= 7'b0000000;//8
			5'b01001 : outBits <= 7'b0000100;//9
			5'b01010 : outBits <= 7'b0001000;//10
			5'b01011 : outBits <= 7'b1100000;//11
			5'b01100 : outBits <= 7'b0110001;//12
			5'b01101 : outBits <= 7'b1000010;//13
			5'b01110 : outBits <= 7'b0110000;//14
			5'b01111 : outBits <= 7'b0111000;//15
			5'b10000 : outBits <= 7'b0100001;//-16
			5'b10001 : outBits <= 7'b0111000;//-15
			5'b10010 : outBits <= 7'b0110000;//-14
			5'b10011 : outBits <= 7'b1000010;//-13
			5'b10100 : outBits <= 7'b0110001;//-12
			5'b10101 : outBits <= 7'b1100000;//-11
			5'b10110 : outBits <= 7'b0001000;//-10
			5'b10111 : outBits <= 7'b0000100;//-9
			5'b11000 : outBits <= 7'b0000000;//-8
			5'b11001 : outBits <= 7'b0001111;//-7
			5'b11010 : outBits <= 7'b0100000;//-6
			5'b11011 : outBits <= 7'b0100100;//-5
			5'b11100 : outBits <= 7'b1001100;//-4
			5'b11101 : outBits <= 7'b0000110;//-3
			5'b11110 : outBits <= 7'b0010010;//-2
			5'b11111 : outBits <= 7'b1001111;//-1
      endcase  
   end  
endmodule
