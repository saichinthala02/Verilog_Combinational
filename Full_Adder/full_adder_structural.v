//--> Implementation of Full-Adder using Structural Model

module full_adder(a,b,ci,sum,carry);
	input a,b,ci;
	output sum,carry;
	wire w1,w2,w3;
	
	xor g1(sum,a,b,ci);
	and g2(w1,a,b);
	and g3(w2,ci,b);
	and g4(w3,a,ci);
	or g5(carry,w1,w2,w3);
		
endmodule
