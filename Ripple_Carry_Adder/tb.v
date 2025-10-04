//-->Test Bench
`include "design.v"
module test;
	reg [3:0]a,b;
	reg c;
	wire [3:0] sum;
	wire carry;
	top_4bit dut(a,b,c,sum,carry);

	initial begin
		$display("----------------------------------");
		$display("  a       b     c    sum    carry");
		$display("----------------------------------");
		repeat(10) begin
			c=1'b0;
			{a,b}=$random;
			#2 $display("%b    %b    %b    %b    %b",a,b,c,sum,carry);
		end
		$display("----------------------------------");
	end
endmodule

/* Output:
# Start time: 12:24:33 on Oct 04,2025
# Loading work.test
# Loading work.top_4bit
# Loading work.full_adder
# Loading work.half_adder
# ----------------------------------
#   a       b     c    sum    carry
# ----------------------------------
# 0010    0100    0    0110    0
# 1000    0001    0    1001    0
# 0000    1001    0    1001    0
# 0110    0011    0    1001    0
# 0000    1101    0    1101    0
# 1000    1101    0    0101    1
# 0110    0101    0    1011    0
# 0001    0010    0    0011    0
# 0000    0001    0    0001    0
# 0000    1101    0    1101    0
# ----------------------------------
*/
