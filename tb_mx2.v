`timescale 1ns/100ps

module tb_mx2;		//simple testbench(Exhaustive verification)

	reg tb_a, tb_b, tb_s;
	wire tb_y;
	
	mx2 testmx2(tb_y, tb_a, tb_b, tb_s);
	
	initial 
		begin
		
		tb_a = 0; tb_b = 0; tb_s = 0; #10;			//y = b = 0
		tb_a = 1; #10;										//y = b = 0
		tb_b = 1; #10;										//y = b = 1
		tb_a = 0; #10;										//y = b = 1
		tb_b = 0; tb_s = 1; #10;						//y = a = 0
		tb_a = 1; #10;										//y = a = 1
		tb_b = 1; #10;										//y = a = 1
		tb_a = 0; #10;										//y = a = 0
		
		end

endmodule 