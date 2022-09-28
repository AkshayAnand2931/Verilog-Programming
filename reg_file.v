`include "lib.v"

module arrr(clk,reset,load,i,out);
    input wire [15:0]i;
    input wire reset,load,clk;
    output wire [15:0]out;

    dfrl d1(clk,reset,load,i[0],out[0]);
    dfrl d2(clk,reset,load,i[1],out[1]);
    dfrl d3(clk,reset,load,i[2],out[2]);
    dfrl d4(clk,reset,load,i[3],out[3]);
    dfrl d5(clk,reset,load,i[4],out[4]);
    dfrl d6(clk,reset,load,i[5],out[5]);
    dfrl d7(clk,reset,load,i[6],out[6]);
    dfrl d8(clk,reset,load,i[7],out[7]);
    dfrl d9(clk,reset,load,i[8],out[8]);
    dfrl d10(clk,reset,load,i[9],out[9]);
    dfrl d11(clk,reset,load,i[10],out[10]);
    dfrl d12(clk,reset,load,i[11],out[11]);
    dfrl d13(clk,reset,load,i[12],out[12]);
    dfrl d14(clk,reset,load,i[13],out[13]);
    dfrl d15(clk,reset,load,i[14],out[14]);
    dfrl d16(clk,reset,load,i[15],out[15]);  

endmodule

module arrm(i0,i1,i2,i3,i4,i5,i6,i7,addr,o);
    input wire [15:0]i0,i1,i2,i3,i4,i5,i6,i7;
    input wire [2:0]addr;
    output wire [15:0]o;

    mux8 d1({i0[0],i1[0],i2[0],i3[0],i4[0],i5[0],i6[0],i7[0]},addr[2],addr[1],addr[0],o[0]);
    mux8 d2({i0[1],i1[1],i2[1],i3[1],i4[1],i5[1],i6[1],i7[1]},addr[2],addr[1],addr[0],o[1]);
    mux8 d3({i0[2],i1[2],i2[2],i3[2],i4[2],i5[2],i6[2],i7[2]},addr[2],addr[1],addr[0],o[2]);
    mux8 d4({i0[3],i1[3],i2[3],i3[3],i4[3],i5[3],i6[3],i7[3]},addr[2],addr[1],addr[0],o[3]);
    mux8 d5({i0[4],i1[4],i2[4],i3[4],i4[4],i5[4],i6[4],i7[4]},addr[2],addr[1],addr[0],o[4]);
    mux8 d6({i0[5],i1[5],i2[5],i3[5],i4[5],i5[5],i6[5],i7[5]},addr[2],addr[1],addr[0],o[5]);
    mux8 d7({i0[6],i1[6],i2[6],i3[6],i4[6],i5[6],i6[6],i7[6]},addr[2],addr[1],addr[0],o[6]);
    mux8 d8({i0[7],i1[7],i2[7],i3[7],i4[7],i5[7],i6[7],i7[7]},addr[2],addr[1],addr[0],o[7]);
    mux8 d9({i0[8],i1[8],i2[8],i3[8],i4[8],i5[8],i6[8],i7[8]},addr[2],addr[1],addr[0],o[8]);
    mux8 d10({i0[9],i1[9],i2[9],i3[9],i4[9],i5[9],i6[9],i7[9]},addr[2],addr[1],addr[0],o[9]);
    mux8 d11({i0[10],i1[10],i2[10],i3[10],i4[10],i5[10],i6[10],i7[10]},addr[2],addr[1],addr[0],o[10]);
    mux8 d12({i0[11],i1[11],i2[11],i3[11],i4[11],i5[11],i6[11],i7[11]},addr[2],addr[1],addr[0],o[11]);
    mux8 d13({i0[12],i1[12],i2[12],i3[12],i4[12],i5[12],i6[12],i7[12]},addr[2],addr[1],addr[0],o[12]);
    mux8 d14({i0[13],i1[13],i2[13],i3[13],i4[13],i5[13],i6[13],i7[13]},addr[2],addr[1],addr[0],o[13]);
    mux8 d15({i0[14],i1[14],i2[14],i3[14],i4[14],i5[14],i6[14],i7[14]},addr[2],addr[1],addr[0],o[14]);
    mux8 d16({i0[15],i1[15],i2[15],i3[15],i4[15],i5[15],i6[15],i7[15]},addr[2],addr[1],addr[0],o[15]);

endmodule
module reg_file (input wire clk, reset, wr, input wire [2:0] rd_addr_a, rd_addr_b, wr_addr, input wire [15:0] d_in, output wire [15:0] d_out_a, d_out_b);

    wire [15:0]int0,int1,int2,int3,int4,int5,int6,int7;
    wire [0:7]load;

    demux8 d1(wr,wr_addr[2],wr_addr[1],wr_addr[0],load);

    arrr r1(clk,reset,load[0],d_in,int0);
    arrr r2(clk,reset,load[1],d_in,int1);
    arrr r3(clk,reset,load[2],d_in,int2);
    arrr r4(clk,reset,load[3],d_in,int3);
    arrr r5(clk,reset,load[4],d_in,int4);
    arrr r6(clk,reset,load[5],d_in,int5);
    arrr r7(clk,reset,load[6],d_in,int6);
    arrr r8(clk,reset,load[7],d_in,int7);

    arrm m1(int0,int1,int2,int3,int4,int5,int6,int7,rd_addr_a,d_out_a);
    arrm m2(int0,int1,int2,int3,int4,int5,int6,int7,rd_addr_b,d_out_b);
   
endmodule