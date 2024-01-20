`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gabriel O. González Rodríguez
// 
// Create Date: 10/10/2021 02:02:43 PM
// Design Name: 
// Module Name: TB_MOD_Conversor_Comp2
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


module TB_MOD_Conversor_Comp2(

    );
    
    // inputs
    reg [5:0] A;
    
    // outputs
    wire [5:0] conv;
    
    // instantiate
    MOD_Conversor_Comp2 UUT (
        .A(A), 
        .A_convertido(conv)
        );
    
    // stimulus
    initial begin
        assign A = 000000;
    end
    
    always #1 A[0] = ~A[0];
    always #2 A[1] = ~A[1];
    always #4 A[2] = ~A[2];
    always #8 A[3] = ~A[3];
    always #16 A[4] = ~A[4];
    always #32 A[5] = ~A[5];
    
    
endmodule