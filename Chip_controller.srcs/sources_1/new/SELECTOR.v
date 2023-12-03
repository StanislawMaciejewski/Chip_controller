`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2023 18:41:59
// Design Name: 
// Module Name: SELECTOR
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


module SELECTOR(
    input IN,
    input Q,
    input SH_LD,
    output OUT
    );
    
    wire inv_out, and1_out, and2_out;
    
    inv I0_inv(
    .a(SH_LD),
    .y(inv_out));
    
    and_gate AND_1(
    .a(IN), 
    .b(inv_out), 
    .y(and1_out));
    
    and_gate AND_2(
    .a(SH_LD), 
    .b(Q),
    .y(and2_out));
    
    or_gate OR(
    .a(and1_out), 
    .b(and2_out), 
    .y(OUT));
    
endmodule
