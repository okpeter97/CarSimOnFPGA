// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="top_level_wheelSimWithMass,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k325t-ffg900-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.006429,HLS_SYN_LAT=533,HLS_SYN_TPT=none,HLS_SYN_MEM=20,HLS_SYN_DSP=241,HLS_SYN_FF=18477,HLS_SYN_LUT=33833,HLS_VERSION=2019_1}" *)

module top_level_wheelSimWithMass (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        deltaTime,
        initVel,
        torque,
        steeringAngle,
        slipRatio,
        slipRatio_ap_vld,
        slipAngle,
        slipAngle_ap_vld,
        force_x,
        force_x_ap_vld,
        force_y,
        force_y_ap_vld,
        vel_x,
        vel_x_ap_vld,
        angularVel,
        angularVel_ap_vld
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] deltaTime;
input  [31:0] initVel;
input  [31:0] torque;
input  [31:0] steeringAngle;
output  [31:0] slipRatio;
output   slipRatio_ap_vld;
output  [31:0] slipAngle;
output   slipAngle_ap_vld;
output  [31:0] force_x;
output   force_x_ap_vld;
output  [31:0] force_y;
output   force_y_ap_vld;
output  [31:0] vel_x;
output   vel_x_ap_vld;
output  [31:0] angularVel;
output   angularVel_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg slipRatio_ap_vld;
reg slipAngle_ap_vld;
reg force_x_ap_vld;
reg force_y_ap_vld;
reg vel_x_ap_vld;
reg angularVel_ap_vld;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [0:0] guard_variable_for_t;
reg   [31:0] wheel_mass;
reg   [31:0] wheel_radius;
reg   [31:0] wheel_inertia;
reg   [31:0] wheel_slipRatio;
reg   [31:0] wheel_slipAngle;
reg   [31:0] wheel_fx;
reg   [31:0] wheel_fz;
reg   [31:0] wheel_pos_x;
reg   [31:0] wheel_vel_x;
reg   [31:0] wheel_angularVelocit;
wire    grp_update_fu_144_ap_start;
wire    grp_update_fu_144_ap_done;
wire    grp_update_fu_144_ap_idle;
wire    grp_update_fu_144_ap_ready;
wire   [31:0] grp_update_fu_144_wheel_vel_x_o;
wire    grp_update_fu_144_wheel_vel_x_o_ap_vld;
wire   [31:0] grp_update_fu_144_wheel_angularVelocit_o;
wire    grp_update_fu_144_wheel_angularVelocit_o_ap_vld;
wire   [31:0] grp_update_fu_144_wheel_slipAngle;
wire    grp_update_fu_144_wheel_slipAngle_ap_vld;
wire   [31:0] grp_update_fu_144_wheel_slipRatio;
wire    grp_update_fu_144_wheel_slipRatio_ap_vld;
wire   [31:0] grp_update_fu_144_wheel_pos_x_o;
wire    grp_update_fu_144_wheel_pos_x_o_ap_vld;
wire   [31:0] grp_update_fu_144_wheel_fz;
wire    grp_update_fu_144_wheel_fz_ap_vld;
wire   [31:0] grp_update_fu_144_wheel_fx;
wire    grp_update_fu_144_wheel_fx_ap_vld;
reg    grp_update_fu_144_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire   [0:0] guard_variable_for_t_1_load_fu_191_p1;
wire    ap_CS_fsm_state5;
wire   [31:0] grp_fu_185_p2;
wire    ap_CS_fsm_state2;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 guard_variable_for_t = 1'd0;
#0 wheel_mass = 32'd0;
#0 wheel_radius = 32'd0;
#0 wheel_inertia = 32'd0;
#0 wheel_slipRatio = 32'd0;
#0 wheel_slipAngle = 32'd0;
#0 wheel_fx = 32'd0;
#0 wheel_fz = 32'd0;
#0 wheel_pos_x = 32'd0;
#0 wheel_vel_x = 32'd0;
#0 wheel_angularVelocit = 32'd0;
#0 grp_update_fu_144_ap_start_reg = 1'b0;
end

update grp_update_fu_144(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_update_fu_144_ap_start),
    .ap_done(grp_update_fu_144_ap_done),
    .ap_idle(grp_update_fu_144_ap_idle),
    .ap_ready(grp_update_fu_144_ap_ready),
    .deltaTime(deltaTime),
    .torque(torque),
    .steeringAngle(steeringAngle),
    .wheel_vel_x_i(wheel_vel_x),
    .wheel_vel_x_o(grp_update_fu_144_wheel_vel_x_o),
    .wheel_vel_x_o_ap_vld(grp_update_fu_144_wheel_vel_x_o_ap_vld),
    .wheel_angularVelocit_i(wheel_angularVelocit),
    .wheel_angularVelocit_o(grp_update_fu_144_wheel_angularVelocit_o),
    .wheel_angularVelocit_o_ap_vld(grp_update_fu_144_wheel_angularVelocit_o_ap_vld),
    .wheel_radius(wheel_radius),
    .wheel_slipAngle(grp_update_fu_144_wheel_slipAngle),
    .wheel_slipAngle_ap_vld(grp_update_fu_144_wheel_slipAngle_ap_vld),
    .wheel_slipRatio(grp_update_fu_144_wheel_slipRatio),
    .wheel_slipRatio_ap_vld(grp_update_fu_144_wheel_slipRatio_ap_vld),
    .wheel_inertia(wheel_inertia),
    .wheel_mass(wheel_mass),
    .wheel_pos_x_i(wheel_pos_x),
    .wheel_pos_x_o(grp_update_fu_144_wheel_pos_x_o),
    .wheel_pos_x_o_ap_vld(grp_update_fu_144_wheel_pos_x_o_ap_vld),
    .wheel_fz(grp_update_fu_144_wheel_fz),
    .wheel_fz_ap_vld(grp_update_fu_144_wheel_fz_ap_vld),
    .wheel_fx(grp_update_fu_144_wheel_fx),
    .wheel_fx_ap_vld(grp_update_fu_144_wheel_fx_ap_vld)
);

top_level_wheelSircU #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
top_level_wheelSircU_U76(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(initVel),
    .din1(32'd1050253722),
    .ce(1'b1),
    .dout(grp_fu_185_p2)
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
        grp_update_fu_144_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_update_fu_144_ap_start_reg <= 1'b1;
        end else if ((grp_update_fu_144_ap_ready == 1'b1)) begin
            grp_update_fu_144_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        wheel_angularVelocit <= grp_fu_185_p2;
    end else if (((grp_update_fu_144_wheel_angularVelocit_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        wheel_angularVelocit <= grp_update_fu_144_wheel_angularVelocit_o;
    end
end

always @ (posedge ap_clk) begin
    if (((guard_variable_for_t_1_load_fu_191_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        wheel_fx <= 32'd0;
    end else if (((grp_update_fu_144_wheel_fx_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        wheel_fx <= grp_update_fu_144_wheel_fx;
    end
end

always @ (posedge ap_clk) begin
    if (((guard_variable_for_t_1_load_fu_191_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        wheel_fz <= 32'd0;
    end else if (((grp_update_fu_144_wheel_fz_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        wheel_fz <= grp_update_fu_144_wheel_fz;
    end
end

always @ (posedge ap_clk) begin
    if (((guard_variable_for_t_1_load_fu_191_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        wheel_pos_x <= 32'd0;
    end else if (((grp_update_fu_144_wheel_pos_x_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        wheel_pos_x <= grp_update_fu_144_wheel_pos_x_o;
    end
end

always @ (posedge ap_clk) begin
    if (((guard_variable_for_t_1_load_fu_191_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        wheel_slipAngle <= 32'd0;
    end else if (((grp_update_fu_144_wheel_slipAngle_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        wheel_slipAngle <= grp_update_fu_144_wheel_slipAngle;
    end
end

always @ (posedge ap_clk) begin
    if (((guard_variable_for_t_1_load_fu_191_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        wheel_slipRatio <= 32'd0;
    end else if (((grp_update_fu_144_wheel_slipRatio_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        wheel_slipRatio <= grp_update_fu_144_wheel_slipRatio;
    end
end

always @ (posedge ap_clk) begin
    if (((guard_variable_for_t_1_load_fu_191_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        wheel_vel_x <= initVel;
    end else if (((grp_update_fu_144_wheel_vel_x_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        wheel_vel_x <= grp_update_fu_144_wheel_vel_x_o;
    end
end

always @ (posedge ap_clk) begin
    if (((guard_variable_for_t_1_load_fu_191_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        guard_variable_for_t <= 1'd1;
        wheel_inertia[21] <= 1'b1;
wheel_inertia[23] <= 1'b1;
wheel_inertia[30] <= 1'b1;
        wheel_mass[17] <= 1'b1;
wheel_mass[19] <= 1'b1;
wheel_mass[20] <= 1'b1;
wheel_mass[21] <= 1'b1;
wheel_mass[22] <= 1'b1;
wheel_mass[23] <= 1'b1;
wheel_mass[24] <= 1'b1;
wheel_mass[25] <= 1'b1;
wheel_mass[30] <= 1'b1;
        wheel_radius[1] <= 1'b1;
wheel_radius[3] <= 1'b1;
wheel_radius[4] <= 1'b1;
wheel_radius[7] <= 1'b1;
wheel_radius[8] <= 1'b1;
wheel_radius[11] <= 1'b1;
wheel_radius[12] <= 1'b1;
wheel_radius[15] <= 1'b1;
wheel_radius[16] <= 1'b1;
wheel_radius[19] <= 1'b1;
wheel_radius[20] <= 1'b1;
wheel_radius[23] <= 1'b1;
wheel_radius[25] <= 1'b1;
wheel_radius[26] <= 1'b1;
wheel_radius[27] <= 1'b1;
wheel_radius[28] <= 1'b1;
wheel_radius[29] <= 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        angularVel_ap_vld = 1'b1;
    end else begin
        angularVel_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
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
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        force_x_ap_vld = 1'b1;
    end else begin
        force_x_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        force_y_ap_vld = 1'b1;
    end else begin
        force_y_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        slipAngle_ap_vld = 1'b1;
    end else begin
        slipAngle_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        slipRatio_ap_vld = 1'b1;
    end else begin
        slipRatio_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        vel_x_ap_vld = 1'b1;
    end else begin
        vel_x_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (guard_variable_for_t_1_load_fu_191_p1 == 1'd1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else if (((guard_variable_for_t_1_load_fu_191_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_update_fu_144_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign angularVel = wheel_angularVelocit;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign force_x = wheel_fx;

assign force_y = wheel_fz;

assign grp_update_fu_144_ap_start = grp_update_fu_144_ap_start_reg;

assign guard_variable_for_t_1_load_fu_191_p1 = guard_variable_for_t;

assign slipAngle = wheel_slipAngle;

assign slipRatio = wheel_slipRatio;

assign vel_x = wheel_vel_x;

always @ (posedge ap_clk) begin
    wheel_mass[16:0] <= 17'b00000000000000000;
    wheel_mass[18:18] <= 1'b0;
    wheel_mass[29:26] <= 4'b0000;
    wheel_mass[31] <= 1'b0;
    wheel_radius[0] <= 1'b0;
    wheel_radius[2:2] <= 1'b0;
    wheel_radius[6:5] <= 2'b00;
    wheel_radius[10:9] <= 2'b00;
    wheel_radius[14:13] <= 2'b00;
    wheel_radius[18:17] <= 2'b00;
    wheel_radius[22:21] <= 2'b00;
    wheel_radius[24:24] <= 1'b0;
    wheel_radius[31:30] <= 2'b00;
    wheel_inertia[20:0] <= 21'b000000000000000000000;
    wheel_inertia[22:22] <= 1'b0;
    wheel_inertia[29:24] <= 6'b000000;
    wheel_inertia[31] <= 1'b0;
end

endmodule //top_level_wheelSimWithMass