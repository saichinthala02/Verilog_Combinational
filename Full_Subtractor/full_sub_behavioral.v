//--> Implementation of Full Subtractor using Behavioral Model
module full_sub(a,b,bi,diff,bo);
	input a,b,bi;
	output reg diff,bo;
	
	always@(a or b or bi) begin
		diff = a^b^bi;
		bo = (~a&b) | (bi&~(a^b));
	end
endmodule
