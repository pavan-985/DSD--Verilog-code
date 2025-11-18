`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 09:49:03
// Design Name: 
// Module Name: universal_adder
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

module full_adder(
    input  A, B, Cin,
    output Sum, Cout
);
    assign {Cout, Sum} = A + B + Cin;
endmodule
module universal_adder(
    input  [3:0] A, B,
    input        M,         
    output [3:0] S,         
    output       Cout,      
    output       V          
);

    wire [3:0] B_mod;
    wire c1, c2, c3, c4;

    
    assign B_mod = B ^ {4{M}};

   
    full_adder FA0 (A[0], B_mod[0], M,  S[0], c1);  
    full_adder FA1 (A[1], B_mod[1], c1, S[1], c2);
    full_adder FA2 (A[2], B_mod[2], c2, S[2], c3);
    full_adder FA3 (A[3], B_mod[3], c3, S[3], c4);

    assign Cout = c4;

    
    assign V = c4 ^ c3;

endmodule





