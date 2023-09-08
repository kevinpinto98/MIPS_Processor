`timescale 1ns/100ps

module tb_adder_32_bit();
wire [31:0] S;
wire C;

reg [31:0] A,B;
reg Cin;

adder_32_bit dut(S,C,A,B,Cin);

initial begin
   A = 32'd255;B = 32'd255; Cin = 1'b1;
#5 A = 32'd64;B = 32'd102; Cin = 1'b0;
#5 A = 32'd57;B = 32'd86; Cin = 1'b0;
#5 A = 32'd46;B = 32'd177; Cin = 1'b1;
#5 A = 32'd173;B = 32'd27; Cin = 1'b1;
#5 A = 32'd200;B = 32'd21; Cin = 1'b1;
#5 A = 32'd12;B = 32'd54; Cin = 1'b0;
#5 A = 32'd224;B = 32'd77; Cin = 1'b1;
#5 A = 32'd157;B = 32'd66; Cin = 1'b0;
end

initial begin
$monitor($time," A=%b,B=%b,C=%b,S=%d,C=%b",A,B,Cin,S,C);
end

endmodule