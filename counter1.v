`timescale 1ns / 1ps
module counter1(
    input clk1, arst,
    output reg [3:0] count
    );
    
    always@(posedge clk1, posedge arst)
    begin
      if(arst)
        count<=4'h0;
        else 
            count<= count+1;  
    end
endmodule
