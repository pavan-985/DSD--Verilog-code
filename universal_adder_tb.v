`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 09:49:41
// Design Name: 
// Module Name: universal_adder_tb
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


module universal_adder_tb(

    );
    
    reg  [3:0] A, B;
    reg        M;
    wire [3:0] S;
    wire       Cout, V;
    universal_adder dut (A, B, M, S, Cout, V);
    initial begin
        
       M = 0;
        A = 4'b0101; B = 4'b0011; #10;
        A = 4'b0111; B = 4'b1001; #10;
       M = 1;
        A = 4'b1001; B = 4'b0100; #10;
        A = 4'b0011; B = 4'b1000; #10;
        $stop;
    end
endmodule
