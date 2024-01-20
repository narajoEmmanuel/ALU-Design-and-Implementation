`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2021 07:08:52 PM
// Design Name: 
// Module Name: MOD_SUM_REST_6b
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


module MOD_SUM_REST_6b(
    input SEL, //Corresponde a SEL[1] de la ALU; 
               // Según el valor de SEL, Cin en el sumador es 0 o 1
    input signed [5:0] A,
    input signed [5:0] B,
    output signed [5:0] Y,
    output OF_SUM_REST
    );
    wire [5:0] caso_Bneg;
    wire Cout;
    
    MOD_Mux_2a1_REST complemento_B (SEL, B, caso_Bneg); //Según el valor de SEL se niega B o no
     
    reg signed [6:0] Sum;
    
    always @*
    begin
    Sum = A + caso_Bneg + SEL;
    end

    assign Y = Sum[5:0];
    assign Cout = Sum[6];
    assign OF_SUM_REST = (~A[5] & ~caso_Bneg[5] & Sum[5]) | (A[5] & caso_Bneg[5] & ~Sum[5]);
    
endmodule
