module comparator(a,b,lt,eq,gt);
	input a,b;
	output lt,eq,gt;
	
	and(lt,~a,b);
	and(gt,a,~b);
	nor(eq,lt,gt);
endmodule

module comparator_2bit(a,b,lt,eq,gt);
	input [1:0]a,b;
	output lt,eq,gt;

	comparator(a[1],b[1],w1,w2,w3);
	comparator(a[0],b[0],w4,w5,w6);

	and(w7,w2,w4);
	or(lt,w1,w7);

	and(eq,w2,w5);

	and(w8,w2,w6);
	or(gt,w8,w3);

endmodule 
