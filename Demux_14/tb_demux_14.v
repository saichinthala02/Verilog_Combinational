`include "demux_14.v"
module top;
    reg d;
    reg [1:0] sel;
    wire y0, y1, y2, y3;

    demux1to4 uut(d, sel, y0, y1, y2, y3);

    initial begin
        $monitor("d=%b sel=%b => y0=%b y1=%b y2=%b y3=%b", d, sel, y0, y1, y2, y3);
        d = 1; sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;
        d = 0; sel = 2'b11; #10;
        $finish;
    end
endmodule

/* Output:-
# Start time: 11:47:24 on Oct 04,2025
# Loading work.top
# Loading work.demux1to4
# d=1 sel=00 => y0=1 y1=0 y2=0 y3=0
# d=1 sel=01 => y0=0 y1=1 y2=0 y3=0
# d=1 sel=10 => y0=0 y1=0 y2=1 y3=0
# d=1 sel=11 => y0=0 y1=0 y2=0 y3=1
# d=0 sel=11 => y0=0 y1=0 y2=0 y3=0
*/

