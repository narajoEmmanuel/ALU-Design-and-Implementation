`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gabriel O. González Rodríguez
// 
// Create Date: 10/10/2021 04:36:44 PM
// Design Name: 
// Module Name: Mux_2a1 
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


module Mux_2a1(
    input SEL,
    input [5:0] Dato1, Dato2,
    output [5:0] Y
    );
    
    assign Y = SEL ? Dato2 : Dato1;
    
endmodule