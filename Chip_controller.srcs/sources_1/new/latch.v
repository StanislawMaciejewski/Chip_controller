`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2023 19:27:28
// Design Name: 
// Module Name: latch
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


module latch(
    input D,
    input STORE,
    output Q);
    
    wire qb;
    
    tristate_inv I0_invT(
    .a(D),
    .c(STORE),
    .y(qb));
    
    inv I2(
    .a(qb),
    .y(Q));
    
    tristate_inv_neg I1_invT(
    .a(Q),
    .c(STORE),
    .y(qb));
    
    
endmodule
