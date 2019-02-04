module max(a,b,out);
input [3:0] a,b;
reg [3:0] wi;
output [3:0] out;
always@(a or b or wi)
begin
if(a>b)
  wi=a;
else if (b>a)
  wi=b;
end

assign out = wi;

endmodule
