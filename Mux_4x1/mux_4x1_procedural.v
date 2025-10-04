// Implementation of 4x1 mux using Conditional Operator, Case and if-else statements.

module mux_4x1(i,s,y);
	input [3:0]i;
	input [1:0]s;
	output y;
	
	assign y = (s[1]==0)?((s[0]==0)?i[0]:i[1]):((s[0]==0)?i[2]:i[3]);
	
endmodule


//case statement
/*
module mux_4x1(i,s,y);
input [3:0]i;
input [1:0]s;
output reg y;

always@(*) begin
	case(s)
		2'b00 : y=i[0];
		2'b01 : y=i[1];
		2'b10 : y=i[2];
		2'b11 : y=i[3];
	endcase
	end
endmodule
*/

//if-else
/*
module mux_4x1(i,s,y);
input [3:0]i;
input [1:0]s;
output reg y;

always@(*) begin
	if(s==2'b00) y=i[0];
	else if(s==2'b01) y=i[1];
	else if(s==2'b10) y=i[2];
	else y=i[3];
end
endmodule
*/
