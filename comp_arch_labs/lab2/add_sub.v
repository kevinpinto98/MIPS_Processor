`include "full_adder.v"
module ADDSUB(S,C,V,
              A,B,M);
output [3:0] S;
output C, V;

input [3:0] A, B;
input M;

wire B0_final;
wire B1_final;
wire B2_final;
wire B3_final;

assign B0_final = M ^ B[0];
assign B1_final = M ^ B[1];
assign B2_final = M ^ B[2];
assign B3_final = M ^ B[3];

wire C1, C2, C3;

FULLADDER FA1(S[0],C1,A[0],B0_final,M);
FULLADDER FA2(S[1],C2,A[1],B1_final,C1);
FULLADDER FA3(S[2],C3,A[2],B2_final,C2);
FULLADDER FA4(S[3],C,A[3],B3_final,C3);

assign V = C ^ C3;

endmodule