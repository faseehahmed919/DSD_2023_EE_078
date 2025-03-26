`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 12:39:51 PM
// Design Name: 
// Module Name: seven_seg
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


module seven_seg( input logic write,
                  input logic [2:0] slct,
                  input logic [3:0] num,
                  input logic clk,
                  input logic rst,
                  output logic [7:0] anode,
                  output logic [6:0] cathode

    );
    logic [3:0] memory [7:0];
    logic [2:0] new_slct;
    logic [16:0] count_1;
    logic [2:0] count_2;
    
    always_ff @(posedge clk or posedge rst) 
    begin
        if (rst) 
            begin
                count_1 <= 0;
                count_2 <= 0;
            end 
        else 
            begin
                count_1 <= count_1 + 1;
                if (count_1 == 17'd131071) 
                    begin
                        count_1 <= 0;
                        count_2 <= count_2 + 1;
                end
            end
    end
    
    always_ff @(posedge clk) begin
        if (rst)
            memory <= {0,0,0,0,0,0,0,0};
        else if (write)
            memory[slct] <= num;
    end

    always_comb begin
        if (write)
            new_slct = slct;
        else
            new_slct = count_2;
    end

//Selection decoder portion
    always_comb begin
        case(new_slct)
            3'b000 : anode = 8'b11111110;
            3'b001 : anode = 8'b11111101;
            3'b010 : anode = 8'b11111011;
            3'b011 : anode = 8'b11110111;
            3'b100 : anode = 8'b11101111;
            3'b101 : anode = 8'b11011111;
            3'b110 : anode = 8'b10111111;
            3'b111 : anode = 8'b01111111;
        endcase
    end
    
    always_comb begin
        case(memory[new_slct])
            4'b0000 : cathode = 7'b0000001;
            4'b0001 : cathode = 7'b1001111;
            4'b0010 : cathode = 7'b0010010;
            4'b0011 : cathode = 7'b0000110;
            4'b0100 : cathode = 7'b1001100;
            4'b0101 : cathode = 7'b0100100;
            4'b0110 : cathode = 7'b0100000;
            4'b0111 : cathode = 7'b0001111;
            4'b1000 : cathode = 7'b0000000;
            4'b1001 : cathode = 7'b0000100;
            4'b1010 : cathode = 7'b0001000;
            4'b1011 : cathode = 7'b1100000;
            4'b1100 : cathode = 7'b0110001;
            4'b1101 : cathode = 7'b1000010;
            4'b1110 : cathode = 7'b0110000;
            4'b1111 : cathode = 7'b0111000;
        endcase
    end
endmodule
