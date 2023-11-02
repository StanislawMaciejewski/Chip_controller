`timescale 1ns / 1ps

module M_bits_tb();
    parameter N = 24;
    reg [2:0][N-1:0] DATA;
    reg [95:0] DATA_SIN;
    reg [5:0] bit_counter = 0; 
    reg [2:0] SERIAL_IN;
    reg CLK_COUNT, CLK_SHIFT, SHIFT,STORE;
    wire OUT;
    wire [2:0][N-1:0] S;
    integer MAX;
    reg [7:0] COUNT_TO;
     M_bits DUT(
       .SERIAL_IN(SERIAL_IN),
       .CLK_COUNT(CLK_COUNT),
       .CLK_SHIFT(CLK_SHIFT),
       .SHIFT(SHIFT),
       .STORE(STORE),
       .OUT(OUT),
       .S(S));
       
       initial begin
           STORE = 0;
           //SHIFT = 1;
       end
       
       initial begin
           #1
           CLK_SHIFT=0;
           forever #4 CLK_SHIFT = ~CLK_SHIFT;  
       end
   
       initial begin
           CLK_COUNT=0;
           forever #4 CLK_COUNT = ~CLK_COUNT;  
       end
       
       initial begin
             DATA[0] = 24'b1111_0000_0000_0000_0000_0000;
             DATA[1] = 24'b0000_0000_1111_0000_0000_0000;
             DATA[2] = 24'b0000_0000_0000_0000_1111_0000;
             DATA_SIN = 96'b0001_00011100_000_000_000_000_001_001_001_001_000_000_000_000_010_010_010_010_000_000_000_000_100_100_100_100_000_000_000_000;
             COUNT_TO = DATA_SIN[91:84];
             SHIFT = DATA_SIN[92];
       end  
       
       always @(posedge CLK_SHIFT) begin
             if(bit_counter == COUNT_TO) begin
                SHIFT = ~SHIFT;
                STORE = 1;
                bit_counter = 0;
                #2
                STORE = 0;
             end   
             else begin
                bit_counter = bit_counter + 1;
                MAX = (3 * bit_counter) - 1;
                SERIAL_IN = {DATA_SIN >> MAX, DATA_SIN >> MAX-1, DATA_SIN >> MAX-2};
                $display("%b", SERIAL_IN);
             end 
         end
         
         
        always @(posedge STORE) begin
            $display("DATA STORED");
            #1 if((DATA == S)&(SHIFT==0)) begin
                $display("PASSED");
                $display("DATA IN: %b, STORED: %b", DATA, S);
            end 
            else if(SHIFT == 1) $display("STORED: %b", S);
                
            DATA[0] = $random;
            DATA[1] = $random;
            DATA[2] = $random;
        end 
       
       initial
       begin
           #1000000
           $finish;
       end
       
 endmodule
