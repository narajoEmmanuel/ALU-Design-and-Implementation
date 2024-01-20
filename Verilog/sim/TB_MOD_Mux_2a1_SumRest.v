`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2021 07:46:44 PM
// Design Name: 
// Module Name: TB_MOD_Mux_2a1_SumRest
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


module TB_MOD_Mux_2a1_SumRest(
    );
    reg SEL;
    wire Y;
    
    MOD_Mux_2a1_SumRest UUT (SEL,Y);
    
    initial begin
    SEL = 0;
    #40 SEL = 1;
    #40 SEL = 0;
    end
endmodule
