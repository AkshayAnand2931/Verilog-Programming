module test;

    reg[0:7] a,b;
    wire[0:7] o;

    prefix_adder pref(a,b,o);

    initial begin
        $dumpfile("dump.vcd"); 
        $dumpvars(0, test);
    end

    initial begin
        a [0:7] = 8'b00000000; //0
	    b [0:7] = 8'b01000001; //65
	    #5
	    a [0:7] = 8'b01100100; //100
	    b [0:7] = 8'b00011000; //24
        #5
        a[0:7] = 8'b01010101;
        b[0:7] = 8'b10101010;
        #5;
    end

endmodule