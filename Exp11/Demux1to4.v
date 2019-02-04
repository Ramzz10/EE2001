module demux1_beh(I,s,out);
input I;
input [1:0] s;
reg [3:0] wi;
output [3:0] out;
assign wi[0]=0;

always@(I or s or wi)
begin
if(s==0)
  wi[0]=I;
else if(s==1)
  wi[1]=I;
else if(s==2)
  wi[2]=I;
else if(s==3)
  wi[3]=I;
end

assign out = wi;

endmodule

//module demux4_dat(I,s,out);
//input [3:0]I;
//input [1:0]s;
//output out;

//assign out = (s==0)?I[0]:
            // (s==1)?I[1]:
            // (s==2)?I[2]:
             //(s==3)?I[3]:1'bx;

//endmodule
