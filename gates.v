module _nand2(y, a, b);				//NAND Gate module

	output y;
	input a, b;

	assign y = ~(a & b);			//NAND operate

endmodule

module _inv(y, a);			//NOT Gate module

	output y;
	input a;
	
	assign y = ~a;				//NOT operate

endmodule
