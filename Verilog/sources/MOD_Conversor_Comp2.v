`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gabriel O. González Rodríguez
// 
// Create Date: 10/10/2021 04:36:44 PM
// Design Name: 
// Module Name: MOD_Conversor_Comp2
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


module MOD_Conversor_Comp2(
    input [5:0] A,
    output [5:0] A_convertido
    );
    
    wire [5:0] comp;
    assign comp = ~A;

    wire [6:0]suma;
    assign suma = comp + 6'd1;
    
    assign A_convertido = suma[5:0];
    
endmodule
