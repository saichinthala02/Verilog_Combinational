//--> Implementing Half_Adder in all the Three Models.

//--> Dataflow MOdel
/*
module half_adder(a,b,sum,carry);
	input a,b;
	output sum,carry;
	
	assign sum = a ^ b;
	assign carry = a & b;
endmodule
*/

//--> Behavioural Model
/*
module half_adder(a,b,sum,carry);
	input a,b;
	output reg sum,carry;
	
	always@(a or b) begin
		sum = a ^ b;
		carry = a & b;
	end
endmodule
*/

//--> Structural Model
module half_adder(a,b,sum,carry);
	input a,b;
	output sum,carry;
	
	xor g1(sum,a,b);
	and g2(carry,a,b);
	
endmodule

