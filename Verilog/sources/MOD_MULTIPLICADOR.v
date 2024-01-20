`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gabriel O. González Rodríguez
// 
// Create Date: 10/10/2021 04:36:44 PM
// Design Name: 
// Module Name: MOD_MULTIPLICADOR 
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


module MOD_MULTIPLICADOR (
    input [5:0] A, B,
    output [5:0] M,
    output OF_MUL
    );
    
    // Conversion complemento a 2 para A
    wire [5:0] A_comp2, A_conv;
    MOD_Conversor_Comp2 conversionA_conv(A, A_comp2);
    Mux_2a1 conversion_A_mux (A[5],A, A_comp2, A_conv);
    
    // Conversion complemento a 2 para B
    wire [5:0] B_comp2, B_conv;
    MOD_Conversor_Comp2 conversionB_conv(B, B_comp2);
    Mux_2a1 conversion_B_mux (B[5], B, B_comp2, B_conv);
    
    // Multiplicacion positiva
    wire [9:0] mult_pos_completa;
    wire [5:0] mult_pos_incompleta;
    assign mult_pos_completa = A_conv[4:0] * B_conv[4:0];
    assign mult_pos_incompleta[4:0] = mult_pos_completa[4:0];
    assign mult_pos_incompleta[5] = 1'b0;
    
    // Conversion complemento a 2 para el resultado de la multiplicación positiva
    wire [5:0] mult_comp2; 
    wire SEL_conv_mult;
    assign SEL_conv_mult = A[5] ^ B[5];
    MOD_Conversor_Comp2 conversionMult_conv (mult_pos_incompleta, mult_comp2);
    Mux_2a1 conversionMult_mux (SEL_conv_mult, mult_pos_incompleta, mult_comp2, M); // Resultado: M
    
    // Bandera Overflow (OF)
    wire OF_or;
    assign OF_or = mult_pos_completa[5]^ mult_pos_completa[6]^ mult_pos_completa[7]^ mult_pos_completa[8]^ mult_pos_completa[9];
    assign OF_MUL = OF_or ? 1'b1 : 1'b0;
    
endmodule