`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gabriel O. González Rodríguez
// 
// Create Date: 10/11/2021 07:06:21 PM
// Design Name: 
// Module Name: TB_Mux_8a1
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


module TB_MUX_8a1_6b(

    );
    
    // inputs
    reg [2:0] SEL;
    reg [5:0] D0, D1, D2, D3, D4, D5, D6, D7;
    
    // outputs
    wire [5:0] out;

    // instantiate
    Mux_8a1 UUT (SEL, D0, D1, D2, D3, D4, D5, D6, D7, out);

    // stimulus
    initial begin 
        D0 = 6'd0;
        D1 = 6'd1;
        D2 = 6'd2;
        D3 = 6'd3;
        D4 = 6'd4;
        D5 = 6'd5;
        D6 = 6'd6;
        D7 = 6'd7;        
        SEL = 6'b000;
    end
    
    always #10 SEL[0] = ~SEL[0];
    always #20 SEL[1] = ~SEL[1];
    always #40 SEL[2] = ~SEL[2];
    
    always #80 D0 = ~D0;
    always #160 D1 = ~D1;
    always #320 D2 = ~D2;
    always #640 D3 = ~D3;
    always #1280 D4 = ~D4;
    always #2560 D5 = ~D5;
    always #5120 D6 = ~D6;
    always #10240 D7 = ~D7;
    
endmodule
