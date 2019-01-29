module t3(a,b,s,sum2,cout);

input [4:0] a;
input [3:0] b;
input s;
wire [4:0] tmp;
wire [4:0] c,sum;
output cout;
output [4:0] sum2;

comp s0(s,b[0],c[0]);
comp s1(s,b[1],c[1]);
comp s2(s,b[2],c[2]);
comp s3(s,b[3],c[3]);
assign c[4] = c[3];
assign a[4] = a[3];

assign tmp[0]=~s;
assign tmp[1]=0;
assign tmp[2]=0;
assign tmp[3]=0;
assign tmp[4]=0;



five_bit fb1(c,tmp,sum,cout);
assign sum[4] = cout;
five_bit fb2(sum,a,sum2,cout);


endmodule
