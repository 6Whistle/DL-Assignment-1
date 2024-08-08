module mx2(y, d0, d1, s);		//2-to-1 MUX module

	output y;
	input d0, d1, s;

	_inv ni1(wi1, s);
	_nand2 n0(w0, d0, wi1);		//w0 = ~(d0 & ~s)
	_nand2 n1(w1, d1, s);		//w1 = ~(d1 & s)
	
	_nand2 n2(y, w0, w1);		//y = (d0 & ~s) ^ (d1 & s)

endmodule 