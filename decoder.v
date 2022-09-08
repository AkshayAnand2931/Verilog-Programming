module decoder2(e,a,b,d0,d1,d2,d3);
    input wire e,a,b;
    output wire d0,d1,d2,d3;

    assign d0 = e&(~a)&(~b);
    assign d1 = e&(~a)&(b);
    assign d2 = e&(a)&(~b);
    assign d3 = e&(a)&(b);
endmodule

module  decoder3(e,a,b,c,d0,d1,d2,d3,d4,d5,d6,d7);
    input wire e,a,b,c;
    wire en1,en2;
    output wire d0,d1,d2,d3,d4,d5,d6,d7;

    assign en1 = e & (~a);
    assign en2 = e & a;
    decoder2 f1(en1,b,c,d0,d1,d2,d3);
    decoder2 f2(en2,b,c,d4,d5,d6,d7);
        
endmodule