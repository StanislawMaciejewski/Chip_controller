`timescale 1ns / 1ps

module M_bits #(parameter M = 3)(
        input [M-1:0] SERIAL_IN,
        input CLK_COUNT,
        input CLK_SHIFT,
        input CLK_CTL,
        input [M-1:0] SHIFT,
        input [M-1:0] STORE,
        output [M-1:0][23:0]S,
        output SOUT);
        
        
        wire [M-1:0] OUT;
        
        genvar i; 
        generate 
            for (i = 0; i < M; i = i + 1) begin
              N_bits inst(
                   .SERIAL_IN(SERIAL_IN[i]),
                   .CLK_COUNT(CLK_COUNT),
                   .CLK_SHIFT(CLK_SHIFT),
                   .SHIFT(SHIFT[i]),
                   .STORE(STORE[i]),
                   .OUT(OUT[i]),
                   .S(S[i])
             );
            end
        endgenerate
        
        CTL control_logic(
            .IN(OUT),
            .CLK(CLK_SHIFT),
            .SHIFT(~SHIFT[1]),
            .SOUT(SOUT)
        );
        
        
endmodule

