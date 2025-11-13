`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 14:25:03
// Design Name: 
// Module Name: Half_subtactor_tb
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


module Half_subtactor_tb(

    );
    
     reg a, b;
    wire d, borrow;

    // Instantiate the design (DUT)
    Half_subtactor dut (a, b, d, borrow);

    initial begin
        
        // Apply test cases
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $stop;  
    end
endmodule
