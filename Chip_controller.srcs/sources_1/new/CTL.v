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


module CTL #(parameter M = 72)(
    input [M-1:0] IN,
    input CLK,
    input DATA_IN,
    input SH_LD,
    output SOUT
    );
    
    wire [M-1:0] sel;
    wire [M-1:0] dff;
    
    SELECTOR SEL_0(
        .IN(IN[0]),
        .Q(DATA_IN),
        .SH_LD(SH_LD),
        .OUT(sel[0])
    );
    
    genvar i; 
    generate 
        for (i = 0; i < M-1; i = i + 1) begin   
            digital_flip_flop PISO_DFF_0(
                .D(sel[i]),
                .C(CLK),
                .Q(dff[i])
                );
        
            SELECTOR SEL_1(
                .IN(IN[i+1]),
                .Q(dff[i]),
                .SH_LD(SH_LD),
                .OUT(sel[i+1])
            );
       end
    endgenerate
                   
    digital_flip_flop PISO_DFF_2(
       .D(sel[M-1]),
       .C(CLK),
       .Q(SOUT));       
        
endmodule
