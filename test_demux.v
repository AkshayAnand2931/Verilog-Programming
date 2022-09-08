module tb;
    reg [7:0]inp;
    reg [2:0]sel;
    wire o;
    demux f1(inp[7],inp[6],inp[5],inp[4],inp[3],inp[2],inp[1],inp[0],sel[2],sel[1],sel[0],o);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb);
    end

    initial begin
        $monitor("%b %b %b %b %b %b %b %b %b %b ",inp[7],inp[6],inp[5],inp[4],inp[3],inp[2],inp[1],inp[0],sel,o);

        inp = 8'b01010101;
        sel = 3'b000;
        #10
        sel = 3'b001;
        #10
        sel = 3'b010;
        #10
        sel = 3'b011;
        #10
        sel = 3'b100;
        #10
        sel = 3'b101;
        #10
        sel = 3'b110;
        #10
        sel = 3'b111;
        
    end
endmodule