// Implementation of various Gates using mux
module mux(i0,i1,s,y);
	input i0,i1,s;
	output y;
	assign y=(s==0)?i0:i1;
endmodule

module gates(a,b,yand,yor,ynand,ynor,yxor,yxnor);
	input a,b;
	output yand,yor,ynand,ynor,yxor,yxnor;

	mux m1(1'b0,b,a,yand);
	mux m2(b,1'b1,a,yor);
	mux m3(1'b1,~b,a,ynand);
	mux m4(~b,1'b0,a,ynor);
	mux m5(b,~b,a,yxor);
	mux m6(~b,b,a,yxnor);
endmodule
	
