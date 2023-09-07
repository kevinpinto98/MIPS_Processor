module DECODER(d0,d1,d2,d3,d4,d5,d6,d7,
                x,y,z);
output d0,d1,d2,d3,d4,d5,d6,d7;
input x,y,z;

wire not_x, not_y, not_z;

not n1(not_x,x);
not n2(not_y,y);
not n3(not_z,z);

and a1(d0,not_x,not_y,not_z);
and a2(d1,not_x,not_y,z);
and a3(d2,not_x,y,not_z);
and a4(d3,not_x,y,z);
and a5(d4,x,not_y,not_z);
and a6(d5,x,not_y,z);
and a7(d6,x,y,not_z);
and a8(d7,x,y,z);

endmodule