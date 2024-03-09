`timescale 1ns / 1ps
module divide_clock(
    input clk, arst,
    output divclk_cntr,
    output divclk_tgl,
    output divclk_pipo,
    output divclk_sipo
    );
    reg [30:0]count_divide;
    //wire out;
    
    always@(posedge clk, posedge arst)
    begin
        if(arst)begin
        count_divide <= 0;
            //divider_out<=1'b0;
            end
                else begin
                count_divide<= count_divide +1;
                //divider_out<= 1;
                end
    end
    
    assign divclk_cntr = count_divide[27];
    assign divclk_tgl = count_divide[15];
    assign divclk_pipo = count_divide[5];
    assign divclk_sipo = count_divide[30];
    
endmodule
