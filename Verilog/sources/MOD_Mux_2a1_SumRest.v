`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2021 07:36:39 PM
// Design Name: 
// Module Name: MOD_Mux_2a1_SumRest
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


module MOD_Mux_2a1_SumRest(
    input SEL,
    output Y
    );
    
    assign Y = SEL ? 1'b1 : 1'b0; //EL acarreo de entrada del sumador es 0 o 1 según la operación por realizar.

endmodule
