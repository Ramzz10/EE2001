module test_fa;             //test bench module
wire s,cout;                   //outputs from half adder
reg a,b,c;                    //inputs to the half adder module
fa_data DUT(a,b,c,s,cout); //instantiate the device under test (full adder)
initial
begin
$dumpfile("testfadd.vcd");
$dumpvars(0,test_fa);
$monitor("At time = %t,a = %b,b = %b,cin = %b,s = %b,cout = %b",$time,a,b,c,s,cout);
#10 a = 0; b = 0; c = 0;
#10 a = 0; b = 0; c = 1;
#10 a = 0; b = 1; c = 0;
#10 a = 0; b = 1; c = 1;
#10 a = 1; b = 0; c = 0;
#10 a = 1; b = 0; c = 1;
#10 a = 1; b = 1; c = 0;
#10 a = 1; b = 1; c = 1;
#10 $finish;
end
endmodule
