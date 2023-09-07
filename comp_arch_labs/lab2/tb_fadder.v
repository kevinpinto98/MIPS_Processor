`timescale  1ns/100ps

module tb_fadder();

wire S,C;
reg x,y,z;

FADDER dut(S,C,x,y,z);

initial
begin
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
$monitor($time," x=%b,y=%b,z=%b,s=%b,c=%b",x,y,z,S,C);
end

endmodule