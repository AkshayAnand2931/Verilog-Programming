`include "mux.v"
`include "bin_add.v"
module alu1(i0,i1,cin,op,y,cout);
    input wire i0,i1,cin;
    input wire [1:0]op;
    output wire y,cout;
    wire add1,and1,or1,gate1,mux1;

    xor1 f1(i1,cin,gate1);
    fulladder f2(i0,gate1,cin,add1,cout);
    and1 f3(i0,i1,and1);
    or1 f4(i0,i1,or1);
    mux2 f5(and1,or1,op[0],mux1);
    mux2 f6(mux1,add1,op[1],y);
endmodule

module alu16(i0,i1,op,y,cout);
    input wire [15:0]i0,i1;
    input wire [1:0]op;
    output wire [15:0]y;
    output wire cout;
    wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15;

    alu1 f1(i0[0],i1[0],op[0],op,y[0],w1);
    alu1 f2(i0[1],i1[1],w1,op,y[1],w2);
    alu1 f3(i0[2],i1[2],w2,op,y[2],w3);
    alu1 f4(i0[3],i1[3],w3,op,y[3],w4);
    alu1 f5(i0[4],i1[4],w4,op,y[4],w5);
    alu1 f6(i0[5],i1[5],w5,op,y[5],w6);
    alu1 f7(i0[6],i1[6],w6,op,y[6],w7);
    alu1 f8(i0[7],i1[7],w7,op,y[7],w8);
    alu1 f9(i0[8],i1[8],w8,op,y[8],w9);
    alu1 f10(i0[9],i1[9],w9,op,y[9],w10);
    alu1 f11(i0[10],i1[10],w10,op,y[10],w11);
    alu1 f12(i0[11],i1[11],w11,op,y[11],w12);
    alu1 f13(i0[12],i1[12],w12,op,y[12],w13);
    alu1 f14(i0[13],i1[13],w13,op,y[13],w14);
    alu1 f15(i0[14],i1[14],w14,op,y[14],w15);
    alu1 f16(i0[15],i1[15],w15,op,y[15],cout);
endmodule