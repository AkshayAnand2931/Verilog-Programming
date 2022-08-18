module tb;
    reg a;
    reg b;
    reg c;
    wire x,y;
    fulladder f1(a,b,c,x,y);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb);
    end
    initial begin
        $monitor(a,b,c,x,y);
        a = 1'b0;
        b = 1'b0;
        c = 1'b0;
        #10
        a = 1'b0;
        b = 1'b0;
        c = 1'b1;
        #10
        a = 1'b0;
        b = 1'b1;
        c = 1'b0;
        #10
        a = 1'b0;
        b = 1'b1;
        c = 1'b1;
        #10
        a = 1'b1;
        b = 1'b0;
        c = 1'b0;
        #10
        a = 1'b1;
        b = 1'b0;
        c = 1'b1;
        #10
        a = 1'b1;
        b = 1'b1;
        c = 1'b0;
        #10
        a = 1'b1;
        b = 1'b1;
        c = 1'b1;
    end
endmodule