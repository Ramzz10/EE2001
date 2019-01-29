module t3(a,b,s,sum2,cout);

input [3:0] a,b;
input s;
wire [3:0] c;
wire [3:0] sum,ca,ca2;
wire cout1;
output cout;
output [3:0]sum2;

scomp s0(s,b[0],c[0]);
scomp s1(s,b[1],c[1]);
scomp s2(s,b[2],c[2]);
scomp s3(s,b[3],c[3]);

ha b1( (~s) ,c[0],sum[0],ca[1]);
fa b2((s&~s),c[1],ca[1],sum[1],ca[2]);
fa b3((s&~s),c[2],ca[2],sum[2],ca[3]);
fa b4((s&~s),c[3],ca[3],sum[3],cout1);

ha q1(sum[0],a[0],sum2[0],ca2[1]);
fa q2(sum[1],a[1],ca2[1],sum2[1],ca2[2]);
fa q3(sum[2],a[2],ca2[2],sum2[2],ca2[3]);
fa q4(sum[3],a[3],ca2[3],sum2[3],cout);

endmodule
