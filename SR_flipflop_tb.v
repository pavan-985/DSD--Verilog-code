`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 15:52:51
// Design Name: 
// Module Name: SR_flipflop_tb
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


module SR_flipflop_tb(

    );
    reg S, R, clk;
    wire Q, Qbar;

    // DUT instantiation
    SR_flipflop dut (S, R, clk, Q, Qbar);

   
  initial begin
  clk=0;
  forever #5 clk=~clk;
  end

    initial begin
    S = 0;
    R = 0;
    #10;
    S = 0;
    R = 1;
    #10;
    S = 0;
    R = 0;
    #10;
    S = 1;
    R = 0;
    #10;
    S = 0;
    R = 0;
    #10;
    S = 1;
    R = 1;
    #10;

    $finish;
    end

endmodule
