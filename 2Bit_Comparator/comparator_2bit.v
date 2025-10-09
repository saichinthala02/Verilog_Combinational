//--> Implementation of 2-bit Comparator

//-->Dataflow Model
/*
module comparator_2bit(a,b,lt,eq,gt);
	input [1:0]a,b;
	output lt,eq,gt;

	assign lt = (~a[1]&b[1])|(~(a[1]^b[1])&(~a[0]&b[0]));
	assign eq = ~(a[1]^b[1])&~(a[0]^b[0]);
	assign gt = (a[1]&~b[1])|(~(a[1]^b[1])&(a[0]&~b[0]));
endmodule    */

/*
//--> Behavioural Model
module comparator_2bit(a,b,lt,eq,gt);
	input [1:0]a,b;
	output reg lt,eq,gt;
    
	always@(*)begin
		lt = (~a[1]&b[1])|(~(a[1]^b[1])&(~a[0]&b[0]));
		eq = ~(a[1]^b[1])&~(a[0]^b[0]);
		gt = (a[1]&~b[1])|(~(a[1]^b[1])&(a[0]&~b[0]));
	end
endmodule     */

//Structural Model
module comparator_2bit(a,b,lt,eq,gt);
	input [1:0]a,b;
	output lt,eq,gt;
	
	and(w1,~a[1],b[1]);
	xnor(w2,a[1],b[1]);
	and(w3,~a[0],b[0]);
	and(w4,w2,w3);
	or(lt,w1,w4);

	xnor(w5,a[0],b[0]);
	and(eq,w2,w5);

	and(w6,a[1],~b[1]);
	and(w7,a[0],~b[0]);
	and(w8,w2,w7);
	or(gt,w6,w8);
	
endmodule
