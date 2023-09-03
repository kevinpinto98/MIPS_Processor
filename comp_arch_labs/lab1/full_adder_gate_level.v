module full_adder_gate_level(sum,cout,a,b,cin);
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
