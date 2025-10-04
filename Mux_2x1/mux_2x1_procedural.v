//---> Implementation of 2x1 using conditional,case and if-else

//Conditional Statement
/*
module mux_2x1(i,s,y);
input [1:0]i;
input s;
output reg y;

	always@(*) begin
		y=(s==0)?i[0]:i[1];
	end
endmodule
*/

//Using Case Statement
/*
module mux_2x1(i,s,y);
input [1:0]i;
input s;
output reg y;

	always@(*) begin
		case({s})
		1'b0 : y=i[0];
		1'b1 : y=i[1];
		endcase
	end
endmodule
*/

//if-else condition
module mux_2x1(i,s,y);
input [1:0]i;
input s;
output reg y;

	always@(*) begin
		if(s==0) y=i[0];
		else y=i[1];
	end
endmodule
