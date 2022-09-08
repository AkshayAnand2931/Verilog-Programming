module mux2(i0,i1,s,y);
    input wire i0,i1,s;
    output wire y;
    assign y = ((~s)&i0) | (s&i1);
endmodule

module mux4(i0,i1,i2,i3,s1,s0,y);
    input wire i0,i1,i2,i3;
    input wire s1,s0;
    output wire y;
    wire m,n;
    mux2 f1(i0,i1,s0,m);
    mux2 f2(i2,i3,s0,n);
    mux2 f3(m,n,s1,y);
endmodule

module mux8(i0,i1,i2,i3,i4,i5,i6,i7,s,y);
    input wire i0,i1,i2,i3,i4,i5,i6,i7;
    input wire [2:0]s;
    output wire y;
    wire m,n;
    mux4 f1(i0,i1,i2,i3,s[1],s[0],m);
    mux4 f2(i4,i5,i6,i7,s[1],s[0],n);
    mux2 f3(m,n,s[2],y);
endmodule