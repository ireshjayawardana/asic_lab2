`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2024 04:57:08 PM
// Design Name: 
// Module Name: fsm
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


module fsm(
    input clk,
    input low_bat,on_off,low_pwr_md,rst,
    input tmr_out,
    output reg tmr_on,tmr_rst,
    output reg [3:0] tmr_ctrl,
    
    output reg v3v3,v2v5,v1v2,ready
    );
    
    reg [4:0]state, next_state;
    
endmodule
