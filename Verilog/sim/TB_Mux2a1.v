`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gabriel O. González Rodríguez
// 
// Create Date: 10/10/2021 04:40:42 PM
// Design Name: 
// Module Name: TB_Mux_2a1
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

module TB_Mux2a1(

    );
    
    // inputs
    reg SEL;
    reg [5:0] A, B;
    
    // outputs
    wire [5:0] out; 
    
    // instantiate
    Mux_2a1 UUT (SEL, A, B, out);
    
    // stimulus
    initial begin
        SEL = 0;
        A = 6'd0;
        B = 6'd0;
    end
    
    always #1 SEL = ~SEL;
    
    always #2 A[0] = ~A[0];
    always #4 A[1] = ~A[1];
    always #8 A[2] = ~A[2];
    always #16 A[3] = ~A[3];
    always #32 A[4] = ~A[4];
    always #64 A[5] = ~A[5];
    
    always #128 B[0] = ~B[0];
    always #256 B[1] = ~B[1];
    always #512 B[2] = ~B[2];
    always #1024 B[3] = ~B[3];
    always #2048 B[4] = ~B[4];
    always #4168 B[5] = ~B[5];
    
endmodule