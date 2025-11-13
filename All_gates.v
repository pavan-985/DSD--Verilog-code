`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2025 18:16:56
// Design Name: 
// Module Name: All_gates
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


module All_gates(
 input a, b,
    output and_y, or_y, not_a, nand_y, nor_y, xor_y,xnor_y
    );
    
 assign and_y  = a & b;
assign or_y   = a | b;
assign not_a  = ~a;
assign nand_y = ~(a & b);
assign nor_y  = ~(a | b);
assign xor_y  = a ^ b;
assign xnor_y  = ~(a ^ b);    
endmodule
