`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2023 18:54:41
// Design Name: 
// Module Name: digital_flip_flop
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


module digital_flip_flop(
    input D,
    input C,
    output Q
    );
    
    wire d1b, d2, qb, I7_I3_wire;
    
    tristate_inv_neg I0_invT(
        .a(D),
        .c(C),
        .y(d1b));
    
    inv I6_inv(
        .a(d1b),
        .y(d2));
        
    tristate_inv I1_invT(
        .a(d2),
        .c(C),
        .y(qb));
        
    tristate_inv I2_invT(
        .a(d2),
        .c(C),
        .y(d1b));
     
    inv I7_inv(
        .a(qb),
        .y(I7_I3_wire));
      
    tristate_inv_neg I3_invT(
         .a(I7_I3_wire),
         .c(C),
         .y(qb));  
         
    inv I8_inv(
        .a(qb),
        .y(Q));
    
        
    
    
endmodule
