module test_five_bit_adder;                 //test bench module
wire [4:0] s,c;
wire cout;                            //outputs from full adder
reg [4:0] a,b;                        //inputs to the full adder adder module
five_bit DUT(a,b,c,s,cout);           //instantiate the device under test (5 bit adder)
initial
begin
$dumpfile("testfive.vcd");
$dumpvars(0,test_five_bit_adder);
$monitor("At time = %t,a = %b,b = %b,cin = %b,sum = %b%b",$time,a,b,c,cout,s);
#10 a = 4'b1001; b = 4'b1001;
#10 $finish;
end
endmodule
