module test_mux;             //test bench module
reg [3:0]I;
reg [1:0]s;
output out1,out2;
mux4_dat DUT(I,s,out2);
mux4_beh DUT1(I,s,out1);
initial
begin
$dumpfile("test.vcd");
$dumpvars(0,test_mux);
$monitor("At time = %t,I = %b,s = %b,I[0] = %b,I[1] = %b,I[2] = %b,I[3] = %b,out_beh = %b,out_dat = %b" ,$time,I,s,I[0],I[1],I[2],I[3],out1,out2);
I=4'b1000; s=2'b00;                    //t=0
#10 I=4'b0100; s=2'b10;     //t=10
#10 I=4'b0100; s=2'b01;      //t=20
#10 $finish;
end
endmodule
