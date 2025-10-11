//TB
`include "add_sub_4bit.v"
module top;
	reg [3:0] a,b;
	reg c;
	wire [3:0]s;
	wire co;
	add_sub dut(a,b,c,s,co);

	initial begin
		repeat(10)begin
			{a,b,c}=$random;
			#2 $display("a=%b b=%b c=%b | Sum=%b Carry=%b",a,b,c,s,co);
		end
	end
endmodule

/* Output:-
# Start time: 14:38:38 on Oct 01,2025
# Loading work.top
# Loading work.add_sub
# Loading work.fa
# a=1001 b=0010 c=0 | Sum=1011 Carry=0
# a=0100 b=0000 c=1 | Sum=0100 Carry=1
# a=0000 b=0100 c=1 | Sum=1100 Carry=0
# a=0011 b=0001 c=1 | Sum=0010 Carry=1
# a=1000 b=0110 c=1 | Sum=0010 Carry=1
# a=1100 b=0110 c=1 | Sum=0110 Carry=1
# a=0011 b=0010 c=1 | Sum=0001 Carry=1
# a=0000 b=1001 c=0 | Sum=1001 Carry=0
# a=1000 b=0000 c=1 | Sum=1000 Carry=1
# a=1000 b=0110 c=1 | Sum=0010 Carry=1
*/
