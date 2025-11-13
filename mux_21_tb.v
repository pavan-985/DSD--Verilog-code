`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2025 23:05:08
// Design Name: 
// Module Name: mux_21_tb
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


module mux_21_tb(

    );
      reg S, I0, I1;
  wire y;

  mux_21 dut (S, I0, I1, y);

  initial begin
    S=0; I0=0; I1=0; #10;
    S=0; I0=0; I1=1; #10;
    S=0; I0=1; I1=0; #10;
    S=0; I0=1; I1=1; #10;
    S=1; I0=0; I1=0; #10;
    S=1; I0=0; I1=1; #10;
    S=1; I0=1; I1=0; #10;
    S=1; I0=1; I1=1; #10;
    $finish;
  end
endmodule
