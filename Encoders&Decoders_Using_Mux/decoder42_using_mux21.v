//--> Imp  of mux 2x1
module mux2x1(i0, i1, sel, y);
    input i0, i1, sel;
    output y;
    assign y = (sel == 0) ? i0 : i1;
endmodule


//--> Decoder using mux
module decoder2x4(input a1, a0, output y0, y1, y2, y3);
    wire na1, na0;

    assign na1 = ~a1;
    assign na0 = ~a0;

    mux2x1 m0(.i0(na1), .i1(1'b0), .sel(a0), .y(y0));
    mux2x1 m1(.i0(1'b0), .i1(na1), .sel(a0), .y(y1));
    mux2x1 m2(.i0(a1), .i1(1'b0), .sel(a0), .y(y2));
    mux2x1 m3(.i0(1'b0), .i1(a1), .sel(a0), .y(y3));
endmodule

//--> Test Bench
module top;
    reg a1,a0;
    wire y0, y1, y2, y3;
    decoder2x4 dut(a1, a0, y0, y1, y2, y3);

    initial begin 
        $display("a1  a0  | y0  y1  y2  y3");
        a1=0; a0=0; #2 $display("%b   %b   | %b   %b   %b   %b",a1,a0,y0,y1,y2,y3);
        a1=0; a0=1; #2 $display("%b   %b   | %b   %b   %b   %b",a1,a0,y0,y1,y2,y3);
        a1=1; a0=0; #2 $display("%b   %b   | %b   %b   %b   %b",a1,a0,y0,y1,y2,y3);
        a1=1; a0=1; #2 $display("%b   %b   | %b   %b   %b   %b",a1,a0,y0,y1,y2,y3);
    end
endmodule


/* Output:-
# a1  a0  | y0  y1  y2  y3
# 0   0   | 1   0   0   0
# 0   1   | 0   1   0   0
# 1   0   | 0   0   1   0
# 1   1   | 0   0   0   1
*/
