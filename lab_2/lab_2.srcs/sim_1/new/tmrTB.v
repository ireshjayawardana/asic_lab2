`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2024 09:10:06 PM
// Design Name: 
// Module Name: tmrTB
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


module tmrTB();

    reg clk, rst, tmr_rst,tmr_on;
    reg [3:0] tmr_ctrl;
    wire tmr_out;

    tmr uut (
        clk,
        rst,
        tmr_on,
        tmr_rst,
        tmr_ctrl,
        tmr_out
    );

    initial begin
        #0 rst = 0; clk =0 ; tmr_on = 0; tmr_ctrl = 0;
        #10 rst = 1;
        #20 rst = 0;
        forever begin
            #10 clk =~clk;
        end
    end
    initial begin
        #30 tmr_ctrl = 3;
        #40 tmr_rst = 1;
        #50 tmr_rst = 0; tmr_on = 1;
        #100 tmr_ctrl = 6;
        #110 tmr_rst = 1;
        #120 tmr_rst = 0; tmr_on = 1;
        end

endmodule
