// Write code for modules you need here
`include "lib.v"

module arrr(i,reset,load,clk,out);
    input wire [15:0]i;
    input wire reset,load;
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

module arrm(i0,i1,i2,i3,i4,i5,i6,i7,addr);
    input wire [15:0]i0,i1,i2,i3,i4,i5,i6,i7;
    input wire [2:0]addr;

    demux8 d1({i0[0],i1[0],i2[0],i3[0],i4[0],i5[0],i6[0],i7[0]});

endmodule
module reg_file (input wire clk, reset, wr, input wire [2:0] rd_addr_a, rd_addr_b, wr_addr, input wire [15:0] d_in, output wire [15:0] d_out_a, d_out_b);

// Declare wires here

// Instantiate modules here
   
endmodule



