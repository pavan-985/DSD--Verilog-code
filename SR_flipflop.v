`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 15:39:30
// Design Name: 
// Module Name: SR_flipflop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SR_flipflop(
    input S, R,clk,
    output Q, Qbar
    );
   wire Sg, Rg;
assign #1 Sg = ~(S & clk);
assign #1 Rg = ~(R & clk);
assign #1 Q = ~(Sg & Qbar);
assign #1 Qbar = ~(Rg & Q);
endmodule
