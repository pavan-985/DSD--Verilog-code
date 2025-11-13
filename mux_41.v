`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2025 23:14:04
// Design Name: 
// Module Name: mux_41
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


module mux_41(
        input S1, S0, I0, I1, I2, I3,
    output y
    );
    assign y = (~S1 & ~S0 & I0) |(~S1 &  S0 & I1) |( S1 & ~S0 & I2) |( S1 &  S0 & I3);
endmodule
