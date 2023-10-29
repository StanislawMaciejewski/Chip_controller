`timescale 1ns / 1ps

module N_bits #(parameter N = 24)(
        input SERIAL_IN,
        input CLK_COUNT,
        input CLK_SHIFT,
        input SHIFT,
        input STORE,
        output OUT,
        output [N-1:0] S);
    
    wire [N-2:0] w;
    
    single_bit SB_FIRST(
           .SERIAL_IN(SERIAL_IN),
           .CLK_COUNT(CLK_COUNT),
           .CLK_SHIFT(CLK_SHIFT),
           .SHIFT(SHIFT),
           .STORE(STORE),
           .OUT_BIT(w[0]),
           .STORED_BIT(S[0]));    
    
    genvar i; 
    generate 
        for (i = 0; i < N-2; i = i + 1) begin
          single_bit inst(
          .SERIAL_IN(w[i]),
          .CLK_COUNT(w[i]),
          .CLK_SHIFT(CLK_SHIFT),
          .SHIFT(SHIFT),
          .STORE(STORE),
          .OUT_BIT(w[i+1]),
          .STORED_BIT(S[i+1])
         );
        end
    endgenerate
            
         single_bit SB_LAST(
         .SERIAL_IN(w[N-2]),
         .CLK_COUNT(w[N-2]),
         .CLK_SHIFT(CLK_SHIFT),
         .SHIFT(SHIFT),
         .STORE(STORE),
         .OUT_BIT(OUT),
         .STORED_BIT(S[N-1]));  
endmodule
