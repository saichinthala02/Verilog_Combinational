// Implementation of 8x1 MUX

//Dataflow Model
/*
module mux_8x1(i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0,y);
input i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0;
output y;
assign y = (~s2&~s1&~s0&i0)|(~s2&~s1&s0&i1)|(~s2&s1&~s0&i2)|(~s2&s1&s0&i3)|(s2&~s1&~s0&i4)|(s2&~s1&s0&i5)|(s2&s1&~s0&i6)|(s2&s1&s0&i7);
endmodule
*/

//Behavioural Model
/*
module mux_8x1(i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0,y);
input i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0;
output reg y;
always@(*)begin
	y=(~s2&~s1&~s0&i0)|(~s2&~s1&s0&i1)|(~s2&s1&~s0&i2)|(~s2&s1&s0&i3)|(s2&~s1&~s0&i4)|(s2&~s1&s0&i5)|(s2&s1&~s0&i6)|(s2&s1&s0&i7);
	end
endmodule
*/

//Structural Model
module mux_8x1(i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0,y);
input i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0;
output y;
wire s2bar,s1bar,s0bar,a0,a1,a2,a3,a4,a5,a6,a7;

not g1(s2bar,s2);
not g2(s1bar,s1);
not g3(s0bar,s0);

and g4(a0,s2bar,s1bar,s0bar,i0);
and g5(a1,s2bar,s1bar,s0,i1);
and g6(a2,s2bar,s1,s0bar,i2);
and g7(a3,s2bar,s1,s0,i3);
and g8(a4,s2,s1bar,s0bar,i4);
and g9(a5,s2,s1bar,s0,i5);
and g10(a6,s2,s1,s0bar,i6);
and g11(a7,s2,s1,s0,i7);

or g12(y,a0,a1,a2,a3,a4,a5,a6,a7);
endmodule
