//--> binary to BCD Converter
module b2BCD(b,bcd);
	input [3:0]b;
	output [4:0]bcd;

	assign bcd[4]=b[3]&&b[2] || b[3]&&b[1];
	assign bcd[3]=b[3]&&~b[2]&&~b[1];
	assign bcd[2]=~b[3]&&b[2] || b[2]&&b[1];
	assign bcd[1]=~b[3]&&b[1] || b[3]&&b[2]&&~b[1];
	assign bcd[0]=b[0];

endmodule

//--> Test Bench
module top;
	reg [3:0]b;
	wire [4:0]bcd;
	b2BCD dut(b,bcd);

	initial begin
	$display("--------------------");
	$display("Binary ------> BCD");
	$display("--------------------");
		repeat(10)begin 
			b=$random;
			#2 $display(" %b ------> %b",b,bcd);
		end
	$display("--------------------");
	end
endmodule


/* Output:-
# Start time: 10:42:38 on Sep 13,2025
# Loading work.top
# Loading work.b2BCD
# --------------------
# Binary ------> BCD
# --------------------
#  0100 ------> 00100
#  0001 ------> 00001
#  1001 ------> 01001
#  0011 ------> 00011
#  1101 ------> 10011
#  1101 ------> 10011
#  0101 ------> 00101
#  0010 ------> 00010
#  0001 ------> 00001
#  1101 ------> 10011
# --------------------
*/
