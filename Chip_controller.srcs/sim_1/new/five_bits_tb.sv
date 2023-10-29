`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2023 22:18:19
// Design Name: 
// Module Name: five_bits_tb
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


module five_bits_tb();
    reg [4:0] DATA;
    reg [2:0] bit_counter = 0; 
    reg SERIAL_IN, CLK_COUNT,CLK_SHIFT,SHIFT,STORE;
    wire OUT, S1, S2, S3, S4, S5;
    
     five_bits DUT(
       .SERIAL_IN(SERIAL_IN),
       .CLK_COUNT(CLK_COUNT),
       .CLK_SHIFT(CLK_SHIFT),
       .SHIFT(SHIFT),
       .STORE(STORE),
       .OUT(OUT),
       .S1(S1),
       .S2(S2),
       .S3(S3),
       .S4(S4),
       .S5(S5));
       
       initial begin
           STORE = 0;
           SHIFT = 1;
       end
       
       initial begin
           CLK_SHIFT=0;
           forever #2 CLK_SHIFT = ~CLK_SHIFT;  
       end
   
       initial begin
           CLK_COUNT=0;
           forever #5 CLK_COUNT = ~CLK_COUNT;  
       end
       
       initial begin
           DATA = 'b01110;
       end
       
       always @(posedge CLK_SHIFT) begin
             bit_counter <= (bit_counter + 1)%5; 
         end
       
         assign SERIAL_IN = DATA[bit_counter];
       
       
       initial
       begin
           #100
           $finish;
       end
    

endmodule
