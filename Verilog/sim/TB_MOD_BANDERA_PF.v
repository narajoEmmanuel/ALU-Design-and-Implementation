`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2021 02:31:11 PM
// Design Name: 
// Module Name: TB_MOD_BANDERA_PF
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


module TB_MOD_BANDERA_PF(
    );
    //inputs
    reg [5:0] entrada;
    
    //outputs
    wire out;
    
    //instantiate
    MOD_BANDERA_PF UUT(entrada,out);
    
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
