`include "lib.v"

module prop_gen(a,b,p,g);

    input wire a,b;
    output wire p,g;

    or2 prop(a,b,p);
    and2 gen(a,b,g);

endmodule

module pg_block(p0,g0,p1,g1,p,g);

    input wire p0,g0,p1,g1;
    wire a;
    output wire p,g;

    and2 a1(p0,g1,a);
    and2 gen(p0,p1,p);
    or2 prop(g0,a,g);

endmodule

module sum_block(a,b,c,o);

    input wire a,b,c;
    output wire o;

    wire temp;

    xor2 x1(a,b,temp);
    xor2 x2(temp,c,o);

endmodule

module prefix_adder(a,b,o);

    input wire [7:0]a,b;
    wire [7:0]p,g;
    wire temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9,temp10,temp11,temp12,temp13,temp14,temp15,temp16,temp17,temp18,temp19,temp20,temp21,temp22,temp23,temp24;
    output wire [7:0]o;

    prop_gen p0(a[0],b[0],p[0],g[0]);
    prop_gen p1(a[1],b[1],p[1],g[1]);
    prop_gen p2(a[2],b[2],p[2],g[2]);
    prop_gen p3(a[3],b[3],p[3],g[3]);
    prop_gen p4(a[4],b[4],p[4],g[4]);
    prop_gen p5(a[5],b[5],p[5],g[5]);
    prop_gen p6(a[6],b[6],p[6],g[6]);
    prop_gen p7(a[7],b[7],p[7],g[7]);

    pg_block pg01(p[0],g[0],p[1],g[1],temp1,temp2);
    pg_block pg23(p[1],g[1],p[2],g[2],temp3,temp4);
    pg_block pg45(p[3],g[3],p[4],g[4],temp5,temp6);
    pg_block pg67(p[6],g[6],p[7],g[7],temp7,temp8);

    pg_block pg02(temp1,temp2,p[2],g[2],temp9,temp10);
    pg_block pg03(temp1,temp2,temp3,temp4,temp11,temp12);
    pg_block pg46(temp5,temp6,p[6],g[6],temp13,temp14);
    pg_block pg47(temp5,temp6,temp7,temp8,temp15,temp16);

    pg_block pg04(temp11,temp12,p[4],g[4],temp17,temp18);
    pg_block pg05(temp11,temp12,temp5,temp6,temp19,temp20);
    pg_block pg06(temp11,temp12,temp13,temp14,temp21,temp22);
    pg_block pg07(temp11,temp12,temp15,temp16,temp23,temp24);

    sum_block sum0(a[0],b[0],g[0],o[0]);
    sum_block sum1(a[1],b[1],temp2,o[1]);
    sum_block sum2(a[2],b[2],temp10,o[2]);
    sum_block sum3(a[3],b[3],temp12,o[3]);
    sum_block sum4(a[4],b[4],temp18,o[4]);
    sum_block sum5(a[5],b[5],temp20,o[5]);
    sum_block sum6(a[6],b[6],temp22,o[6]);
    sum_block sum7(a[7],b[7],temp24,o[7]);

endmodule