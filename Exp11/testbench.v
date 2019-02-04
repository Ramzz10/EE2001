module test_mux;             //test bench module
reg [3:0]I;
red [1:0]s;
mux4 DUT(I,s,out);
initial
begin
$dumpfile("test.vcd");
$dumpvars(0,test_mux);
$monitor("At time = %t,I = %b,s = %b",$time,I,s);
a=1;b=1;                    //t=0
#10 I=4'b1000; s=2'b00;     //t=10
#10 I=4'b0100; s=2'01;      //t=20
#10 $finish;
end
endmodule
