`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2025 21:52:42
// Design Name: 
// Module Name: counter_tb
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


module counter_tb(

    );
     reg clk,reset;
    wire [2:0]q;
    
    counter uut(clk,reset,q);
    initial
    begin
    clk=0;
    #5
    forever #5 clk=~clk;
    end
    
    initial 
    begin
    reset =1;
    #10
    reset=0;
    #50
    $finish;
    end
endmodule

