module tb;
    reg e;
    reg [2:0]inp;
    wire d0,d1,d2,d3,d4,d5,d6,d7;
    decoder3 f1(e,inp[2],inp[1],inp[0],d0,d1,d2,d3,d4,d5,d6,d7);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb);
    end

    initial begin
        $monitor("%b%b %b %b %b %b %b %b %b %b",e,inp,d0,d1,d2,d3,d4,d5,d6,d7);

        e = 1'b0;
        inp = 3'b000;
        #10
        inp = 3'b001;
        #10
        inp = 3'b010;
        #10
        inp = 3'b011;
        #10
        inp = 3'b100;
        #10
        inp = 3'b101;
        #10
        inp = 3'b110;

        #10
        e = 1'b1;
        inp = 3'b000;
        #10
        inp = 3'b001;
        #10
        inp = 3'b010;
        #10
        inp = 3'b011;
        #10
        inp = 3'b100;
        #10
        inp = 3'b101;
        #10
        inp = 3'b110;
        #10
        inp = 3'b111;

    end
endmodule