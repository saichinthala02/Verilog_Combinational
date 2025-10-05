`include "mux_8x1_case_if_else.v"
module top;
	reg [7:0]i;
	reg [2:0]s;
	wire y;

	mux_8x1 dut(i,s,y);
	initial begin

		repeat(10)begin
			{i,s}=$random;
			#2 $display("i=%b  s=%b  Yout=%b",i,s,y);
		end

	end
endmodule

/* Output:-
# Start time: 20:01:19 on Oct 03,2025
# Loading work.top
# Loading work.mux_8x1
# i=10100100  s=100  Yout=0
# i=11010000  s=001  Yout=0
# i=11000001  s=001  Yout=0
# i=11001100  s=011  Yout=1
# i=01100001  s=101  Yout=1
# i=00110001  s=101  Yout=1
# i=10001100  s=101  Yout=0
# i=01000010  s=010  Yout=0
# i=01100000  s=001  Yout=0
# i=10100001  s=101  Yout=1
*/
