`include "adder_8_bit.v"

module adder_32_bit(S,C,A,B,Cin);
output [31:0] S;
output C;

input [31:0] A,B;
input Cin;

wire C0,C1,C2;

adder_8_bit add1(S[7:0],C0,A[7:0],B[7:0],Cin);
adder_8_bit add2(S[15:8],C1,A[15:8],B[15:8],C0);
adder_8_bit add3(S[23:16],C2,A[23:16],B[23:16],C1);
adder_8_bit add4(S[31:24],C,A[31:24],B[31:24],C2);

endmodule