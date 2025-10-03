`include "full_sub_dataflow.v"
//`include "full_sub_behavioral.v"
//`include "full_sub_structural.v"
module top;
	reg a,b,bi;
	wire diff,bo;
	full_sub dut(a,b,bi,diff,bo);

	initial begin
		$display("-------------------------------");
		$display("------> Full Subtrcator <------");
		$display("-------------------------------");
		$display("| a | b | Cin | Diff | Borrow |");
		$display("-------------------------------");
		
		a=1'b0;b=1'b0;bi=1'b0;
		#2 $display("| %b | %b |  %b  |   %b  |    %b   |",a,b,bi,diff,bo);
		a=1'b0;b=1'b0;bi=1'b1;
		#2 $display("| %b | %b |  %b  |   %b  |    %b   |",a,b,bi,diff,bo);
		a=1'b0;b=1'b1;bi=1'b0;
		#2 $display("| %b | %b |  %b  |   %b  |    %b   |",a,b,bi,diff,bo);
		a=1'b0;b=1'b1;bi=1'b1;
		#2 $display("| %b | %b |  %b  |   %b  |    %b   |",a,b,bi,diff,bo);
		a=1'b1;b=1'b0;bi=1'b0;
		#2 $display("| %b | %b |  %b  |   %b  |    %b   |",a,b,bi,diff,bo);
		a=1'b1;b=1'b0;bi=1'b1;
		#2 $display("| %b | %b |  %b  |   %b  |    %b   |",a,b,bi,diff,bo);
		a=1'b1;b=1'b1;bi=1'b0;
		#2 $display("| %b | %b |  %b  |   %b  |    %b   |",a,b,bi,diff,bo);
		a=1'b1;b=1'b1;bi=1'b1;
		#2 $display("| %b | %b |  %b  |   %b  |    %b   |",a,b,bi,diff,bo);
		$display("-------------------------------");
	end
endmodule

/* OUptut:-
# Start time: 10:35:28 on Oct 03,2025
# Loading work.top
# Loading work.full_sub
# -------------------------------
# ------> Full Subtrcator <------
# -------------------------------
# | a | b | Cin | Diff | Borrow |
# -------------------------------
# | 0 | 0 |  0  |   0  |    0   |
# | 0 | 0 |  1  |   1  |    1   |
# | 0 | 1 |  0  |   1  |    1   |
# | 0 | 1 |  1  |   0  |    1   |
# | 1 | 0 |  0  |   1  |    0   |
# | 1 | 0 |  1  |   0  |    0   |
# | 1 | 1 |  0  |   0  |    0   |
# | 1 | 1 |  1  |   1  |    1   |
# -------------------------------
*/
