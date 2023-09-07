`include "decoder.v"

module FADDER(S,C,x,y,z);

output S,C;
input x,y,z;

wire d0,d1,d2,d3,d4,d5,d6,d7;

DECODER dec(d0,d1,d2,d3,d4,d5,d6,d7,x,y,z);

assign S = d1 | d2 | d4 | d7;
assign C = d3 | d5 | d6 | d7;

endmodule