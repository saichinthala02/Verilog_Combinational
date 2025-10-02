//--> Implementation of Full-Adder using Behavioral Model

module full_adder(a,b,ci,sum,carry);
	input a,b,ci;
	output reg sum,carry;
	
	always@(a or b or ci) begin
		sum = a^b^ci;
	    carry = a&b | b&ci | ci&a;
	end
	
endmodule
