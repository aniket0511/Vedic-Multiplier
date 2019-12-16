`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2019 02:29:31 PM
// Design Name: 
// Module Name: two_bit
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


module two_bit(A0,A1,B0,B1,S0,S1,S2,C2);
    
       input A0,A1,B1,B0;
       output S0,S1,S2,C2;
       
       wire C1;
       
       assign S0 = A0&B0;
       assign S1 = (A0&B1)^(A1&B0);
       assign C1 = (A0&B1)&(A1&B0);
       assign S2 = C1^(A1&B1);
       assign C2 = C1&(A1&B1);
        

endmodule
