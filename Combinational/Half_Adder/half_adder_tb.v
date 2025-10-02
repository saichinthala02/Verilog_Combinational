`include "half_adder.v"
module top;
	reg a,b;
	wire sum,carry;
	
	half_adder dut(a,b,sum,carry);	

	initial begin
		$display("------------------------");
		$display("-----> Half Adder <-----");
		$display("------------------------");
		$display("| a | b | Sum | Carry  |");
		$display("------------------------");
		
		a=1'b0;b=1'b0;
		#2 $display("| %b | %b |  %b  |    %b   |",a,b,sum,carry);
		a=1'b0;b=1'b1;
		#2 $display("| %b | %b |  %b  |    %b   |",a,b,sum,carry);
		a=1'b1;b=1'b0;
		#2 $display("| %b | %b |  %b  |    %b   |",a,b,sum,carry);
		a=1'b1;b=1'b1;
		#2 $display("| %b | %b |  %b  |    %b   |",a,b,sum,carry);
	
		$display("------------------------");
	end
endmodule

/* Output:-
# Start time: 18:50:38 on Oct 02,2025
# Loading work.top
# Loading work.half_adder
# ------------------------
# -----> Half Adder <-----
# ------------------------
# | a | b | Sum | Carry  |
# ------------------------
# | 0 | 0 |  0  |    0   |
# | 0 | 1 |  1  |    0   |
# | 1 | 0 |  1  |    0   |
# | 1 | 1 |  0  |    1   |
# ------------------------
*/
