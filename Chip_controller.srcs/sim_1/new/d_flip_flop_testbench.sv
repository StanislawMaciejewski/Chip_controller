`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2023 21:14:16
// Design Name: 
// Module Name: d_flip_flop_testbench
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


module DFF_tb();
reg D;
reg clk;
wire Q;

digital_flip_flop DUT(
    .D(D),
    .C(clk),
    .Q(Q)
    );

initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 
initial begin 
 D <= 0;
 #100;
 D <= 1;
 #100;
 D <= 0;
 #100;
 D <= 1;
 $finish;
end 
endmodule
