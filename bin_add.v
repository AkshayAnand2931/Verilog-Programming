`include "adder.v"
module bin_adder(a,b,c,d,car);
    input wire [3:0]a,b;
    input wire c;
    output wire [3:0]d,car;

    fulladder a1(a[0],b[0],c,d[0],car[0]);
    fulladder a2(a[1],b[1],car[0],d[1],car[1]);
    fulladder a3(a[2],b[2],car[1],d[2],car[2]);
    fulladder a4(a[3],b[3],car[2],d[3],car[3]);
endmodule