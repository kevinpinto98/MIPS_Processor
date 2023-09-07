`include "adder_8_bit.v"

module adder_32_bit(S,C,A,B,Cin);
output [31:0] S;
output C;

input [31:0] A,B;
input Cin;

wire C0,C1,C2;

adder_8_bit add1([7:0]S,C0,[7:0]A,[7:0]B,Cin);
adder_8_bit add2([15:8]S,C1,[15:8]A,[15:8]B,C0);
adder_8_bit add3([23:16]S,C2,[23:16]A,[23:16]B,C1);
adder_8_bit add4([31:24]S,C,[31:24]A,[31:24]B,C2);

endmodule