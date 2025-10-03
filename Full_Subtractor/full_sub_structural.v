//--> Implementation of Full Subtractor using Structural Model
module full_sub(a,b,bi,diff,bo);
	input a,b,bi;
	output diff,bo;
	wire abar,ab,axorb,axorbbar,bia;
	
	not(abar,a);
	xor(axorb,a,b);
	not(axorbbar,axorb);
	and(ab,abar,b);
	and(bia,bi,axorbbar);
	
	xor(diff,a,b,bi);
	or(bo,ab,bia);
endmodule
