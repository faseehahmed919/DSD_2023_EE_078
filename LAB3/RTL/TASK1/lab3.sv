
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2025 02:09:49 AM
// Design Name: 
// Module Name: project_2_reg_78
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


module lab3(output x , y ,
            input a , b , c
            );
    assign _c = ~c;
    assign or_1 = a | b;
    assign nand_1 = ~(a & b);
    assign or_2 = a | b;
    assign xor_1 = _c ^ or_1;
    assign xor_2 = nand_1 ^ or_2;

    
    assign x = _c ^ or_1; 
    assign y = or_1 & xor_2; 
     
endmodule
