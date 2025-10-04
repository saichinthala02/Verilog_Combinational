`include "mux_4x1.v"
module top;
reg i0,i1,i2,i3,s1,s0;
wire y;
mux_4x1 dut(i0,i1,i2,i3,s1,s0,y);

initial begin

	$display("-------------------------------------");
	$display("<---- Implementation of 4x1 mux ---->");
	$display("-------------------------------------");
	repeat(10) begin
		{i0,i1,i2,i3,s0,s1}=$random;
		#2 $display("I0=%b I1=%b I2=%b I3=%b S1=%b S0=%b Yout=%b",i0,i1,i2,i3,s1,s0,y);
	end
	$display("-------------------------------------");
end
endmodule

/*
# Start time: 19:46:33 on Oct 03,2025
# Loading work.top
# Loading work.mux_4x1
# -------------------------------------
# <---- Implementation of 4x1 mux ---->
# -------------------------------------
# I0=1 I1=0 I2=0 I3=1 S1=0 S0=0 Yout=1
# I0=0 I1=0 I2=0 I3=0 S1=1 S0=0 Yout=0
# I0=0 I1=0 I2=1 I3=0 S1=1 S0=0 Yout=1
# I0=1 I1=0 I2=0 I3=0 S1=1 S0=1 Yout=0
# I0=0 I1=0 I2=1 I3=1 S1=1 S0=0 Yout=1
# I0=0 I1=0 I2=1 I3=1 S1=1 S0=0 Yout=1
# I0=1 I1=0 I2=0 I3=1 S1=1 S0=0 Yout=0
# I0=0 I1=1 I2=0 I3=0 S1=0 S0=1 Yout=1
# I0=0 I1=0 I2=0 I3=0 S1=1 S0=0 Yout=0
# I0=0 I1=0 I2=1 I3=1 S1=1 S0=0 Yout=1
# -------------------------------------
*/

