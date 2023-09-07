`timescale 1ns/100ps

module tb_adder_8_bit();
wire [7:0] S;
wire C;

reg [7:0] A,B;
reg Cin;

adder_8_bit dut(S,C,A,B,Cin);

initial begin
   A = 8'd255;B = 8'd255; Cin = 1'b1;
#5 A = 8'd64;B = 8'd102; Cin = 1'b0;
#5 A = 8'd57;B = 8'd86; Cin = 1'b0;
#5 A = 8'd46;B = 8'd177; Cin = 1'b1;
#5 A = 8'd173;B = 8'd27; Cin = 1'b1;
#5 A = 8'd200;B = 8'd21; Cin = 1'b1;
#5 A = 8'd12;B = 8'd54; Cin = 1'b0;
#5 A = 8'd224;B = 8'd77; Cin = 1'b1;
#5 A = 8'd157;B = 8'd66; Cin = 1'b0;
end

initial begin
$monitor($time," A=%d,B=%d,C=%b,S=%d,C=%b",A,B,Cin,S,C);
end

endmodule