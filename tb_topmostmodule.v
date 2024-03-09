`timescale 1ns / 1ps
module tb_topmostmodule();
    reg clk, arst;
    reg [3:0]switches;
    wire ca,cb,cc,cd,ce,cf,cg,AN0,AN1;
    
    topmostmodule dut(.clk(clk), .arst(arst),.switches(switches), .ca(ca), .cb(cb), .cc(cc),
                        .cd(cd), .ce(ce), .cf(cf), .cg(cg), .AN0(AN0), .AN1(AN1));
    
    always #5 clk= ~clk;
    
    initial
    begin
        clk=0;
        arst=1;
        switches=4'b0000;
        #15
        arst=0;
        switches=4'b0001;
        #10
        #100000;
        $finish;
    
    end
endmodule
