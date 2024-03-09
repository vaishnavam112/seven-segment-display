`timescale 1ns / 1ps
module topmostmodule(
    input clk, arst,
    input [3:0]switches,
    
    output ca,cb,cc,cd,ce,cf,cg,AN0,AN1
    );
    wire [3:0]cntr_out;
    wire [3:0]dec1,dec2;
    wire [3:0]muxout;
    wire [3:0]pipo_in,pipo_out;
    
    divide_clock clock_divider(.clk(clk), .arst(arst), .divclk_cntr(divclk_cntr),.divclk_pipo(divclk_pipo), .divclk_tgl(divclk_tgl));
    //counter1 counter(.clk1(divclk_cntr), .arst(arst), .count(cntr_out));
    pipo_seven_seg pipo(.clk(divclk_pipo), .clear(arst), .p_in(switches), .p_out(pipo_out ));
    binary_to_decimal code_converter(.data_in(pipo_out), .d_out1(dec1), .d_out2(dec2));
    mux1 multiplexer1(.a(dec1), .b(dec2), .sel(divclk_tgl), .mux_out(muxout));
    
    seven_seg_dis display1(.i_in(muxout), .ca(ca), .cb(cb),
                        .cc(cc), .cd(cd), .ce(ce), .cf(cf), .cg(cg) );
     
     assign AN0= divclk_tgl;
     assign AN1= !divclk_tgl;                  
endmodule
