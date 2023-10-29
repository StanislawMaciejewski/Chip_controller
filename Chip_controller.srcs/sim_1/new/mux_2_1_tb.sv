`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2023 17:01:35
// Design Name: 
// Module Name: mux_2_1_tb
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


module mux_2_1_tb();
    reg a0, a1, sel;
    wire y;
    
    mux_2_1 dut(
    .a0(a0),
    .a1(a1),
    .sel(sel),
    .y(y));
    
    initial begin
        a0=0;
        a1=0;
        sel=0;
        #10 a0=1;
        #10 sel=1;
        #10 a1=1;
        #10 a0=0;
        #10 sel=0;
        #10 a0=1;
        $finish;
     end
endmodule
