`include "q13_gates_using_mux.v"
module top;
	reg a,b;
	wire yand,yor,ynand,ynor,yxor,yxnor;
	
	 gates dut(a,b,yand,yor,ynand,ynor,yxor,yxnor);

	initial begin
		$display("a  b | yand  yor  ynand  ynor  yxor  yxnor");
		repeat(5) begin
		{a,b}=$random;
			#10;
			$display("%b  %b | %b     %b     %b     %b     %b     %b",a,b,yand,yor,ynand,ynor,yxor,yxnor);
		end
	end
endmodule	

/* Output:-
# a  b | yand  yor  ynand  ynor  yxor  yxnor
# 0  0 | 0     0     1     1     0     1
# 0  1 | 0     1     1     0     1     0
# 0  1 | 0     1     1     0     1     0
# 1  1 | 1     1     0     0     0     1
# 0  1 | 0     1     1     0     1     0
*/

