module max(a,b,out);
input [3:0] a,b;
reg [3:0] wi;
wire [3:0] sum,sum2,tmp;
output [3:0] out;
outpit cout;
s=1'b0;

comp s0(s,b[0],c[0]);
comp s1(s,b[1],c[1]);
comp s2(s,b[2],c[2]);
comp s3(s,b[3],c[3]);
assign tmp = {s&~s,s&~s,s&~s,~s};
four_bit fb1(c,tmp,sum,cout);
four_bit fb2(sum,a,sum2,cout);


assign out = wi;

endmodule
