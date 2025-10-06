// Dataflow Model.
module demux1to2(
    input d,
    input sel,
    output y0, y1
);
    assign y0 = d & ~sel;
    assign y1 = d & sel;
endmodule



