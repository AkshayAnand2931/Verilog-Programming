module dflip(d,clk,reset,q);
    input wire d,clk,reset;
    output wire q;

    always@(posedge clk or negedge reset)
    begin
        if(reset == 1'b0)
        q <= 1'b0;
        else
        q <= d;
    end
endmodule

module jkflip(j,k,clk,reset,q);
    input wire j,k,clk,reset;
    output wire q;

    always @(posedge clk or negedge reset) 
    begin
        if(reset == 1'b0)
        q <= 1'b0;
        else
        q <= (j&(~q)) | (k&q);
    end
endmodule

module 