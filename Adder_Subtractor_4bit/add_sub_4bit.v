module fa(a,b,c,s,co);
	input a,b,c;
	output s,co;
	assign s = a^b^c;
	assign co = a&b | b&c | c&a; 
endmodule

module add_sub(a,b,c,s,co);
	input [3:0] a,b;
	input c;
	output [3:0]s;
	output co;
	fa m1(a[0],(b[0]^c),c,s[0],w1);
	fa m2(a[1],(b[1]^c),w1,s[1],w2);
	fa m3(a[2],(b[2]^c),w2,s[2],w3);
	fa m4(a[3],(b[3]^c),w3,s[3],co);
endmodule




