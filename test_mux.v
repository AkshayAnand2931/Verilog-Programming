module tb();
    reg i0,i1,i2,i3,i4,i5,i6,i7;
    reg [2:0]s;
    wire y;
    mux8 f1(i0,i1,i2,i3,i4,i5,i6,i7,s,y);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb);   
    end

    initial begin
        $monitor("Inputs are %b %b %b %b %b %b %b %b, selection wire is %b, output is %b",i0,i1,i2,i3,i4,i5,i6,i7,s,y);
        i0 = 0;
        i1 = 1;
        i2 = 0;
        i3 = 1;
        i4 = 0;
        i5 = 1;
        i6 = 0;
        i7 = 1;

        s = 3'b000;
        #10
        s = 3'b001;
        #10
        s = 3'b010;
        #10
        s = 3'b011;
        #10
        s = 3'b100;
        #10
        s = 3'b101;
        #10
        s = 3'b110;
        #10
        s = 3'b111;

    end
endmodule