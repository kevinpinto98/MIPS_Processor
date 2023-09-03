module one_bit_adder(sum,cout,a,b,cin);
output sum,cout;
input a,b,cin;

wire w1,w2;

//Sum
xor(w1,a,b);
xor(sum,w1,cin);

//Carry
and(w2,a,b);
and(w3,w1,cin);
or(cout,w2,w3);
endmodule

module four_bit_adder(Sum,Cout,A,B,Cin);
input [3:0] A,B;
input Cin;
output [3:0] Sum;
output Cout;

wire c1,c2,c3;

one_bit_adder adder1(Sum[0],C1,A[0],B[0],Cin);
one_bit_adder adder2(Sum[1],C2,A[1],B[1],C1);
one_bit_adder adder3(Sum[2],C3,A[2],B[2],C2);
one_bit_adder adder4(Sum[3],Cout,A[3],B[3],C3);
endmodule