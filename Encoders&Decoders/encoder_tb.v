`include "pencoder.v"
module top;
	reg [3:0]i;
	wire [1:0]y;

	priority_encoder dut(i,y);

	initial begin
		$display(" i     y");
		repeat(10) begin
			i=$random;
			#2 $display("%b  %b",i,y);
		end
	end
endmodule

/* Output:- Encoder
#  i     y
# 0100  10
# 0001  00
# 1001  xx
# 0011  xx
# 1101  xx
# 1101  xx
# 0101  xx
# 0010  01
# 0001  00
# 1101  xx
*/

/* Output:- MSB Priority Encoder
#  i     y
# 0100  10
# 0001  00
# 1001  11
# 0011  01
# 1101  11
# 1101  11
# 0101  10
# 0010  01
# 0001  00
# 1101  11
*/

/* Output:- LSB Priority Encoder
#  i     y
# 0100  10
# 0001  00
# 1001  00
# 0011  00
# 1101  00
# 1101  00
# 0101  00
# 0010  01
# 0001  00
# 1101  00
*/

