module up_counter(input x,clk, reset, output[3:0] counter);
reg [1:0] counter_up;

always @(posedge clk or posedge reset)
begin
if(reset)
 counter_up <= 2'd0;
else if(x)
 counter_up <= counter_up + 2'd1;
else
 counter_up <= counter_up;
end
assign counter = counter_up;
endmodule
