//--> Implementation of Full-Adder using Dataflow Model
module full_adder(a,b,ci,sum,carry);
	input a,b,ci;
	output sum,carry;

	assign sum = a^b^ci;
	assign carry = a&b | b&ci | ci&a;
	
endmodule
