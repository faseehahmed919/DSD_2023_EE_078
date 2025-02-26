`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2025 09:25:56 AM
// Design Name: 
// Module Name: lab5
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab5(input logic [3:0] num,
            input logic [2:0] slct,
            output logic a,b,c,d,e,f,g,
            output logic [7:0] seg
            );
    assign a = (((~num[3])&(~num[2])&(~num[1])&(num[0])) | ((~num[3])&(num[2])&(~num[1])&(~num[0])) | ((num[3])&(num[2])&(~num[1])&(num[0])) | ((num[3])&(~num[2])&(num[1])&(num[0])));
    assign b = (((num[3])&(num[2])&(~num[0])) | ((~num[3])&(num[2])&(~num[1])&(num[0])) | ((num[3])&(num[1])&(num[0])) | ((num[2])&(num[1])&(~num[0])));
    assign c = (((~num[3])&(~num[2])&(num[1])&(~num[0])) | ((num[3])&(num[2])&(num[1])) | ((num[3])&(num[2])&(~num[0])));
    assign d = (((~num[3])&(num[2])&(~num[1])&(~num[0])) | ((~num[3])&(~num[2])&(~num[1])&(num[0])) | ((num[3])&(~num[2])&(num[1])&(~num[0])) | ((num[2])&(num[1])&(num[0])));
    assign e = (((~num[3])&(num[0])) | ((~num[3])&(num[2])&(~num[1])) | ((~num[2])&(~num[1])&(num[0])));
    assign f = (((~num[3])&(~num[2])&(num[0])) | ((~num[3])&(~num[2])&(num[1])) | ((num[3])&(num[2])&(~num[1])&(num[0])) | ((~num[3])&(num[1])&(num[0])));
    assign g = (((num[3])&(num[2])&(~num[1])&(~num[0])) | ((~num[3])&(num[2])&(num[1])&(num[0])) | ((~num[3])&(~num[2])&(~num[1])));
    
    assign seg[0] = ((slct[2]) | (slct[1]) | (slct[0]));
    assign seg[1] = ((slct[2]) | (slct[1]) | (~slct[0]));
    assign seg[2] = ((slct[2]) | (~slct[1]) | (slct[0]));
    assign seg[3] = ((slct[2]) | (~slct[1]) | (~slct[0]));
    assign seg[4] = ((~slct[2]) | (slct[1]) | (slct[0]));
    assign seg[5] = ((~slct[2]) | (slct[1]) | (~slct[0]));
    assign seg[6] = ((~slct[2]) | (~slct[1]) | (slct[0]));
    assign seg[7] = ((~slct[2]) | (~slct[1]) | (~slct[0]));

endmodule
