module tb();
    reg i0,i1,cin;
    reg [1:0]op;
    wire y;
    wire cout;
    alu1 f1(i0,i1,cin,op,y,cout);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb);
    end
    initial begin
        $monitor("%b %b %b %b %b %b",i0,i1,op,cin,cout,y);
        i0 = 1'b1;
        i1 = 1'b1;
        op = 2'b00;
        cin = op[0];
        #10
        op = 2'b01;
        cin = op[0];
        #10
        op = 2'b10;
        cin = op[0];
        #10
        op = 2'b11;
        cin = op[0];
       
    end
endmodule