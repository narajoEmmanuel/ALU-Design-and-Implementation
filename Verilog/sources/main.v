`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2021 20:00:39
// Design Name: 
// Module Name: main
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


module main( //constructor main
    input [2:0] SEL, 
    input signed [5:0] A, B, 
    output signed [5:0] Y,
    output ZF, PF, OF 
    );
    
    // Variables MUX 8 a 1
    wire signed[5:0] XOR, AND, OR, SUM_REST;
    wire signed [9:0] MUL5; //cables de entrada y salidas de las funciones
    wire signed [6:0] DEZ, MUL;
    
    // Variables Banderas
    wire OF_SUM_REST, OF_MUL, OF_MUL5;
    
    // MUX 8 a 1
    MOD_XOR_2x6b GXOR(A, B ,XOR);
    MOD_AND_2x6b GAND(A, B, AND);
    MOD_OR_2x6b GOR(A, B, OR);
    MOD_DESPLAZAMIENTO_DER DD(A, DEZ);
    MOD_SUM_REST_6b SUMA_RESTA (SEL[1], A, B, SUM_REST, OF_SUM_REST);
    MOD_MULTIPLICADOR MULT (A, B, MUL, OF_MUL);
    //MOD_SUM_REST_6b REST(1'd1, A, B, RES, OF_REST);
    MOD_QUINTUPLICADOR quintu(A, MUL5, OF_MUL5);
    
    MUX_8a1_6b MUX (SEL, XOR, AND, OR, DEZ, SUM_REST, MUL, SUM_REST, MUL5, Y);
    
    /*
    always @*
        case (SEL)
            3'd0: Y <= XOR;
            3'd1: Y <= AND;
            3'd2: Y <= OR;
            3'd3: Y <= DEZ;
            3'd4: Y <= SUM;
            3'd5: Y <= MULT;
            3'd6: Y <= RES;
            3'd7: Y <= MUL5;
          endcase
    */
          
    // Banderas
    MOD_BANDERA_ZF Bandera_ZF (Y, ZF);
    MOD_BANDERA_PF Bandera_PF (Y, PF);
    Mux_8a1 Bandera_OF (SEL, 0, 0, 0, 0, OF_SUM_REST, OF_MUL, OF_SUM_REST, OF_MUL5, OF);
    
    
    
endmodule
