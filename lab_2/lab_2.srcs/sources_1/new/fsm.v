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
    parameter IDEL = 0,ON_3V3 = 1, ON_2V5 = 3, ON_1V2 = 4, TRG_OFF = 5, INT_OFF = 6,
    OFF_1V2_INT_2V5 =7, OFF =8;
    reg [4:0]state, next_state;

    always @ (poseedge(clk))
    begin
        if (rst)
            begin
                ready <= 0;
                v3v3 <= 0;
                v2v5 <= 0;
                v1v2 <= 0;
            end
        else begin
            if(state == ON_3V3) begin
                v3v3 <= 0;
            end
        end
    end

endmodule
