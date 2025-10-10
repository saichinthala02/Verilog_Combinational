`include "comparator_3bit.v"
module top;
	reg [2:0]a,b;
	wire lt,eq,gt;

	comparator_3bit dut(a,b,lt,eq,gt);

	initial begin
		$display(" a     b    lt    eq     gt");
		repeat(10) begin
		{a,b}=$random;
		#2;
		$display("%b   %b    %b    %b      %b",a,b,lt,eq,gt);
		end
	end
endmodule

/* Output:-
#  a     b    lt    eq     gt
# 100   100    0    1      0
# 000   001    1    0      0
# 001   001    0    1      0
# 100   011    0    0      1
# 001   101    1    0      0
# 001   101    1    0      0
# 100   101    1    0      0
# 010   010    0    1      0
# 000   001    1    0      0
# 001   101    1    0      0
*/


