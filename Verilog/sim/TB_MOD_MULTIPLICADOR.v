`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gabriel O. González Rodríguez
// 
// Create Date: 10/10/2021 04:40:42 PM
// Design Name: 
// Module Name: TB_MOD_MULTIPLICADOR
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


module TB_MOD_MULTIPLICADOR(

    );
    
    // inputs
    reg [5:0] A , B;
    
    // outputs
    wire [5:0] M;
    wire OF;
    
    // instantiate
    MOD_MULTIPLICADOR UUT (
        .A(A), 
        .B(B), 
        .M(M), 
        .OF_MUL(OF)
        );
    
    // stimulus
    initial begin
        A = 6'd0;
        B = 6'd0;
    end

    always #1 A[0] = ~A[0];
    always #2 A[1] = ~A[1];
    always #4 A[2] = ~A[2];
    always #8 A[3] = ~A[3];
    always #16 A[4] = ~A[4];
    always #32 A[5] = ~A[5];
    
    always #64 B[0] = ~B[0];
    always #128 B[1] = ~B[1];
    always #256 B[2] = ~B[2];
    always #512 B[3] = ~B[3];
    always #1024 B[4] = ~B[4];
    always #2048 B[5] = ~B[5];

endmodule
