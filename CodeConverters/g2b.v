//--> gray to Binary Converter
module b2g(gray,binary);
	input [4:0]gray;
	output [4:0]binary;
	
	assign binary[4]=gray[4];
	assign binary[3]=binary[4]^gray[3];
	assign binary[2]=binary[3]^gray[2];
	assign binary[1]=binary[2]^gray[1];
	assign binary[0]=binary[1]^gray[0];
endmodule

//--> Test Bench
module top;
	reg [4:0]gray;
	wire [4:0]binary;
	b2g dut(gray,binary);

	initial begin
	$display("--------------------");
	$display("Gray_Code     Binary");
	$display("--------------------");
		repeat(14)begin 
			gray=$random;
			#2 $display("  %b       %b",gray,binary);
		end
	$display("--------------------");
	end
endmodule

/* Output:-
# Start time: 23:59:45 on Sep 12,2025
# Loading work.top
# Loading work.b2g
# --------------------
# Gray_Code     Binary
# --------------------
#   00100       00111
#   00001       00001
#   01001       01110
#   00011       00010
#   01101       01001
#   01101       01001
#   00101       00110
#   10010       11100
#   00001       00001
#   01101       01001
#   10110       11011
#   11101       10110
#   01101       01001
#   01100       01000
# --------------------
*/
