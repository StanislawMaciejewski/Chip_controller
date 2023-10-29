`timescale 1ns / 1ps

module M_bits #(parameter M = 3)(
        input [M-1:0] SERIAL_IN,
        input CLK_COUNT,
        input CLK_SHIFT,
        input SHIFT,
        input STORE,
        output [M-1:0] OUT,
        output [M-1:0][23:0]S);
        
        
        genvar i; 
        generate 
            for (i = 0; i < M; i = i + 1) begin
              N_bits inst(
                   .SERIAL_IN(SERIAL_IN[i]),
                   .CLK_COUNT(CLK_COUNT),
                   .CLK_SHIFT(CLK_SHIFT),
                   .SHIFT(SHIFT),
                   .STORE(STORE),
                   .OUT(OUT[i]),
                   .S(S[i])
             );
            end
        endgenerate
endmodule

