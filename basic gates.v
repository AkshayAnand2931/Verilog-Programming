module and1(a,b,c);
    input wire a,b;
    output wire c;
    assign c = a & b;
endmodule

module or1(a,b,c);
    input wire a,b;
    output wire c;
    assign c = a | b;
endmodule

module not1(a,c);
    input wire a;
    output wire c;
    assign c = ~a;
endmodule