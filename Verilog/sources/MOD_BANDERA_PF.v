`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2021 02:29:41 PM
// Design Name: 
// Module Name: MOD_BANDERA_PF
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


module MOD_BANDERA_PF(
    input [5:0] Dato,
    output PF
    );
    
    assign PF = ~(Dato[0]^Dato[1]^Dato[2]^Dato[3]^Dato[4]^Dato[5]);
    
endmodule

