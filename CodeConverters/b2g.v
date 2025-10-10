//--> binary to gray Converter
module b2g(binary,gray);
	input [4:0]binary;
	output [4:0]gray;

	assign gray[4]=binary[4];
	assign gray[3]=binary[4]^binary[3];
	assign gray[2]=binary[3]^binary[2];
	assign gray[1]=binary[2]^binary[1];
	assign gray[0]=binary[1]^binary[0];
endmodule

//--> Test Bench
module top;
	reg [4:0]binary;
	wire [4:0]gray;
	b2g dut(binary,gray);

	initial begin
	$display("-----------------");
	$display("Binary  Gray_Code");
	$display("-----------------");
		repeat(10)begin 
			binary=$random;
			#2 $display("%b     %b",binary,gray);
		end
	$display("-----------------");
	end
endmodule

/* Output:-
# Start time: 23:46:43 on Sep 12,2025
# Loading work.top
# Loading work.b2g
# -----------------
# Binary  Gray_Code
# -----------------
# 00100     00110
# 00001     00001
# 01001     01101
# 00011     00010
# 01101     01011
# 01101     01011
# 00101     00111
# 10010     11011
# 00001     00001
# 01101     01011
# -----------------
*/
