`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 15:02:39
// Design Name: 
// Module Name: SR_latch
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


module SR_latch(
    input s,r,output q,qbar
    );
    assign #1 q=~(s&qbar);
    assign #1 qbar=~(r&q);
endmodule
