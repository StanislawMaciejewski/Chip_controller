`timescale 1ns / 1ps
`define THREE_COLUMN
`define BIT_24

module M_bits_tb();
    
    `ifdef BIT_24
        parameter N = 24;
    `elsif BIT_16
        parameter N = 16;
    `endif
    
    `ifdef THREE_COLUMN
        parameter M = 3;
    `elsif TWO_COLUMN
        parameter M = 2;
    `elsif ONE_COLUMN
        parameter M = 1;
    `endif
    
    reg [M-1:0][N-1:0] DATA;
    reg [85:0] DATA_SIN;
    reg [5:0] bit_counter = 0; 
    reg [2:0] SERIAL_IN;
    reg CLK_COUNT, CLK_SHIFT, CLK_CTL;
    reg [2:0] SHIFT,STORE;
    wire SOUT;
    wire [2:0][23:0] S;
    integer MAX;
    reg [7:0] COUNT_TO;
    reg [4:0] M_SIZE;
    reg [4:0] N_SIZE;
    reg [3:0] STATE;
     
     M_bits DUT(
       .SERIAL_IN(SERIAL_IN),
       .CLK_COUNT(CLK_COUNT),
       .CLK_SHIFT(CLK_SHIFT),
       .CLK_CTL(CLK_CTL),
       .SHIFT(SHIFT),
       .STORE(STORE),
       .S(S),
       .SOUT(SOUT));
       
       initial begin
           STORE = 3'b000;
           SHIFT = 3'b111;
       end
       
       initial begin
           #1
           CLK_SHIFT=0;
           forever #12 CLK_SHIFT = ~CLK_SHIFT;  
       end
   
       initial begin
           CLK_COUNT=0;
           forever #12 CLK_COUNT = ~CLK_COUNT;  
       end
       
       initial begin
           CLK_CTL=0;
           forever #4 CLK_CTL = ~CLK_CTL;  
       end
       
       initial begin
             `ifdef THREE_COLUMN
                `ifdef BIT_24
                    DATA[2] = 24'b0000_1111_0000_0000_0000_0000;
                    DATA[1] = 24'b0000_0000_0000_1111_0000_0000;
                    DATA[0] = 24'b0000_0000_0000_0000_0000_1111;
                `elsif BIT_16
                    DATA[2] = 16'b0000_0000_0000_0000;
                    DATA[1] = 16'b0000_1111_0000_0000;
                    DATA[0] = 16'b0000_0000_0000_1111;
                `endif
             `elsif TWO_COLUMN
                `ifdef BIT_24
                    DATA[1] = 24'b0000_0000_0000_1111_0000_0000;
                    DATA[0] = 24'b0000_0000_0000_0000_0000_1111;
                `elsif BIT_16
                    DATA[1] = 16'b0000_1111_0000_0000;
                    DATA[0] = 16'b0000_0000_0000_1111;
                `endif
             `elsif ONE_COLUMN
                `ifdef BIT_24
                    DATA[0] = 24'b0000_0000_0000_0000_0000_1111;
                `elsif BIT_16
                    DATA[0] = 16'b0000_0000_0000_1111;
                `endif
             `endif
                    
             `ifdef THREE_COLUMN
                `ifdef BIT_24
                    DATA_SIN = 86'b001_001_001_001_000_000_000_000_010_010_010_010_000_000_000_000_100_100_100_100_000_000_000_000_00011_11000_0001;
                `elsif BIT_16
                    DATA_SIN = 62'b001_001_001_001_000_000_000_000_010_010_010_010_000_000_000_000_00011_10000_0001;
                `endif
             `elsif TWO_COLUMN
                `ifdef BIT_24
                    DATA_SIN = 62'b01_01_01_01_00_00_00_00_10_10_10_10_00_00_00_00_00_00_00_00_00_00_00_00_00010_11000_0001;
                `elsif BIT_16
                    DATA_SIN = 46'b01_01_01_01_00_00_00_00_10_10_10_10_00_00_00_00_00010_10000_0001;
                `endif
             `elsif ONE_COLUMN
                `ifdef BIT_24
                    DATA_SIN = 38'b1111_0000_0000_0000_0000_0000_00001_11000_0001;
                `elsif BIT_16
                    DATA_SIN = 30'b1111_0000_0000_0000_00001_10000_0001;
                `endif
             `endif
             
             M_SIZE = DATA_SIN[13:9];
             N_SIZE = DATA_SIN[8:4];
             STATE = DATA_SIN[3:0];
       end  
       
       always @(posedge CLK_SHIFT) begin
             if(bit_counter == N_SIZE) begin
                SHIFT = ~SHIFT;
                if(M_SIZE == 1) STORE = 3'b100;
                else if (M_SIZE == 2) STORE = 3'b110;
                else if (M_SIZE == 3) STORE = 3'b111;
                else STORE = 3'b000;
                bit_counter = 0;
                #2
                STORE = 0;
             end   
             else begin
                bit_counter = bit_counter + 1;
                MAX = (M_SIZE * bit_counter) + 13;
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
                
//            DATA[0] = $random;
//            DATA[1] = $random;
//            DATA[2] = $random;
        end 
       
       initial
       begin
           #1000000
           $finish;
       end
       
 endmodule
