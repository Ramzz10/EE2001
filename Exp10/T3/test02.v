module test_four_bit_adder;                 //test bench module                            //outputs from full adder
reg [3:0] a,b;
wire [3:0]sum2;
wire cout;                    //inputs to the full adder adder module
t3 DUT(a,b,sum2,cout);           //instantiate the device under test (5 bit adder)
initial
begin
$dumpfile("testfive.vcd");
$dumpvars(0,test_four_bit_adder);
$monitor("At time = %t,a = %b,b = %b,output = %b,cout = %b",$time,a,b,sum2,cout);
#10 a = 4'b0001; b = 4'b0001;
#10 $finish;
end
endmodule
