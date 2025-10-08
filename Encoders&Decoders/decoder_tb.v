`include "decoder.v"
module top;
	reg [1:0]i;
	wire [3:0]y;

	decoder24 dut(i,y);

	initial begin
		$display(" i    y");
		repeat(10) begin
			i=$random;
			#2 $display("%b  %b",i,y);
		end
	end
endmodule

/* Output:-
#  i    y
# 00  0001
# 01  0010
# 01  0010
# 11  1000
# 01  0010
# 01  0010
# 01  0010
# 10  0100
# 01  0010
# 01  0010
*/
