`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2023 22:03:16
// Design Name: 
// Module Name: five_bits
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


module five_bits(   
    input SERIAL_IN,
    input CLK_COUNT,
    input CLK_SHIFT,
    input SHIFT,
    input STORE,
    output OUT,
    output S1,
    output S2,
    output S3,
    output S4,
    output S5);
    
    wire w1, w2, w3, w4;
    
     single_bit SB_I0(
       .SERIAL_IN(SERIAL_IN),
       .CLK_COUNT(CLK_COUNT),
       .CLK_SHIFT(CLK_SHIFT),
       .SHIFT(SHIFT),
       .STORE(STORE),
       .OUT_BIT(w1),
       .STORED_BIT(S1));
       
     single_bit SB_I1(
       .SERIAL_IN(w1),
       .CLK_COUNT(w1),
       .CLK_SHIFT(CLK_SHIFT),
       .SHIFT(SHIFT),
       .STORE(STORE),
       .OUT_BIT(w2),
       .STORED_BIT(S2));
          
      single_bit SB_I2(
     .SERIAL_IN(w2),
     .CLK_COUNT(w2),
      .CLK_SHIFT(CLK_SHIFT),
     .SHIFT(SHIFT),
     .STORE(STORE),
     .OUT_BIT(w3),
     .STORED_BIT(S3));
             
      single_bit SB_I3(
      .SERIAL_IN(w3),
      .CLK_COUNT(w3),
      .CLK_SHIFT(CLK_SHIFT),
      .SHIFT(SHIFT),
      .STORE(STORE),
      .OUT_BIT(w4),
      .STORED_BIT(S4));
      
      single_bit SB_I4(
      .SERIAL_IN(w4),
      .CLK_COUNT(w4),
      .CLK_SHIFT(CLK_SHIFT),
      .SHIFT(SHIFT),
      .STORE(STORE),
      .OUT_BIT(OUT),
      .STORED_BIT(S5));  
      
      single_bit SB_I5(
      .SERIAL_IN(SERIAL_IN),
      .CLK_COUNT(CLK_COUNT),
      .CLK_SHIFT(CLK_SHIFT),
      .SHIFT(SHIFT),
      .STORE(STORE),
      .OUT_BIT(w1),
      .STORED_BIT(S1));
          
    
    
endmodule
