`timescale 1ns / 1ps
module t_ff(
input t,
input clk,
input reset,
output reg q
    );
    always @(posedge clk or posedge reset) begin
    if(reset)//always at posivitive edge
    q<=1'b0;
    else if(t)
    q<=~q;
    end 
    
endmodule

module counter(
 input clk, reset, output [2:0]q
);
wire t0,t1,t2;
    assign t0=~q[1];
    assign t1=1;
    assign t2=q[1];
    
     t_ff ff0(t0,clk,reset,q[0]);
    t_ff ff1(t1,clk,reset,q[1]);
     t_ff ff2(t2,clk,reset,q[2]);
endmodule