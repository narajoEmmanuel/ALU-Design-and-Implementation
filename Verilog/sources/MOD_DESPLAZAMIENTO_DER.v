`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2021 05:59:50 PM
// Design Name: 
// Module Name: MOD_DESPLAZAMIENTO_DER
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


module MOD_DESPLAZAMIENTO_DER(    
    input [5:0] A,
    output [5:0] Y
    );
    
    assign Y[0] = A[1];
    assign Y[1] = A[2];
    assign Y[2] = A[3];
    assign Y[3] = A[4];
    assign Y[4] = A[5];
    assign Y[5] = 0;
    
endmodule
