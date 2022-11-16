module tb;
    reg a,b;
    wire c,d,e;

    and1 a1(a,b,c);
    or1 o1(a,b,d);
    not1 n1(a,e);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb);
    end

    initial begin
        $monitor(a,b,c,d,e);
        a = 1'b0;
        b = 1'b0;

        #10
        a = 1'b0;
        b = 1'b1;

        #10
        a = 1'b1;
        b = 1'b0;

        #10
        a = 1'b1;
        b = 1'b1;
       
    end
endmodule