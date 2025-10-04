// Test bench for 2x1 mux
`include "mux_2x1.v"
module top;
	reg i0,i1,sel;
	wire y;
	
	mux_2x1 dut(i0,i1,sel,y);
	
	initial begin
		$display("-----------------------------------");
		$display("<--- Implementation of 2x1 mux --->");
		$display("-----------------------------------");
		repeat(10) begin
		{i0,i1,sel} = $random;
		#2 $display("\t\t I0=%b I1=%b Sel=%b y=%b",i0,i1,sel,y);
		end
		$display("-----------------------------------");
	end
endmodule

/* Output:-
# Start time: 10:53:20 on Oct 03,2025
# Loading work.top
# Loading work.mux_2x1
# -----------------------------------
# <--- Implementation of 2x1 mux --->
# -----------------------------------
# 		 I0=1 I1=0 Sel=0 y=1
# 		 I0=0 I1=0 Sel=1 y=0
# 		 I0=0 I1=0 Sel=1 y=0
# 		 I0=0 I1=1 Sel=1 y=1
# 		 I0=1 I1=0 Sel=1 y=0
# 		 I0=1 I1=0 Sel=1 y=0
# 		 I0=1 I1=0 Sel=1 y=0
# 		 I0=0 I1=1 Sel=0 y=0
# 		 I0=0 I1=0 Sel=1 y=0
# 		 I0=1 I1=0 Sel=1 y=0
# -----------------------------------
*/
