//--> Half Adder 
module half_adder(a,b,sum,carry);
	input a,b;
	output sum,carry;

	assign sum = a^b;
	assign carry = a&b;
endmodule

//--> Full Adder using Half Adder
module full_adder(a,b,c,sum,carry);
	input a,b,c;
	output sum,carry;
	wire w1,w2,w3;

	half_adder h1(a,b,w1,w2);   // half_adder(.a(a),.b(b),.sum(w1),.carry(w2));
	half_adder h2(w1,c,sum,w3); // half_adder(.a(w1),.b(c),.sum(sum),.carry(w3));

	or(carry,w2,w3);
endmodule

//--> 4-Bit Full Adder using full Adder
module top_4bit(a,b,c,sum,carry);
	input [3:0]a,b;
	input c;
	output [3:0] sum;
	output carry;
	wire w1,w2,w3;

	full_adder f1(a[0],b[0],c,sum[0],w1);
	full_adder f2(a[1],b[1],w1,sum[1],w2);
	full_adder f3(a[2],b[2],w2,sum[2],w3);
	full_adder f4(a[3],b[3],w3,sum[3],carry);
endmodule


//-->Test Bench

module test;
	reg [3:0]a,b;
	reg c;
	wire [3:0] sum;
	wire carry;
	top_4bit dut(a,b,c,sum,carry);

	initial begin
		$display("----------------------------------");
		$display("  a       b     c    sum    carry");
		$display("----------------------------------");
		repeat(10) begin
			c=1'b0;
			{a,b}=$random;
			#2 $display("%b    %b    %b    %b    %b",a,b,c,sum,carry);
		end
		$display("----------------------------------");
	end
endmodule

/* Output:-
# Start time: 21:55:04 on Sep 12,2025
# Loading work.test
# Loading work.top_4bit
# Loading work.full_adder
# Loading work.half_adder
# ---------------------------------
#   a       b     c    sum    carry
# ---------------------------------
# 0010    0100    0    0110    0
# 1000    0001    0    1001    0
# 0000    1001    0    1001    0
# 0110    0011    0    1001    0
# 0000    1101    0    1101    0
# 1000    1101    0    0101    1
# 0110    0101    0    1011    0
# 0001    0010    0    0011    0
# 0000    0001    0    0001    0
# 0000    1101    0    1101    0
# ---------------------------------
*/


