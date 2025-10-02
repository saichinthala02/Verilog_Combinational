//--> Test-Bench for full-adder
//`include "full_adder_dataflow.v"
//`include "full_adder_behavioral.v"
`include "full_adder_structural.v"
module top;
	reg a,b,ci;
	wire sum,carry;
	full_adder dut(a,b,ci,sum,carry);

	initial begin
		$display("------------------------------");
		$display("--------> Full Adder <--------");
		$display("------------------------------");
		$display("| a | b | Cin | Sum | Carry  |");
		$display("------------------------------");
		
		a=1'b0;b=1'b0;ci=1'b0;
		#2 $display("| %b | %b |  %b  |  %b  |    %b   |",a,b,ci,sum,carry);
		a=1'b0;b=1'b0;ci=1'b1;
		#2 $display("| %b | %b |  %b  |  %b  |    %b   |",a,b,ci,sum,carry);
		a=1'b0;b=1'b1;ci=1'b0;
		#2 $display("| %b | %b |  %b  |  %b  |    %b   |",a,b,ci,sum,carry);
		a=1'b0;b=1'b1;ci=1'b1;
		#2 $display("| %b | %b |  %b  |  %b  |    %b   |",a,b,ci,sum,carry);
		a=1'b1;b=1'b0;ci=1'b0;
		#2 $display("| %b | %b |  %b  |  %b  |    %b   |",a,b,ci,sum,carry);
		a=1'b1;b=1'b0;ci=1'b1;
		#2 $display("| %b | %b |  %b  |  %b  |    %b   |",a,b,ci,sum,carry);
		a=1'b1;b=1'b1;ci=1'b0;
		#2 $display("| %b | %b |  %b  |  %b  |    %b   |",a,b,ci,sum,carry);
		a=1'b1;b=1'b1;ci=1'b1;
		#2 $display("| %b | %b |  %b  |  %b  |    %b   |",a,b,ci,sum,carry);
		$display("------------------------------");
	end
endmodule

/* Output:-
# Start time: 23:43:40 on Oct 02,2025
# Loading work.top
# Loading work.full_adder
# ------------------------------
# --------> Full Adder <--------
# ------------------------------
# | a | b | Cin | Sum | Carry  |
# ------------------------------
# | 0 | 0 |  0  |  0  |    0   |
# | 0 | 0 |  1  |  1  |    0   |
# | 0 | 1 |  0  |  1  |    0   |
# | 0 | 1 |  1  |  0  |    1   |
# | 1 | 0 |  0  |  1  |    0   |
# | 1 | 0 |  1  |  0  |    1   |
# | 1 | 1 |  0  |  0  |    1   |
# | 1 | 1 |  1  |  1  |    1   |
# ------------------------------
*/

