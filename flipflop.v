module dflip(d,clk,reset,q);
    input d,clk,reset;
    output reg q;

    always@(posedge clk or negedge reset)
    begin
        if(reset == 1'b0)
        q <= 1'b0;
        else
        q <= d;
    end
endmodule

module jkflip(j,k,clk,reset,q);
    input j,k,clk,reset;
    output reg q;

    always @(posedge clk or negedge reset) 
    begin
        if(reset == 1'b0)
        q <= 1'b0;
        else
        q <= (j&(~q)) | (k&q);
    end
endmodule

module tflip(t,clk,reset,q);

    input  t,clk,reset;
    output reg  q;

    always @ (posedge clk or negedge reset) begin
        if (reset == 1'b0)
            q <= 1'b0;
        else
    	if (t)
      		q <= ~q;
    	else
      		q <= q;
    end
endmodule