`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 10:41:47
// Design Name: 
// Module Name: JK_flipflop_tb
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


module JK_flipflop_tb(

    );
    reg J, K, clk;
    wire Q, Qbar;

  
    JK_flipflop dut (J,K,clk,Q,Qbar);

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;   
    end

    
    initial begin
        J = 0; K = 0; #10;   
        J = 1; K = 0; #10;   
        J = 0; K = 1; #10;   
        J = 1; K = 1; #10;   
        J = 1; K = 1; #10;   
        J = 0; K = 0; #10;  
        $finish;
    end
endmodule
