//--> Implementation of Half-Subtractor in Structural Model
module half_sub(a,b,diff,borrow);
	input a,b;
	output diff,borrow;

	xor g1(diff,a,b);
	and g2(borrow,~a,b);
	
endmodule
