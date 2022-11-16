module tb;
reg D;
reg clk;
reg reset;
wire Q;

dflip d1(D,clk,reset,Q);

initial begin
    clk=0;
     forever #10 clk = ~clk;  
end 

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
end

initial begin 
    $monitor(clk,reset,D,Q);
    reset=1;
    D <= 0;
    #10;
    reset=0;
    D <= 1;
    #10;
    D <= 0;
    #10;
    D <= 1;
    #100 $finish;
end 
endmodule 