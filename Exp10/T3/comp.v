module comp(s,a,out);

input s,a;
output out;

assign out = ~(s ^ a);


endmodule
