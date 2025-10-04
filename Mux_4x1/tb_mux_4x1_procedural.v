`include "mux_4x1_procedural.v"
module top;
reg [3:0]i;
reg [1:0]s;
wire y;

mux_4x1 dut(i,s,y);

initial begin
	repeat(10) begin
	{i,s} = $random;
	#2 $monitor(" I=%b S=%b Yout=%b",i,s,y);
	end
end
endmodule

/* Output:-
# Start time: 19:45:24 on Oct 03,2025
# Loading work.top
# Loading work.mux_4x1
#  I=0000 S=01 Yout=0
#  I=0010 S=01 Yout=1
#  I=1000 S=11 Yout=1
#  I=0011 S=01 Yout=1
#  I=0011 S=01 Yout=1
#  I=1001 S=01 Yout=0
#  I=0100 S=10 Yout=1
#  I=0000 S=01 Yout=0
#  I=0011 S=01 Yout=1
#  I=0011 S=01 Yout=1
*/
