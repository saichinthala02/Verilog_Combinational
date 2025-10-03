//`include "half_subtractor_dataflow.v"
//`include "half_subtractor_behavioral.v"
`include "half_subtractor_structural.v"

module top;
	reg a,b;
	wire diff,borrow;
	half_sub dut(a,b,diff,borrow);

	initial begin
		$display("-------------------------");
		$display("---> Half Subtractor <---");
		$display("-------------------------");
		$display("| a | b | Diff | Borrow |");
		$display("-------------------------");
		
		a=1'b0;b=1'b0;
		#2 $display("| %b | %b |   %b  |    %b   |",a,b,diff,borrow);
		a=1'b0;b=1'b1;
		#2 $display("| %b | %b |   %b  |    %b   |",a,b,diff,borrow);
		a=1'b1;b=1'b0;
		#2 $display("| %b | %b |   %b  |    %b   |",a,b,diff,borrow);
		a=1'b1;b=1'b1;
		#2 $display("| %b | %b |   %b  |    %b   |",a,b,diff,borrow);
	
		$display("-------------------------");
	end
endmodule

/* Ouput:-
# Start time: 10:09:47 on Oct 03,2025
# Loading work.top
# Loading work.half_sub
# -------------------------
# ---> Half Subtractor <---
# -------------------------
# | a | b | Diff | Borrow |
# -------------------------
# | 0 | 0 |   0  |    0   |
# | 0 | 1 |   1  |    1   |
# | 1 | 0 |   1  |    0   |
# | 1 | 1 |   0  |    0   |
# -------------------------
*/
