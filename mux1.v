`timescale 1ns / 1ps
module mux1(
    input [3:0]a,b,
    input sel,
    output reg [3:0]mux_out 
       );
       
    always@(*)
    begin
        if(sel)
            mux_out<=b;
        else mux_out<=a;   
        end   
endmodule
