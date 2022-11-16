    `include "lib.v"

    module jk(clk,clear,j,k,out);
        input wire clk,clear,j,k;
        output wire out;
        dfr d1(clk,clear,((j&(~out))|((~k)&out)),out);
    endmodule

    module counter(clk,clear,load,count,i,cout,a);
        input wire [3:0]i;
        input wire clk,clear,load,count;
        output wire [3:0]a;
        output wire cout;
        wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;

        assign w1 = ~load;
        and2 a1(w1,count,w2);

        and2 a2(load,i[0],w3);
        and2 a3(load,~(i[0]),w4);
        or2 o1(w2,w3,w11);
        or2 o2(w2,w4,w12);
        jk j1(clk,clear,w11,w12,a[0]);

        and2 a4(load,i[1],w5);
        and2 a5(load,~(i[1]),w6);
        and a10(w2,a[0],w13);
        or2 o3(w13,w5,w14);
        or2 o4(w13,w6,w15);
        jk j2(clk,clear,w14,w15,a[1]);

        and2 a6(load,i[2],w7);
        and2 a7(load,~(i[2]),w8);
        and2 a11(w2,(a[0]&a[1]),w16);
        or2 o5(w7,w16,w17);
        or2 o6(w8,w16,w18);
        jk j3(clk,clear,w17,w18,a[2]);

        and2 a8(load,i[3],w9);
        and2 a9(load,~(i[3]),w10);
        and a12(w2,(a[0]&a[1]&a[2]),w19);
        or2 o7(w9,w19,w20);
        or2 o8(w10,w19,w21);
        jk j4(clk,clear,w20,w21,a[3]);

        assign cout = (a[0]&a[1]&a[2]&a[3]);
    endmodule