module full_adder_data_flow(sum,cout,a,b,cin);
output sum,cout;
input a,b,cin;

assign {cout,sum} = a + b + cin;

endmodule
