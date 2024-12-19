`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/19/2024 04:37:30 PM
// Design Name: 
// Module Name: vending_machine
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


module vending_machine(
input clk, reset,
input [1:0]inp,// for money 5 rupee=01,10 rupee=10 and 0 rupee=0
output reg out,
output reg[1:0]change
    );
    
    
    parameter s0= 2'b00,s1=2'b01,s2=2'b10;
    
    
    reg[1:0] pr_state,nxt_state;
    
    
    always@(posedge clk)
    if(reset)
    begin
    pr_state<=s0;
    change<=2'b00;
    end
    else
    pr_state<=nxt_state;
    
    ///////////////////////////
    always@(inp,pr_state)
    case(pr_state)
    s0:begin
     if(inp==2'b01)
    nxt_state=s1;
    else if(inp==2'b10)
    nxt_state=s2;
     else
    nxt_state=s0;
    end
    
    
    s1: begin
    if(inp==2'b00)
    nxt_state=s0;
    else if(inp==2'b10)
    nxt_state=s0;
    else
    nxt_state=s2;
    end
    
    
    
    s2: begin
    if(inp==2'b01)
    nxt_state=s0;
    else if(inp==2'b10)
    nxt_state=s0;
    else
    nxt_state=s0;
    end
    
   default:nxt_state=s0;
   endcase
   
////////////////////

always@(inp,pr_state)
case(pr_state)
s0:begin
if(inp==2'b00)begin
   out=0;
 change=0;
    end
    else if(inp==2'b01)
    begin
    out=0;
    change=0;
    end
    else begin
    out=0;
    change=0;
    end 
    end
    s0:begin
if(inp==2'b00)begin
   out=0;
 change=0;
    end
    else if(inp==2'b01)
    begin
    out=0;
    change=0;
    end
    else begin
    out=0;
    change=0;
    end 
    end
    
    
    s1:begin
if(inp==2'b00)begin
   out=0;
 change=2'b01;
    end
    else if(inp==2'b10)
    begin
    out=1;
    change=0;
    end
    else begin
    out=0;
    change=0;
    end 
    end
    
    
    s2:begin
if(inp==2'b00)begin
   out=0;
 change=2'b10;
    end
    else if(inp==2'b01)
    begin
    out=1;
    change=0;
    end
    else begin
    out=1;
    change=2'b01;
    end 
    end
    
    default:out=0;
 endcase   
endmodule
