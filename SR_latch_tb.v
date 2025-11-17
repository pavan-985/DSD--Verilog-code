`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 15:03:12
// Design Name: 
// Module Name: SR_latch_tb
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


module SR_latch_tb(

    );
    
    reg s, r;
    wire q, qbar;

    // Instantiate the DUT
    SR_latch dut (
        .s(s),
        .r(r),
        .q(q),
        .qbar(qbar)
    );

    initial begin
        
       
        s = 0; r = 0; #10;

        
        s = 1; r = 0; #10;
//        s = 0; r = 0; #10;

       
        s = 0; r = 1; #10;
//        s = 0; r = 0; #10;

     
        s = 1; r = 1; #10;
//        s = 0; r = 0; #10;

        $stop;
    end

endmodule
