`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2023 19:48:54
// Design Name: 
// Module Name: single_bit_tb
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


module single_bit_tb();
    reg serial_in, clk_count, clk_shift, shift, store;
    wire out_bit, stored_bit;
    
    single_bit DUT(
    .SERIAL_IN(serial_in),
    .CLK_COUNT(clk_count),
    .CLK_SHIFT(clk_shift),
    .SHIFT(shift),
    .STORE(store),
    .OUT_BIT(out_bit),
    .STORED_BIT(stored_bit));
    
    initial begin
        clk_count = 0;
        store = 0;
        shift  = 0;
    end
    
    initial begin
        clk_shift=0;
        forever #10 clk_shift = ~clk_shift;  
    end

    initial begin
        clk_count=0;
        forever #10 clk_count = ~clk_count;  
    end
    
    initial begin
        #2;serial_in = 1;#4;serial_in = 0;
        #16;serial_in = 1;#4;serial_in = 0;
        #16;serial_in = 1;#4;serial_in = 0;
        #16;serial_in = 1;#4;serial_in = 0;
        #16;serial_in = 1;#4;serial_in = 0;
    end
    
    initial
    begin
        #100
        $finish;
    end
endmodule
