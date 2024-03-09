`timescale 1ns / 1ps
module seven_seg_dis(
    
    input [3:0]i_in,
    //output reg AN0,AN1,
    output reg ca,cb,cc,cd,ce,cf,cg
    //output [7:0]y_out
    );
     
    always@(*)
    begin
        case(i_in)
        4'h0: {ca,cb,cc,cd,ce,cf,cg}= 7'b0000001;
        4'h1: {ca,cb,cc,cd,ce,cf,cg}= 7'b1001111;
        4'h2: {ca,cb,cc,cd,ce,cf,cg}= 7'b0010010;
        4'h3: {ca,cb,cc,cd,ce,cf,cg}= 7'b0000110;
        4'h4: {ca,cb,cc,cd,ce,cf,cg}= 7'b1001100;
        4'h5: {ca,cb,cc,cd,ce,cf,cg}= 7'b0100100;
        4'h6: {ca,cb,cc,cd,ce,cf,cg}= 7'b0100000;
        4'h7: {ca,cb,cc,cd,ce,cf,cg}= 7'b0001111;
        4'h8: {ca,cb,cc,cd,ce,cf,cg}= 7'b0000000;
        4'h9: {ca,cb,cc,cd,ce,cf,cg}= 7'b0000110;
        
        default: {ca,cb,cc,cd,ce,cf,cg}= 7'h1;
        
        endcase
    end
      
endmodule          
