module mux4(I,s,out);
input [3:0]I;
input [1:0]s;
output out;
reg out;

always @(I or out)
begin
if(s==0)
  out=I[0];
else if(s==1)
      out=I[1];
else if(s==2)
      out=I[2];
else if(s==3)
      out=I[3];
end

endmodule
