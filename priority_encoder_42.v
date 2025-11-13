`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2025 23:45:06
// Design Name: 
// Module Name: priority_encoder_42
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


module priority_encoder_42(
input d0,d1,d2,d3,
output a,b,v

    );
    
      assign a = d2|d3;
    assign b=( d1 &(~d2))|d3;
    assign v = d3|d2|d1|d0;

endmodule
