//--> Implementation of 3-Bit comparator using 1-Bit Comparator

//--> 1-Bit comparator
module comparator_1bit(a,b,lt,eq,gt);
	input a,b;
	output lt,eq,gt;

	assign	lt= ~a&b;
	assign	eq= ~(a^b);
    assign	gt= a&~b;
endmodule

//--> 3-Bit Comparator using 1-Bit comparator
module comparator_bit3(a,b,lt,eq,gt);
	input [2:0]a,b;
	output lt,eq,gt;

	comparator_1bit c1(a[2],b[2],lt2,eq2,gt2);
	comparator_1bit c2(a[1],b[1],lt1,eq1,gt1);
	comparator_1bit c3(a[0],b[0],lt0,eq0,gt0);

	assign lt = lt2 || (eq2&&lt1) || (eq2&&eq1&&lt0);
	assign eq = eq2 && eq1 && eq0;
	assign gt = gt2 || (eq2&&gt1) || (eq2&&eq1&&gt0);
endmodule


//--> Test bench for 3-Bit Comparator
module top;
	reg [2:0]a,b;
	wire lt,eq,gt;
	integer seed;

	comparator_bit3 dut(a,b,lt,eq,gt);

	initial begin
		seed=2421;
		$display("---------------------------");
		$display(" a     b    lt    eq     gt");
		$display("---------------------------");
		repeat(10) begin
		{a,b}=$random(seed);
		#2;
		$display("%b   %b    %b    %b      %b",a,b,lt,eq,gt);
		end
		$display("---------------------------");
	end
endmodule


/* Output:- 
# ---------------------------
#  a     b    lt    eq     gt
# ---------------------------
# 010   011    1    0      0
# 100   001    0    0      1
# 011   001    0    0      1
# 100   101    1    0      0
# 100   100    0    1      0
# 101   101    0    1      0
# 010   100    1    0      0
# 100   001    0    0      1
# 000   100    1    0      0
# 111   011    0    0      1
# ---------------------------
*/
