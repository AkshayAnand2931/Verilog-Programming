module mux2(i0,i1,s,y);
    input wire i0,i1,s;
    output wire y;
    assign y = ((~s)&i0) | (s&i1);
endmodule

module mux4(i0,i1,i2,i3,s,y);
    input wire i0,i1,i2,i3;
    input wire [1:0]s;
    output wire y;
    wire m,n;
    mux2 f1(i0,i1,s[0],m);
    mux2 f2(i2,i3,s[0],n);
    mux2 f3(m,n,s[1],y);
endmodule