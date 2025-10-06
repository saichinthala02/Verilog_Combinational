`include "demux_12.v"
module top;
    reg d, sel;
    wire y0, y1;

    demux1to2 uut(d, sel, y0, y1);

    initial begin
        $monitor("d=%b sel=%b => y0=%b y1=%b", d, sel, y0, y1);
        d = 0; sel = 0; #10;
        d = 1; sel = 0; #10;
        d = 1; sel = 1; #10;
        d = 0; sel = 1; #10;
        $finish;
    end
endmodule

/* Output:-
# Start time: 11:33:56 on Oct 04,2025
# Loading work.top
# Loading work.demux1to2
# d=0 sel=0 => y0=0 y1=0
# d=1 sel=0 => y0=1 y1=0
# d=1 sel=1 => y0=0 y1=1
# d=0 sel=1 => y0=0 y1=0
*/

