`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2024 08:56:50 PM
// Design Name: 
// Module Name: tmr
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


module tmr(
    input clk,
    input rst,
    input tmr_on,
    input tmr_rst,
    input [3:0] tmr_ctrl,
    output reg tmr_out
);
    reg [3:0] tmr_val;
    reg olf;

    always @(posedge clk) begin
        if (rst) begin
            tmr_out <= 0;
            tmr_val <= 0;
            olf <= 0;
        end
        else
            if (tmr_rst) begin
                tmr_out <= 0;
                tmr_val <= tmr_ctrl;
                olf <= 0;
            end
            else
                begin
                    if ((tmr_on) && (olf ==0)) begin
                        tmr_val <= tmr_val - 1;
                    end
                    if (tmr_val == 0) begin
                        tmr_out <= 1;
                        olf <= 1;
                    end
                end
    end
endmodule
