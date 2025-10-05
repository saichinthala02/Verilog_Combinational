// Test bench for x1 mux
`include "mux_8x1.v"
module top;
reg i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0;
wire y;

mux_8x1 dut(i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0,y);

initial begin
	repeat(8) begin
	{i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0}=$random;
	#2 $display("i0=%b,i1=%b,i2=%b,i3=%b,i4=%b,i5=%b,i6=%b,i7=%b,s2=%b,s1=%b,s0=%b,Yout=%b",i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0,y);
	end
end
endmodule

/* Output:-
# Start time: 20:05:31 on Oct 03,2025
# Loading work.top
# Loading work.mux_8x1
# i0=1,i1=0,i2=1,i3=0,i4=0,i5=1,i6=0,i7=0,s2=1,s1=0,s0=0,Yout=0
# i0=1,i1=1,i2=0,i3=1,i4=0,i5=0,i6=0,i7=0,s2=0,s1=0,s0=1,Yout=1
# i0=1,i1=1,i2=0,i3=0,i4=0,i5=0,i6=0,i7=1,s2=0,s1=0,s0=1,Yout=1
# i0=1,i1=1,i2=0,i3=0,i4=1,i5=1,i6=0,i7=0,s2=0,s1=1,s0=1,Yout=0
# i0=0,i1=1,i2=1,i3=0,i4=0,i5=0,i6=0,i7=1,s2=1,s1=0,s0=1,Yout=0
# i0=0,i1=0,i2=1,i3=1,i4=0,i5=0,i6=0,i7=1,s2=1,s1=0,s0=1,Yout=0
# i0=1,i1=0,i2=0,i3=0,i4=1,i5=1,i6=0,i7=0,s2=1,s1=0,s0=1,Yout=1
# i0=0,i1=1,i2=0,i3=0,i4=0,i5=0,i6=1,i7=0,s2=0,s1=1,s0=0,Yout=0
*/
