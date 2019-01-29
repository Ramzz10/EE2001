module t3(a,b,s,sum2,cout);

input [4:0] a;
input [3:0] b;
input s;
wire [4:0] c;
wire [4:0] sum,ca,ca2;
wire cout1;
output cout;
output [4:0]sum2;

comp s0(s,b[0],c[0]);
comp s1(s,b[1],c[1]);
comp s2(s,b[2],c[2]);
comp s3(s,b[3],c[3]);

assign c[4] = c[3];
assign a[4] = a[3];



ha b1( (~s) ,c[0],sum[0],ca[1]);
fa b2((s&~s),c[1],ca[1],sum[1],ca[2]);
fa b3((s&~s),c[2],ca[2],sum[2],ca[3]);
fa b4((s&~s),c[3],ca[3],sum[3],ca[4]);
fa b5((s&~s),c[4],ca[4],sum[4],cout1);

five_bit fb1(sum,a,,sum2,cout);


endmodule
