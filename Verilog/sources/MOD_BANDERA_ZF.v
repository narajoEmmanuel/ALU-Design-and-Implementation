`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2021 11:05:43 PM
// Design Name: 
// Module Name: MOD_BANDERA_ZF
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


module MOD_BANDERA_ZF(
    input [5:0] Dato,
    output ZF
    );
    
    assign ZF = ~(|Dato);
endmodule
