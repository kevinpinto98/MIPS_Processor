`include "fadder.v"

module adder_8_bit(S,C,A,B,Cin);
output [7:0] S;
output C;

input [7:0] A,B;
input Cin;

wire C0,C1,C2,C3,C4,C5,C6;

FADDER F1(S[0],C0,A[0],B[0],Cin);
FADDER F2(S[1],C1,A[1],B[1],C0);
FADDER F3(S[2],C2,A[2],B[2],C1);
FADDER F4(S[3],C3,A[3],B[3],C2);
FADDER F5(S[4],C4,A[4],B[4],C3);
FADDER F6(S[5],C5,A[5],B[5],C4);
FADDER F7(S[6],C6,A[6],B[6],C5);
FADDER F8(S[7],C,A[7],B[7],C6);

endmodule
