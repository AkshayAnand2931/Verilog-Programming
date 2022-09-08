module tb();
    reg [15:0]i0,i1;
    reg [1:0]op;
    wire [15:0]y;
    wire cout;
    alu16 f1(i0,i1,op,y,cout);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb);
    end
    initial begin
        $monitor("%b %b %b %b %b",i0,i1,op,cout,y);
        i0 = 16'b1111000011110000;
        i1 = 16'b0000111111110000;
        op = 2'b00;
        #10
        op = 2'b01;
        #10
        op = 2'b10;
        #10
        op = 2'b11;
    end
endmodule