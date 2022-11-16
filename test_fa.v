module tb;
    reg a,b,cin;
    wire s,cy;

    fulladder f1(a,b,cin,s,cy);
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb);
    end

    initial begin
        $monitor(a,b,cin,s,cy);
        a = 1'b0;
        b = 1'b0;
        cin = 1'b0;

        #10
        a = 1'b0;
        b = 1'b0;
        cin = 1'b1;

        #10
        a = 1'b0;
        b = 1'b1;
        cin = 1'b0;

        #10
        a = 1'b0;
        b = 1'b1;
        cin = 1'b1;

        #10
        a = 1'b1;
        b = 1'b0;
        cin = 1'b0;

        #10
        a = 1'b1;
        b = 1'b0;
        cin = 1'b1;

        #10
        a = 1'b1;
        b = 1'b1;
        cin = 1'b0;

        #10
        a = 1'b1;
        b = 1'b1;
        cin = 1'b1;
    end
endmodule;