module upcounter_testbench();
reg clk, reset, x;
wire [3:0] counter;

up_counter dut(x, clk, reset, counter);
initial begin
$dumpfile("test_add.vcd");
$dumpvars(0,upcounter_testbench);

$monitor( "At t=%t, counter=%b,x = %b , reset = %b" , $time ,counter,x,reset);
clk=0;
end
initial begin
x=1;
reset=1;
#20;reset=0;
#20;x=0;
#20;x=1;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;
#5;clk = ~clk;

end
endmodule
