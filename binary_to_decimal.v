`timescale 1ns / 1ps
module binary_to_decimal(
    input [3:0]data_in,
    output reg [3:0]d_out1, d_out2
    );
    
    always@(*)
    begin
        
        case(data_in)
        4'h0: {d_out1, d_out2} = {4'b0000 ,4'b0000} ;
        4'h1: {d_out1, d_out2}= {4'b0001,4'b0000};
        4'h2: {d_out1,d_out2}= {4'b0010, 4'b0000};
        4'h3: {d_out1,d_out2}= {4'b0011,4'b0000};
        4'h4: {d_out1,d_out2}= {4'b0100,4'b0000};
        4'h5: {d_out1,d_out2}= {4'b0101,4'b0000};
        4'h6: {d_out1,d_out2}= {4'b0110, 4'b0000};
        4'h7: {d_out1,d_out2}= {4'b0111,4'b0000};
        4'h8: {d_out1,d_out2}= {4'b1000,4'b0000};
        4'h9: {d_out1,d_out2}= {4'b1001,4'b0000};
        4'ha: {d_out1,d_out2}= {4'b0000,4'b0001};
        4'hb: {d_out1,d_out2}= {4'b0001,4'b0001};
        4'hc: {d_out1,d_out2}= {4'b0010, 4'b0001};
        4'hd: {d_out1,d_out2}= {4'b0011, 4'b0001};
        4'he: {d_out1,d_out2}= {4'b0100, 4'b0001};
        4'hf: {d_out1,d_out2}= {4'b0101, 4'b0001};
        
        default: {d_out1,d_out2} = {4'h0,4'h0};
        endcase
        
    end
endmodule
