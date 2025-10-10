//--> Implementation of 3 bit comparator

//-->a.Dataflow Model
/*
module comparator_3bit(a,b,lt,eq,gt);
	input [2:0]a,b;
	output lt,eq,gt;
		
	assign lt = (~a[2]&b[2])|(~(a[2]^b[2])&(~a[1]&b[1]))|(~(a[2]^b[2])&~(a[1]^b[1])&(~a[0]&b[0]));
	assign eq = ~(a[2]^b[2])&~(a[1]^b[1])&~(a[0]^b[0]);
	assign gt = (a[2]&~b[2])|(~(a[2]^b[2])&(a[1]&~b[1]))|(~(a[2]^b[2])&~(a[1]^b[1])&(a[0]&~b[0]));
endmodule  */


//-->b.Behavioural Model
/*module comparator_3bit(a,b,lt,eq,gt);
	input [2:0]a,b;
	output reg lt,eq,gt;
	
	always@(*)begin
	lt=0;eq=0;gt=0;
		if(a<b) lt=1;
		else if(a==b) eq=1;
		else gt=1;
	end
endmodule   */


//-->c.Structural Model
module comparator_3bit(a,b,lt,eq,gt);
	input [2:0]a,b;
	output lt,eq,gt;

    and(w1,~a[2],b[2]);
	xnor(w2,a[2],b[2]);
	and(w3,~a[1],b[1]);
	and(w4,w2,w3);
	xnor(w5,a[1],b[1]);
	and(w6,~a[0],b[0]);
	and(w7,w2,w5,w6);

	or(lt,w1,w4,w7);

	xnor(w8,a[0],b[0]);
	and(eq,w2,w5,w8);

	and(w9,a[2],~b[2]);
	and(w10,a[1],~b[1]);
	and(w11,w2,w10);
	and(w12,a[0],~b[0]);
	and(w13,w2,w5,w12);

	or(gt,w9,w11,w13);
endmodule

 
