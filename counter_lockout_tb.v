`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 22:15:09
// Design Name: 
// Module Name: counter_lockout_tb
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


module counter_lockout_tb(

    );
    reg clk;
reg reset;
wire [2:0] q;

counter_lockout dut (clk, reset, q);

initial begin
clk=0;
forever #5 clk=~clk;

end
initial begin
   
    
    reset = 1;

    #12 reset = 0;
    #50;

    reset = 1;
    #10 reset = 0;

    #100;

    $finish;
end

endmodule
