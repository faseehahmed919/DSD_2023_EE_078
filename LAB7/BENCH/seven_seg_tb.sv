`timescale 1ns / 1ps

module seven_seg_tb();

   
    logic write;
    logic [2:0] slct;
    logic [3:0] num;
    logic clk;
    logic rst;
    logic [7:0] anode;
    logic [6:0] cathode;
	
seven_seg uut (
    .write(write),
    .slct(slct),
    .num(num),
    .clk(clk),
    .rst(rst),
    .anode(anode),
    .cathode(cathode)
);


initial begin
    clk <= 1'b0;
    forever #5 clk <= ~clk;
	write <= 0;
	rst <= 1'b1;
	sel <= 3'b000;
    num <= 4'b0000;
	
	
end



