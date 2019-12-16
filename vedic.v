`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2019 02:28:05 PM
// Design Name: 
// Module Name: vedic
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


module vedic(A,B,OUT);
    
    input [3:0] A,B;
    output [7:0] OUT;
    wire w1,w2,y0,y1,y2,y3,x0,x1,x2,x3,p0,p1,p2,p3,ca1,w3,w4,ca2,q0,q1,q2,q3,ca3;
    two_bit t0(A[0],A[1],B[0],B[1],OUT[0],OUT[1],w1,w2);
    two_bit t1(A[0],A[1],B[2],B[3],y0,y1,y2,y3);
    two_bit t2(A[2],A[3],B[0],B[1],x0,x1,x2,x3);
    
    wire z;
    assign z=0;
   
    
    ripple_add r0(y0,y1,y2,y3,x0,x1,x2,x3,p0,p1,p2,p3,ca1);
    ripple_add r1(w1,w2,z,z,p0,p1,p2,p3,OUT[2],OUT[3],w3,w4,ca2);
    
    two_bit t3(A[2],A[3],B[2],B[3],q0,q1,q2,q3);
    
    ripple_add r2(q0,q1,q2,q3,w3,w4,z,ca1,OUT[4],OUT[5],OUT[6],OUT[7],ca3);
    
endmodule
