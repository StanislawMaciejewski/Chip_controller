`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2023 16:51:05
// Design Name: 
// Module Name: mux_2_1
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


module mux_2_1(
    input a0, a1, sel,
    output y);
    
    tristate_inv_neg a0_inv(
    .a(a0),
    .c(sel),
    .y(y));
    
    tristate_inv a1_inv(
    .a(a1),
    .c(sel),
    .y(y));
     
endmodule
