`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 14:43:21
// Design Name: 
// Module Name: full_subtactor
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


module full_subtactor(
    input a, b, bin,
    output diff, borrow
    );
    assign diff   = a ^ b ^ bin;
    assign borrow = (~a & b) | ((~a ^ b) & bin);

endmodule
