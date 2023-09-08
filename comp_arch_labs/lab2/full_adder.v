module FULLADDER(S,Cout,
                 A,B,Cin);
output reg S, Cout;
input A,B,Cin;

always @(A or B or Cin) begin
S = A ^ B ^ Cin;
Cout = (A & B) | (Cin & (A ^ B));
end

endmodule
