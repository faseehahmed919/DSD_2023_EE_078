`timescale 1 ns / 10 ps


module lab5_tb();

logic [3:0] num1;
logic [2:0] slct1;
logic a1;
logic b1;
logic c1;
logic d1;
logic e1;
logic f1;
logic g1;
logic [7:0] seg1;



lab5 UUT (
    .num(num1),
    .slct(slct1),
    .a(a1),
    .b(b1),
    .c(c1),
    .d(d1),
    .e(e1),
    .f(f1),
    .g(g1),
    .seg(seg1)

);

initial begin
    num1 = 4'b0000; slct1 = 3'b000;    
    #10;
    num1 = 4'b0001; slct1 = 3'b001;    
    #10;
    num1 = 4'b0010; slct1 = 3'b010;    
    #10;
    num1 = 4'b0011; slct1 = 3'b011;    
    #10;
    num1 = 4'b0100; slct1 = 3'b100;    
    #10;
    num1 = 4'b0101; slct1 = 3'b101;    
    #10;
    num1 = 4'b0110; slct1 = 3'b110;    
    #10;
    num1 = 4'b0111; slct1 = 3'b111;   
    #10;
    num1 = 4'b1000;                    
    #10;
    num1 = 4'b1001;                    
    #10;
    num1 = 4'b1010;                     
    #10;
    num1 = 4'b1011;                  
    #10;
    num1 = 4'b1100;                     
    #10;
    num1 = 4'b1101;                     
    #10;
    num1 = 4'b1110;                     
    #10;
    num1 = 4'b1111;                     
    #10;
    $stop;
end
initial begin
    $monitor("num[3] = %b  num[2] = %b  num[1] = %b  num[0] = %b  | segA = %b  segB = %b  segC = %b  segD = %b  segE = %b  segF = %b  segG = %b", num1[3], num1[2], num1[1], num1[0], a1, b1, c1, d1, e1, f1, g1 );
end    

endmodule