`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2021 07:42:13 PM
// Design Name: 
// Module Name: TB_MOD_SUM_REST_6b
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


module TB_MOD_SUM_REST_6b(
    );
    
    // inputs
    reg SEL;
    reg signed [5:0] A;
    reg signed [5:0] B;
    
    // outputs
    wire signed [5:0] Y;
    //wire Cout;
    wire OF_SUM_REST;
    
    // variables intermedias
    reg [5:0] A_pos;
    
    //implementation 
    MOD_SUM_REST_6b UUT (SEL, A, B, Y, OF_SUM_REST);
    
    //Stimulus
    initial begin
        SEL = 1'b0;
        A = 6'sd0;
        B = 6'sd0;
        A_pos = 6'sd0;
    end
    
    always #10 SEL = ~SEL;
    
    always #10 B = $urandom%30;
    always #10 A_pos = $urandom%30;
    always #10 A = $signed(-A_pos);
   
endmodule
