// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sin (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x,
        ap_return
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] x;
output  [63:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[63:0] ap_return;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] x_read_reg_46;
wire    grp_sin_or_cos_double_s_fu_26_ap_start;
wire    grp_sin_or_cos_double_s_fu_26_ap_done;
wire    grp_sin_or_cos_double_s_fu_26_ap_idle;
wire    grp_sin_or_cos_double_s_fu_26_ap_ready;
wire    grp_sin_or_cos_double_s_fu_26_do_cos;
wire   [63:0] grp_sin_or_cos_double_s_fu_26_ap_return;
reg    grp_sin_or_cos_double_s_fu_26_ap_start_reg;
wire    ap_CS_fsm_state2;
reg   [63:0] ap_return_preg;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 grp_sin_or_cos_double_s_fu_26_ap_start_reg = 1'b0;
#0 ap_return_preg = 64'd0;
end

sin_or_cos_double_s grp_sin_or_cos_double_s_fu_26(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sin_or_cos_double_s_fu_26_ap_start),
    .ap_done(grp_sin_or_cos_double_s_fu_26_ap_done),
    .ap_idle(grp_sin_or_cos_double_s_fu_26_ap_idle),
    .ap_ready(grp_sin_or_cos_double_s_fu_26_ap_ready),
    .t_in(x_read_reg_46),
    .do_cos(grp_sin_or_cos_double_s_fu_26_do_cos),
    .ap_return(grp_sin_or_cos_double_s_fu_26_ap_return)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 64'd0;
    end else begin
        if (((grp_sin_or_cos_double_s_fu_26_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_return_preg <= grp_sin_or_cos_double_s_fu_26_ap_return;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sin_or_cos_double_s_fu_26_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_sin_or_cos_double_s_fu_26_ap_start_reg <= 1'b1;
        end else if ((grp_sin_or_cos_double_s_fu_26_ap_ready == 1'b1)) begin
            grp_sin_or_cos_double_s_fu_26_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((grp_sin_or_cos_double_s_fu_26_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_return <= grp_sin_or_cos_double_s_fu_26_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        x_read_reg_46 <= x;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((grp_sin_or_cos_double_s_fu_26_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_sin_or_cos_double_s_fu_26_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign grp_sin_or_cos_double_s_fu_26_ap_start = grp_sin_or_cos_double_s_fu_26_ap_start_reg;

assign grp_sin_or_cos_double_s_fu_26_do_cos = 1'd0;

endmodule //sin