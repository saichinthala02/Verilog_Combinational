//--> Implementation of 1-bit Comparator Testbench
`include "comparator.v"
module top;
	reg a,b;
	wire lt,eq,gt;

	comparator dut(a,b,lt,eq,gt);

	initial begin 
		$display("a  b  lt  eq  gt");
		repeat(10)begin
			{a,b}=$random;
			#1 $display("%b  %b   %b   %b   %b",a,b,lt,eq,gt);
		end
	end
endmodule

/* Output:-
# a  b  lt  eq  gt
# 0  0   0   1   0
# 0  1   1   0   0
# 0  1   1   0   0
# 1  1   0   1   0
# 0  1   1   0   0
# 0  1   1   0   0
# 0  1   1   0   0
# 1  0   0   0   1
# 0  1   1   0   0
# 0  1   1   0   0
*/
