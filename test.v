module tb;
    reg [3:0]a,b;
    reg c;
    wire [3:0]d,car;
    bin_adder a1(a,b,c,d,car);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb);
    end
    initial begin
        #10
        $monitor(a[3],a[2],a[1],a[0]," + ",b[3],b[2],b[1],b[0]," = ",car[3],d[3],d[2],d[1],d[0]);
        a = 4'b1011;
        b = 4'b0011;
        c = 1'b0;
       
    end
endmodule