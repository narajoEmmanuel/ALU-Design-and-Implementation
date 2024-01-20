`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2021 07:31:47 PM
// Design Name: 
// Module Name: MOD_Mux_2a1_REST
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


module MOD_Mux_2a1_REST(
    input SEL,
    input [5:0] Dato,
    output [5:0] Y
    );
    
    assign Y = SEL ? ~Dato : Dato; //Niega los bits si SEL = 1
    
endmodule
  
