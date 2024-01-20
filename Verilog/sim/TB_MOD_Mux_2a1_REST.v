`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2021 07:45:58 PM
// Design Name: 
// Module Name: TB_MOD_Mux_2a1_REST
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


module TB_MOD_Mux_2a1_REST(
    );
    reg SEL;
    reg [5:0] Dato;
    wire [5:0] Y;
    
    MOD_Mux_2a1_REST UUT (SEL,Dato,Y);
    
    initial begin
    SEL=0;
    Dato=6'd9;
    
    #40 SEL = 1;
    end
    
endmodule
