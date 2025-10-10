//--> binary to Excess-3 Converter
module b2ex3(b,e);
	input [3:0]b;
	output reg [3:0]e;

	always@(*)begin

	if(b==4'b1101 || b==4'b1110 || b==4'b1111) e=4'bxxxx;
	else begin
		e[3]=b[3] || b[2]&&b[1] || b[2]&&b[0];
		e[2]=~b[2]&&b[1] || ~b[2]&&b[0] || b[2]&&~b[1]&&~b[0];
		e[1]= ~b[1]&&~b[0] || b[1]&&b[0];
		e[0]=~b[0];
	end
	end

endmodule

//--> Test Bench
module top;
	reg [3:0]b;
	wire [3:0]e;
	b2ex3 dut(b,e);

	initial begin
	$display("--------------------");
	$display("Binary ---> Excess-3");
	$display("--------------------");
		repeat(10)begin 
			b=$random;
			#2 $display(" %b ------> %b",b,e);
		end
	$display("--------------------");
	end
endmodule


/* Output:-
# Start time: 10:54:42 on Sep 13,2025
# Loading work.top
# Loading work.b2ex3
# --------------------
# Binary ---> Excess-3
# --------------------
#  0100 ------> 0111
#  0001 ------> 0100
#  1001 ------> 1100
#  0011 ------> 0110
#  1101 ------> xxxx
#  1101 ------> xxxx
#  0101 ------> 1000
#  0010 ------> 0101
#  0001 ------> 0100
#  1101 ------> xxxx
# --------------------
*/
