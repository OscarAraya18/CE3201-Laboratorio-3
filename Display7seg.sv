module Display7seg(input [7:0] bitsEntrada,output reg [6:0] seg7display);
	always @(bitsEntrada) begin
		case(bitsEntrada)
         5'b00000 : seg7display <= 7'b0000001; 
			5'b00001 : seg7display <= 7'b1001111;//1
			5'b00010 : seg7display <= 7'b0010010;//2
			5'b00011 : seg7display <= 7'b0000110;//3
			5'b00100 : seg7display <= 7'b1001100;//4
			5'b00101 : seg7display <= 7'b0100100;//5
			5'b00110 : seg7display <= 7'b0100000;//6
			5'b00111 : seg7display <= 7'b0001111;//7
			5'b01000 : seg7display <= 7'b0000000;//8
			5'b01001 : seg7display <= 7'b0000100;//9
			5'b01010 : seg7display <= 7'b0001000;//10
			5'b01011 : seg7display <= 7'b1100000;//11
			5'b01100 : seg7display <= 7'b0110001;//12
			5'b01101 : seg7display <= 7'b1000010;//13
			5'b01110 : seg7display <= 7'b0110000;//14
			5'b01111 : seg7display <= 7'b0111000;//15
			5'b10000 : seg7display <= 7'b0100001;//-16
			5'b10001 : seg7display <= 7'b0111000;//-15
			5'b10010 : seg7display <= 7'b0110000;//-14
			5'b10011 : seg7display <= 7'b1000010;//-13
			5'b10100 : seg7display <= 7'b0110001;//-12
			5'b10101 : seg7display <= 7'b1100000;//-11
			5'b10110 : seg7display <= 7'b0001000;//-10
			5'b10111 : seg7display <= 7'b0000100;//-9
			5'b11000 : seg7display <= 7'b0000000;//-8
			5'b11001 : seg7display <= 7'b0001111;//-7
			5'b11010 : seg7display <= 7'b0100000;//-6
			5'b11011 : seg7display <= 7'b0100100;//-5
			5'b11100 : seg7display <= 7'b1001100;//-4
			5'b11101 : seg7display <= 7'b0000110;//-3
			5'b11110 : seg7display <= 7'b0010010;//-2
			5'b11111 : seg7display <= 7'b1001111;//-1
		endcase
	end
endmodule

