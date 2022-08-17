module and1(a,b,c,d);
    input wire a,b;
    output wire c,d;
    assign c = a & b;
    assign d = a | b;
endmodule