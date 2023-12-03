`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2023 10:15:53
// Design Name: 
// Module Name: CTL
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


module CTL #(parameter M = 3)(
    input [M-1:0] IN,
    input CLK,
    input DATA_IN,
    input SH_LD,
    output SOUT
    );
    
    wire sel1, sel2, sel3;
    wire dff1, dff2, dff3;
    
    SELECTOR SEL_0(
        .IN(IN[0]),
        .Q(DATA_IN),
        .SH_LD(SH_LD),
        .OUT(sel1)
    );
        
    digital_flip_flop PISO_DFF_0(
        .D(sel1),
        .C(CLK),
        .Q(dff1)
    );
        
    SELECTOR SEL_1(
        .IN(IN[1]),
        .Q(dff1),
        .SH_LD(SH_LD),
        .OUT(sel2)
    );
            
    digital_flip_flop PISO_DFF_1(
        .D(sel2),
        .C(CLK),
        .Q(dff2)
    );
    
   SELECTOR SEL_2(
        .IN(IN[2]),
        .Q(dff2),
        .SH_LD(SH_LD),
        .OUT(sel3)
    );
                   
    digital_flip_flop PISO_DFF_2(
       .D(sel3),
       .C(CLK),
       .Q(SOUT));       
        
endmodule
