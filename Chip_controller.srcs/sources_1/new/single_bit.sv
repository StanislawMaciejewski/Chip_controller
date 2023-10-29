`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2023 19:33:23
// Design Name: 
// Module Name: single_bit
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


module single_bit(
    input SERIAL_IN,
    input CLK_COUNT,
    input CLK_SHIFT,
    input SHIFT,
    input STORE,
    output OUT_BIT,
    output STORED_BIT);
    
    wire A1_mux_I1, dff_clk, dff_d;
        
    inv I0_inv(
    .a(SERIAL_IN),
    .y(A1_mux_I1));
    
    mux_2_1 I1_mux(
    .a0(OUT_BIT), 
    .a1(A1_mux_I1), 
    .sel(SHIFT),
    .y(dff_d));
    
    mux_2_1 I2_mux(
    .a0(CLK_COUNT), 
    .a1(CLK_SHIFT), 
    .sel(SHIFT),
    .y(dff_clk));
    
    digital_flip_flop I3_dff_s(
    .D(dff_d),
    .C(dff_clk),
    .Q(OUT_BIT));
    
    latch I4_latch(
    .D(OUT_BIT),
    .STORE(STORE),
    .Q(STORED_BIT));
    
endmodule
