`include "comparator_2bit.v"
//`include "comparator_2using1.v"
module top;
	reg [1:0]a,b;
	wire lt,eq,gt;
	
	comparator_2bit dut(a,b,lt,eq,gt);

	initial begin
		$display("a   b  lt   eq   gt");
		repeat(10) begin
		{a,b}=$random;
		#2 $display("%b  %b  %b   %b    %b",a,b,lt,eq,gt);
		end
	end
endmodule

/* Output:-
# a   b  lt   eq   gt
# 01  00  0   0    1
# 00  01  1   0    0
# 10  01  0   0    1
# 00  11  1   0    0
# 11  01  0   0    1
# 11  01  0   0    1
# 01  01  0   1    0
# 00  10  1   0    0
# 00  01  1   0    0
# 11  01  0   0    1
*/
