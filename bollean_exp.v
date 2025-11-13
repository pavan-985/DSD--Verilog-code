`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2025 22:32:11
// Design Name: 
// Module Name: bollean_exp
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


module bollean_exp(
        input A, B, C,
    output exp_1,exp_2,exp_3
    );
    assign exp_1 =(~A & B) |(B & ~C) |(A & C);
    assign exp_2=(~A & ~B &  C) |(~A &  B &  C) |( A & ~B &  C);
    assign exp_3 =((A | B | C) & (A | ~B | C) &(~A | ~B | C));
    
        

endmodule
