`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2019 02:30:10 PM
// Design Name: 
// Module Name: ripple_add
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
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2019 06:10:32 PM
// Design Name: 
// Module Name: parallel_add
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 



module ripple_add(A0,A1,A2,A3,B0,B1,B2,B3,S0,S1,S2,S3,C);

    input A0,A1,A2,A3,B0,B1,B2,B3;
    output S0,S1,S2,S3,C;
    wire [3:0] cout;
    assign S0=A0^B0;
    assign cout[0] = A0&B0;
    assign S1=A1^B1^cout[0];
    assign cout[1] = A1&B1 | (A1^B1)&cout[0] ;
    assign S2=A2^B2^cout[1];
    assign cout[2] = A2&B2 | (A2^B2)&cout[1];
    assign S3=A3^B3^cout[2];
    assign C = A3&B3 | (A3^B3)&cout[2];
  
endmodule
