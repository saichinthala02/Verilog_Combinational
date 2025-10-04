// Implementation of 4x1 mux

//Data flow Model
/*
module mux_4x1(i0,i1,i2,i3,s1,s0,y);
input i0,i1,i2,i3,s1,s0;
output y;
assign y = (~s1&~s0&i0) | (~s1&s0&i1) | (s1&~s0&i2) | (s1&s0&i3);
endmodule
*/

//Behavioural Model
/*
module mux_4x1(i0,i1,i2,i3,s1,s0,y);
input i0,i1,i2,i3,s1,s0;
output reg y;
always@(*)begin
	y = (~s1&~s0&i0) | (~s1&s0&i1) | (s1&~s0&i2) | (s1&s0&i3);
	end
endmodule
*/

//structural model
module mux_4x1(i0,i1,i2,i3,s1,s0,y);
input i0,i1,i2,i3,s1,s0;
output y;

wire s1bar,s0bar,a1,a2,a3,a4;
not g1(s1bar,s1);
not g2(s0bar,s0);
and g3(a1,s1bar,s0bar,i0);
and g4(a2,s1bar,s0,i1);
and g5(a3,s1,s0bar,i2);
and g6(a4,s1,s0,i3);
or g7(y,a1,a2,a3,a4);

endmodule

