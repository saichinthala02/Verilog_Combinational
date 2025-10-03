//--> Implementation of Full Subtractor using Dataflow Model
module full_sub(a,b,bi,diff,bo);
	input a,b,bi;
	output diff,bo;
	assign diff = a^b^bi;
	assign bo = (~a&b) | (bi&~(a^b));
endmodule

