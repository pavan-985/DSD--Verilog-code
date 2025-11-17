`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2025 17:58:03
// Design Name: 
// Module Name: mux_81_tb
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


module mux_81_tb(

    );    
reg I0, I1, I2, I3, I4, I5, I6, I7;
reg S0, S1, S2;
wire Y;
mux_81 dut (I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2, Y);
initial begin
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1;S2 = 0; S1 = 0; S0 = 0;   
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1; S2 = 0; S1 = 0; S0 = 1;   
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1; S2 = 0; S1 = 1; S0 = 0;   
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1;S2 = 0; S1 = 1; S0 = 1;   
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1;S2 = 1; S1 = 0; S0 = 0;   
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1;S2 = 1; S1 = 0; S0 = 1;   
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1;S2 = 1; S1 = 1; S0 = 0;  
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1;S2 = 1; S1 = 1; S0 = 1;   
    #10;
$finish;
end

endmodule
