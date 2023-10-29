`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2023 16:46:58
// Design Name: 
// Module Name: tristate_inv
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


module tristate_inv(
    input a,
    input c,
    output y);
    
    assign y = c ? ((a === 1'b0) ? 1'b1 : 1'b0) : 1'bz;
endmodule

module tristate_inv_neg(
    input a,
    input c,
    output y);
    
    assign y = c ? 1'bz : ((a === 1'b0) ? 1'b1 : 1'b0);
endmodule
