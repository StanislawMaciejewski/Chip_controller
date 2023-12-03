`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2023 17:04:04
// Design Name: 
// Module Name: ctl_tb
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


module ctl_tb();
reg [8:0] DATA_SIN;
reg [2:0] IN;
reg CLK;
reg SH_LD;
wire SOUT;
reg DATA_IN = 0;

initial begin
    CLK=0;
    forever #4 CLK = ~CLK;  
end

initial fork
    SH_LD=1; 
    #6
    SH_LD=0;
    #12
    SH_LD=1; 
    #46
    SH_LD=0;
    #52
    SH_LD=1;
join

initial fork
    IN = 3'b000;
    #2
    IN = 3'b101;
    #12
    IN = 3'b000;
    #42
    IN = 3'b010;
    #52
    IN = 3'b000;
join
 
CTL control_logic(
    .IN(IN),
    .CLK(CLK),
    .DATA_IN(DATA_IN),
    .SH_LD(SH_LD),
    .SOUT(SOUT)
);

endmodule
