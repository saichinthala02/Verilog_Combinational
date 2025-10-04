`include "mux_2x1_procedural.v"
module top;
	reg [1:0]i;
	reg s;
	wire y;
	
	mux_2x1 dut(i,s,y);
	
	initial begin
		$display("-----------------------------------");
		$display("<--- Implementation of 2x1 mux --->");
		$display("-----------------------------------");
		repeat(10) begin
		{i,s} = $random;
		#2 $display("\t\t I=%b Sel=%b y=%b",i,s,y);
		end
		$display("-----------------------------------");
	end
endmodule

/* Output:-
# Start time: 11:02:38 on Oct 03,2025
# Loading work.top
# Loading work.mux_2x1
# -----------------------------------
# <--- Implementation of 2x1 mux --->
# -----------------------------------
# 		 I=10 Sel=0 y=0
# 		 I=00 Sel=1 y=0
# 		 I=00 Sel=1 y=0
# 		 I=01 Sel=1 y=0
# 		 I=10 Sel=1 y=1
# 		 I=10 Sel=1 y=1
# 		 I=10 Sel=1 y=1
# 		 I=01 Sel=0 y=1
# 		 I=00 Sel=1 y=0
# 		 I=10 Sel=1 y=1
# -----------------------------------
*/

