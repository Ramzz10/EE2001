module test_five_bit_adder;                 //test bench module
wire [4:0] s,c;
wire cout;                            //outputs from full adder
reg [4:0] a,b;                        //inputs to the full adder adder module
five_bit DUT(a,b,c,s,cout);           //instantiate the device under test (5 bit adder)
initial
begin
$dumpfile("testfive.vcd");
$dumpvars(0,test_five_bit_adder);
$monitor("At time = %t,a = %b,b = %b,,sum = %b%b",$time,a,b,cout,s);
#10 a = 4'b0000; b = 4'b0000;
#10 a = 4'b0000; b = 4'b0001;
#10 a = 4'b0000; b = 4'b0010;
#10 a = 4'b0000; b = 4'b0011;
#10 a = 4'b0000; b = 4'b0100;
#10 a = 4'b0000; b = 4'b0101;
#10 a = 4'b0000; b = 4'b0110;
#10 a = 4'b0000; b = 4'b0111;
#10 a = 4'b0000; b = 4'b1000;
#10 a = 4'b0000; b = 4'b1001;
#10 a = 4'b0000; b = 4'b1010;
#10 a = 4'b0000; b = 4'b1011;
#10 a = 4'b0000; b = 4'b1100;
#10 a = 4'b0000; b = 4'b1101;
#10 a = 4'b0000; b = 4'b1110;
#10 a = 4'b0000; b = 4'b1111;
#10 a = 4'b0001; b = 4'b0000;
#10 a = 4'b0001; b = 4'b0001;
#10 a = 4'b0001; b = 4'b0010;
#10 a = 4'b0001; b = 4'b0011;
#10 a = 4'b0001; b = 4'b0100;
#10 a = 4'b0001; b = 4'b0101;
#10 a = 4'b0001; b = 4'b0110;
#10 a = 4'b0001; b = 4'b0111;
#10 a = 4'b0001; b = 4'b1000;
#10 a = 4'b0001; b = 4'b1001;
#10 a = 4'b0001; b = 4'b1010;
#10 a = 4'b0001; b = 4'b1011;
#10 a = 4'b0001; b = 4'b1100;
#10 a = 4'b0001; b = 4'b1101;
#10 a = 4'b0001; b = 4'b1110;
#10 a = 4'b0001; b = 4'b1111;
#10 a = 4'b0010; b = 4'b0000;
#10 a = 4'b0010; b = 4'b0001;
#10 a = 4'b0010; b = 4'b0010;
#10 a = 4'b0010; b = 4'b0011;
#10 a = 4'b0010; b = 4'b0100;
#10 a = 4'b0010; b = 4'b0101;
#10 a = 4'b0010; b = 4'b0110;
#10 a = 4'b0010; b = 4'b0111;
#10 a = 4'b0010; b = 4'b1000;
#10 a = 4'b0010; b = 4'b1001;
#10 a = 4'b0010; b = 4'b1010;
#10 a = 4'b0010; b = 4'b1011;
#10 a = 4'b0010; b = 4'b1100;
#10 a = 4'b0010; b = 4'b1101;
#10 a = 4'b0010; b = 4'b1110;
#10 a = 4'b0010; b = 4'b1111;
#10 a = 4'b0011; b = 4'b0000;
#10 a = 4'b0011; b = 4'b0001;
#10 a = 4'b0011; b = 4'b0010;
#10 a = 4'b0011; b = 4'b0011;
#10 a = 4'b0011; b = 4'b0100;
#10 a = 4'b0011; b = 4'b0101;
#10 a = 4'b0011; b = 4'b0110;
#10 a = 4'b0011; b = 4'b0111;
#10 a = 4'b0011; b = 4'b1000;
#10 a = 4'b0011; b = 4'b1001;
#10 a = 4'b0011; b = 4'b1010;
#10 a = 4'b0011; b = 4'b1011;
#10 a = 4'b0011; b = 4'b1100;
#10 a = 4'b0011; b = 4'b1101;
#10 a = 4'b0011; b = 4'b1110;
#10 a = 4'b0011; b = 4'b1111;
#10 a = 4'b0100; b = 4'b0000;
#10 a = 4'b0100; b = 4'b0001;
#10 a = 4'b0100; b = 4'b0010;
#10 a = 4'b0100; b = 4'b0011;
#10 a = 4'b0100; b = 4'b0100;
#10 a = 4'b0100; b = 4'b0101;
#10 a = 4'b0100; b = 4'b0110;
#10 a = 4'b0100; b = 4'b0111;
#10 a = 4'b0100; b = 4'b1000;
#10 a = 4'b0100; b = 4'b1001;
#10 a = 4'b0100; b = 4'b1010;
#10 a = 4'b0100; b = 4'b1011;
#10 a = 4'b0100; b = 4'b1100;
#10 a = 4'b0100; b = 4'b1101;
#10 a = 4'b0100; b = 4'b1110;
#10 a = 4'b0100; b = 4'b1111;
#10 a = 4'b0101; b = 4'b0000;
#10 a = 4'b0101; b = 4'b0001;
#10 a = 4'b0101; b = 4'b0010;
#10 a = 4'b0101; b = 4'b0011;
#10 a = 4'b0101; b = 4'b0100;
#10 a = 4'b0101; b = 4'b0101;
#10 a = 4'b0101; b = 4'b0110;
#10 a = 4'b0101; b = 4'b0111;
#10 a = 4'b0101; b = 4'b1000;
#10 a = 4'b0101; b = 4'b1001;
#10 a = 4'b0101; b = 4'b1010;
#10 a = 4'b0101; b = 4'b1011;
#10 a = 4'b0101; b = 4'b1100;
#10 a = 4'b0101; b = 4'b1101;
#10 a = 4'b0101; b = 4'b1110;
#10 a = 4'b0101; b = 4'b1111;
#10 a = 4'b0110; b = 4'b0000;
#10 a = 4'b0110; b = 4'b0001;
#10 a = 4'b0110; b = 4'b0010;
#10 a = 4'b0110; b = 4'b0011;
#10 a = 4'b0110; b = 4'b0100;
#10 a = 4'b0110; b = 4'b0101;
#10 a = 4'b0110; b = 4'b0110;
#10 a = 4'b0110; b = 4'b0111;
#10 a = 4'b0110; b = 4'b1000;
#10 a = 4'b0110; b = 4'b1001;
#10 a = 4'b0110; b = 4'b1010;
#10 a = 4'b0110; b = 4'b1011;
#10 a = 4'b0110; b = 4'b1100;
#10 a = 4'b0110; b = 4'b1101;
#10 a = 4'b0110; b = 4'b1110;
#10 a = 4'b0110; b = 4'b1111;
#10 a = 4'b0111; b = 4'b0000;
#10 a = 4'b0111; b = 4'b0001;
#10 a = 4'b0111; b = 4'b0010;
#10 a = 4'b0111; b = 4'b0011;
#10 a = 4'b0111; b = 4'b0100;
#10 a = 4'b0111; b = 4'b0101;
#10 a = 4'b0111; b = 4'b0110;
#10 a = 4'b0111; b = 4'b0111;
#10 a = 4'b0111; b = 4'b1000;
#10 a = 4'b0111; b = 4'b1001;
#10 a = 4'b0111; b = 4'b1010;
#10 a = 4'b0111; b = 4'b1011;
#10 a = 4'b0111; b = 4'b1100;
#10 a = 4'b0111; b = 4'b1101;
#10 a = 4'b0111; b = 4'b1110;
#10 a = 4'b0111; b = 4'b1111;
#10 a = 4'b1000; b = 4'b0000;
#10 a = 4'b1000; b = 4'b0001;
#10 a = 4'b1000; b = 4'b0010;
#10 a = 4'b1000; b = 4'b0011;
#10 a = 4'b1000; b = 4'b0100;
#10 a = 4'b1000; b = 4'b0101;
#10 a = 4'b1000; b = 4'b0110;
#10 a = 4'b1000; b = 4'b0111;
#10 a = 4'b1000; b = 4'b1000;
#10 a = 4'b1000; b = 4'b1001;
#10 a = 4'b1000; b = 4'b1010;
#10 a = 4'b1000; b = 4'b1011;
#10 a = 4'b1000; b = 4'b1100;
#10 a = 4'b1000; b = 4'b1101;
#10 a = 4'b1000; b = 4'b1110;
#10 a = 4'b1000; b = 4'b1111;
#10 a = 4'b1001; b = 4'b0000;
#10 a = 4'b1001; b = 4'b0001;
#10 a = 4'b1001; b = 4'b0010;
#10 a = 4'b1001; b = 4'b0011;
#10 a = 4'b1001; b = 4'b0100;
#10 a = 4'b1001; b = 4'b0101;
#10 a = 4'b1001; b = 4'b0110;
#10 a = 4'b1001; b = 4'b0111;
#10 a = 4'b1001; b = 4'b1000;
#10 a = 4'b1001; b = 4'b1001;
#10 a = 4'b1001; b = 4'b1010;
#10 a = 4'b1001; b = 4'b1011;
#10 a = 4'b1001; b = 4'b1100;
#10 a = 4'b1001; b = 4'b1101;
#10 a = 4'b1001; b = 4'b1110;
#10 a = 4'b1001; b = 4'b1111;
#10 a = 4'b1010; b = 4'b0000;
#10 a = 4'b1010; b = 4'b0001;
#10 a = 4'b1010; b = 4'b0010;
#10 a = 4'b1010; b = 4'b0011;
#10 a = 4'b1010; b = 4'b0100;
#10 a = 4'b1010; b = 4'b0101;
#10 a = 4'b1010; b = 4'b0110;
#10 a = 4'b1010; b = 4'b0111;
#10 a = 4'b1010; b = 4'b1000;
#10 a = 4'b1010; b = 4'b1001;
#10 a = 4'b1010; b = 4'b1010;
#10 a = 4'b1010; b = 4'b1011;
#10 a = 4'b1010; b = 4'b1100;
#10 a = 4'b1010; b = 4'b1101;
#10 a = 4'b1010; b = 4'b1110;
#10 a = 4'b1010; b = 4'b1111;
#10 a = 4'b1011; b = 4'b0000;
#10 a = 4'b1011; b = 4'b0001;
#10 a = 4'b1011; b = 4'b0010;
#10 a = 4'b1011; b = 4'b0011;
#10 a = 4'b1011; b = 4'b0100;
#10 a = 4'b1011; b = 4'b0101;
#10 a = 4'b1011; b = 4'b0110;
#10 a = 4'b1011; b = 4'b0111;
#10 a = 4'b1011; b = 4'b1000;
#10 a = 4'b1011; b = 4'b1001;
#10 a = 4'b1011; b = 4'b1010;
#10 a = 4'b1011; b = 4'b1011;
#10 a = 4'b1011; b = 4'b1100;
#10 a = 4'b1011; b = 4'b1101;
#10 a = 4'b1011; b = 4'b1110;
#10 a = 4'b1011; b = 4'b1111;
#10 a = 4'b1100; b = 4'b0000;
#10 a = 4'b1100; b = 4'b0001;
#10 a = 4'b1100; b = 4'b0010;
#10 a = 4'b1100; b = 4'b0011;
#10 a = 4'b1100; b = 4'b0100;
#10 a = 4'b1100; b = 4'b0101;
#10 a = 4'b1100; b = 4'b0110;
#10 a = 4'b1100; b = 4'b0111;
#10 a = 4'b1100; b = 4'b1000;
#10 a = 4'b1100; b = 4'b1001;
#10 a = 4'b1100; b = 4'b1010;
#10 a = 4'b1100; b = 4'b1011;
#10 a = 4'b1100; b = 4'b1100;
#10 a = 4'b1100; b = 4'b1101;
#10 a = 4'b1100; b = 4'b1110;
#10 a = 4'b1100; b = 4'b1111;
#10 a = 4'b1101; b = 4'b0000;
#10 a = 4'b1101; b = 4'b0001;
#10 a = 4'b1101; b = 4'b0010;
#10 a = 4'b1101; b = 4'b0011;
#10 a = 4'b1101; b = 4'b0100;
#10 a = 4'b1101; b = 4'b0101;
#10 a = 4'b1101; b = 4'b0110;
#10 a = 4'b1101; b = 4'b0111;
#10 a = 4'b1101; b = 4'b1000;
#10 a = 4'b1101; b = 4'b1001;
#10 a = 4'b1101; b = 4'b1010;
#10 a = 4'b1101; b = 4'b1011;
#10 a = 4'b1101; b = 4'b1100;
#10 a = 4'b1101; b = 4'b1101;
#10 a = 4'b1101; b = 4'b1110;
#10 a = 4'b1101; b = 4'b1111;
#10 a = 4'b1110; b = 4'b0000;
#10 a = 4'b1110; b = 4'b0001;
#10 a = 4'b1110; b = 4'b0010;
#10 a = 4'b1110; b = 4'b0011;
#10 a = 4'b1110; b = 4'b0100;
#10 a = 4'b1110; b = 4'b0101;
#10 a = 4'b1110; b = 4'b0110;
#10 a = 4'b1110; b = 4'b0111;
#10 a = 4'b1110; b = 4'b1000;
#10 a = 4'b1110; b = 4'b1001;
#10 a = 4'b1110; b = 4'b1010;
#10 a = 4'b1110; b = 4'b1011;
#10 a = 4'b1110; b = 4'b1100;
#10 a = 4'b1110; b = 4'b1101;
#10 a = 4'b1110; b = 4'b1110;
#10 a = 4'b1110; b = 4'b1111;
#10 a = 4'b1111; b = 4'b0000;
#10 a = 4'b1111; b = 4'b0001;
#10 a = 4'b1111; b = 4'b0010;
#10 a = 4'b1111; b = 4'b0011;
#10 a = 4'b1111; b = 4'b0100;
#10 a = 4'b1111; b = 4'b0101;
#10 a = 4'b1111; b = 4'b0110;
#10 a = 4'b1111; b = 4'b0111;
#10 a = 4'b1111; b = 4'b1000;
#10 a = 4'b1111; b = 4'b1001;
#10 a = 4'b1111; b = 4'b1010;
#10 a = 4'b1111; b = 4'b1011;
#10 a = 4'b1111; b = 4'b1100;
#10 a = 4'b1111; b = 4'b1101;
#10 a = 4'b1111; b = 4'b1110;
#10 a = 4'b1111; b = 4'b1111;

#10 $finish;
end
endmodule
