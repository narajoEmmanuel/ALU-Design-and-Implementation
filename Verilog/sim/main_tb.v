`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2021 09:56:08 PM
// Design Name: 
// Module Name: main_tb
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


module main_tb(

    );
    
    // inputs
    reg [2:0] SEL;
    reg [5:0] A, B;
    
    // variables intermedias
    reg [5:0] A_pos;
    
    // outputs
    wire [5:0] Y;
    wire ZF, PF, OF;
    
    // instantiate
    main UUT (SEL, A, B, Y, ZF, PF, OF);

    // stimulus
    initial begin
        SEL = 3'b000;
        A = 6'sd0;
        B = 6'sd0;
        A_pos = 6'sd0;
    end
    
    always #10 SEL[0] = ~SEL[0];
    always #20 SEL[1] = ~SEL[1];
    always #40 SEL[2] = ~SEL[2];
    
    always #10 B = $urandom%30;
    always #10 A_pos = $urandom%30;
    always #10 A = $signed(-A_pos);
    
endmodule
