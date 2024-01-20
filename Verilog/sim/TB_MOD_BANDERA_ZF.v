`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2021 11:07:35 PM
// Design Name: 
// Module Name: TB_MOD_BANDERA_ZF
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


module TB_MOD_BANDERA_ZF(
    );
    
    //inputs
    reg [5:0] entrada;
    
    //outputs
    wire out;
    
    //instantiate
    MOD_BANDERA_ZF UUT(entrada,out);
    
    //stimulus
    initial begin
        entrada = 6'b000000;
    end
    
    always #20 entrada[0] = ~entrada[0];
    always #40 entrada[1] = ~entrada[1];
    always #80 entrada[2] = ~entrada[2];
    always #160 entrada[3] = ~entrada[3];
    always #320 entrada[4] = ~entrada[4];
    always #640 entrada[5] = ~entrada[5];
    
endmodule
