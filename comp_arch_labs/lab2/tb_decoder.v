`timescale 1ns/100ps

module tb_decoder();

wire d0,d1,d2,d3,d4,d5,d6,d7;
reg x,y,z;

DECODER dut(d0,d1,d2,d3,d4,d5,d6,d7,x,y,z);

initial begin
#0 x=1'b0;y=1'b0;z=1'b0;
#4 x=1'b1;y=1'b0;z=1'b0;
#4 x=1'b0;y=1'b1;z=1'b0;
#4 x=1'b1;y=1'b1;z=1'b0;
#4 x=1'b0;y=1'b0;z=1'b1;
#4 x=1'b1;y=1'b0;z=1'b1;
#4 x=1'b0;y=1'b1;z=1'b1;
#4 x=1'b1;y=1'b1;z=1'b1;
end

initial begin
$monitor($time," x=%b,y=%b,z=%b,d0=%b,d1=%b,d2=%b,d3=%b,d4=%b,d5=%b,d6=%b,d7=%b",x,y,z,d0,d1,d2,d3,d4,d5,d6,d7);
end

endmodule