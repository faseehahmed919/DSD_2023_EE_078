`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2025 12:39:12 AM
// Design Name: 
// Module Name: lab4_exp4
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


module lab4_exp4(input logic [1:0] a,
                 input logic [1:0] b,
                 output logic red,
                 output logic green,
                 output logic blue
    );
    assign red = ((~b[1]) & (a[1])) | ((a[1]) & (~b[0])) | ((~b[1]) & (~b[0])) | ((a[1]) & (a[0])) |((a[0]) & (~b[1]));
    assign green = ((~a[1]) & (b[1])) | ((~a[0]) & (b[1])) | ((~a[1]) & (~a[0])) | ((b[1]) & (b[0])) | ((~a[1]) & (b[0]));
    assign blue = ((~a[0]) & (b[0])) | ((a[0]) & (~b[0])) | ((a[1]) & (~b[1])) | ((~a[1]) & (b[1]));
    
endmodule