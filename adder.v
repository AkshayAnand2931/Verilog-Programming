`include "basicgates.v"

module halfadder(a,b,s,cy);
    input wire a,b;
    output wire s,cy;
    
    xor1 x1(a,b,s);
    and1 a1(a,b,c);
endmodule

module fulladder(a,b,cin,s,cy);
    input wire a,b,cin;
    output wire s,cy;
    wire x,y,z;

    xor1 x1(a,b,x);
    and1 a1(a,b,y);
    xor1 x2(cin,x,s);
    and1 a2(cin,x,z);
    or1 o1(z,y,cy);

endmodule