//-->Implementation of 1-bit Comparator

//-->a.Dataflow Model
/*
module comparator(a,b,lt,eq,gt);
	input a,b;
	output lt,eq,gt;

	assign lt = ~a&b;
	assign eq = ~(a^b);
	assign gt = a&~b;
endmodule   */

//-->b.Behavioural Model
/*
module comparator(a,b,lt,eq,gt);
	input a,b;
	output reg lt,eq,gt;
	
	always@(*) begin
		lt = ~a&b;
		eq = ~(a^b);
		gt = a&~b;
	end
endmodule
*/

//-->c.Structural Model
module comparator(a,b,lt,eq,gt);
	input a,b;
	output lt,eq,gt;
	
	and(lt,~a,b);
	and(gt,a,~b);
	nor(eq,lt,gt);
endmodule
