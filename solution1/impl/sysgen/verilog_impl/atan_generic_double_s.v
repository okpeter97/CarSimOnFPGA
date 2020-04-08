// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module atan_generic_double_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        t_in,
        ap_return
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] t_in;
output  [63:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[63:0] ap_return;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] cordic_ctab_table_12_address0;
reg    cordic_ctab_table_12_ce0;
wire   [125:0] cordic_ctab_table_12_q0;
wire   [51:0] tmp_V_11_fu_219_p1;
reg   [51:0] tmp_V_11_reg_767;
wire   [0:0] icmp_ln849_fu_223_p2;
reg   [0:0] icmp_ln849_reg_772;
wire   [0:0] isNeg_fu_239_p3;
reg   [0:0] isNeg_reg_776;
wire   [11:0] exp_2_fu_257_p3;
reg   [11:0] exp_2_reg_781;
wire   [87:0] y_V_fu_300_p1;
wire    ap_CS_fsm_state2;
wire   [6:0] k_fu_310_p2;
reg   [6:0] k_reg_794;
wire    ap_CS_fsm_state3;
wire   [87:0] r_V_37_fu_320_p2;
reg   [87:0] r_V_37_reg_799;
wire   [0:0] icmp_ln167_fu_304_p2;
wire   [87:0] r_V_38_fu_326_p2;
reg   [87:0] r_V_38_reg_805;
wire   [0:0] icmp_ln839_fu_337_p2;
reg   [0:0] icmp_ln839_reg_816;
wire   [85:0] tmp_V_fu_343_p2;
reg   [85:0] tmp_V_reg_820;
wire   [0:0] tmp_58_fu_349_p3;
reg   [0:0] tmp_58_reg_825;
wire    ap_CS_fsm_state4;
wire   [87:0] tx_V_fu_367_p3;
reg   [87:0] tx_V_reg_830;
wire   [87:0] ty_V_fu_393_p3;
reg   [87:0] ty_V_reg_835;
wire   [84:0] p_Val2_51_fu_423_p2;
reg   [84:0] p_Val2_51_reg_840;
wire   [85:0] tz_V_fu_444_p3;
wire    ap_CS_fsm_state5;
wire   [0:0] p_Result_39_fu_451_p3;
reg   [0:0] p_Result_39_reg_850;
wire    ap_CS_fsm_state6;
wire   [85:0] tmp_V_13_fu_459_p3;
reg   [85:0] tmp_V_13_reg_855;
wire   [31:0] l_fu_524_p3;
reg   [31:0] l_reg_863;
wire   [10:0] trunc_ln847_fu_532_p1;
reg   [10:0] trunc_ln847_reg_868;
wire   [31:0] sub_ln848_fu_536_p2;
reg   [31:0] sub_ln848_reg_873;
wire    ap_CS_fsm_state7;
wire   [31:0] or_ln_fu_633_p3;
reg   [31:0] or_ln_reg_879;
wire   [0:0] icmp_ln858_fu_641_p2;
reg   [0:0] icmp_ln858_reg_884;
reg   [62:0] m_4_reg_889;
wire    ap_CS_fsm_state8;
reg   [0:0] tmp_64_reg_894;
reg   [85:0] tmp_V_12_reg_147;
reg   [87:0] p_Val2_28_reg_159;
reg   [87:0] p_Val2_40_reg_169;
reg   [6:0] ush_1_reg_181;
wire   [63:0] bitcast_ln683_fu_757_p1;
reg   [63:0] ap_phi_mux_p_071_phi_fu_196_p6;
reg   [63:0] p_071_reg_192;
wire    ap_CS_fsm_state9;
wire   [63:0] zext_ln192_fu_332_p1;
wire   [63:0] p_Val2_s_fu_205_p1;
wire   [10:0] tmp_V_10_fu_209_p4;
wire   [11:0] zext_ln502_fu_229_p1;
wire   [11:0] exp_fu_233_p2;
wire   [10:0] sub_ln1311_fu_247_p2;
wire  signed [11:0] sext_ln1311_fu_253_p1;
wire  signed [31:0] sext_ln1311_1_fu_274_p1;
wire   [85:0] X_V_fu_265_p4;
wire   [85:0] zext_ln1287_fu_277_p1;
wire   [85:0] r_V_fu_281_p2;
wire   [85:0] r_V_32_fu_287_p2;
wire   [85:0] r_V_36_fu_293_p3;
wire   [87:0] zext_ln1253_fu_316_p1;
wire   [87:0] sub_ln130_fu_357_p2;
wire   [87:0] add_ln130_fu_362_p2;
wire   [0:0] tmp_59_fu_375_p3;
wire   [87:0] add_ln130_1_fu_388_p2;
wire   [87:0] sub_ln130_1_fu_383_p2;
wire   [0:0] tmp_60_fu_411_p3;
wire   [84:0] trunc_ln667_1_fu_401_p4;
wire   [84:0] zext_ln369_fu_419_p1;
wire   [85:0] zext_ln369_1_fu_429_p1;
wire   [85:0] sub_ln130_2_fu_432_p2;
wire   [85:0] add_ln130_2_fu_438_p2;
wire   [63:0] p_Result_s_fu_466_p4;
reg   [63:0] tmp_4_fu_476_p3;
wire   [21:0] trunc_ln1035_fu_494_p1;
wire   [63:0] p_Result_40_fu_498_p3;
reg   [63:0] tmp_fu_506_p3;
wire   [31:0] trunc_ln1028_fu_484_p1;
wire   [31:0] trunc_ln1037_fu_514_p1;
wire   [0:0] icmp_ln1029_fu_488_p2;
wire   [31:0] NZeros_fu_518_p2;
wire   [31:0] lsb_index_fu_541_p2;
wire   [30:0] tmp_62_fu_547_p4;
wire   [6:0] trunc_ln851_fu_563_p1;
wire   [6:0] sub_ln851_fu_567_p2;
wire   [85:0] zext_ln851_fu_573_p1;
wire   [85:0] lshr_ln851_fu_577_p2;
wire   [85:0] p_Result_37_fu_583_p2;
wire   [0:0] icmp_ln851_fu_557_p2;
wire   [0:0] icmp_ln851_1_fu_588_p2;
wire   [0:0] tmp_63_fu_600_p3;
wire   [0:0] p_Result_5_fu_614_p3;
wire   [0:0] xor_ln853_fu_608_p2;
wire   [0:0] and_ln853_fu_621_p2;
wire   [0:0] a_fu_594_p2;
wire   [0:0] or_ln853_fu_627_p2;
wire   [31:0] add_ln858_fu_647_p2;
wire   [85:0] zext_ln858_fu_652_p1;
wire   [31:0] sub_ln858_fu_661_p2;
wire   [85:0] zext_ln858_1_fu_666_p1;
wire   [85:0] lshr_ln858_fu_656_p2;
wire   [85:0] shl_ln858_fu_670_p2;
wire   [63:0] trunc_ln858_fu_675_p1;
wire   [63:0] trunc_ln858_1_fu_679_p1;
wire   [63:0] m_fu_683_p3;
wire   [63:0] zext_ln865_fu_690_p1;
wire   [63:0] m_1_fu_693_p2;
wire   [10:0] select_ln869_fu_720_p3;
wire   [10:0] sub_ln869_fu_727_p2;
wire   [10:0] add_ln869_fu_732_p2;
wire   [63:0] m_5_fu_717_p1;
wire   [11:0] tmp_9_fu_738_p3;
wire   [63:0] p_Result_41_fu_745_p5;
reg   [63:0] ap_return_preg;
reg   [8:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_return_preg = 64'd0;
end

atan_generic_doubqcK #(
    .DataWidth( 126 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
cordic_ctab_table_12_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(cordic_ctab_table_12_address0),
    .ce0(cordic_ctab_table_12_ce0),
    .q0(cordic_ctab_table_12_q0)
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
        if ((1'b1 == ap_CS_fsm_state9)) begin
            ap_return_preg <= ap_phi_mux_p_071_phi_fu_196_p6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln839_fu_337_p2 == 1'd1) & (icmp_ln167_fu_304_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        p_071_reg_192 <= 64'd0;
    end else if (((icmp_ln849_fu_223_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        p_071_reg_192 <= t_in;
    end else if (((icmp_ln839_reg_816 == 1'd0) & (icmp_ln849_reg_772 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        p_071_reg_192 <= bitcast_ln683_fu_757_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_Val2_28_reg_159 <= ty_V_reg_835;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        p_Val2_28_reg_159 <= y_V_fu_300_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_Val2_40_reg_169 <= tx_V_reg_830;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        p_Val2_40_reg_169 <= 88'd38685626227668133590597632;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_V_12_reg_147 <= tz_V_fu_444_p3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_V_12_reg_147 <= 86'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ush_1_reg_181 <= k_reg_794;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        ush_1_reg_181 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln849_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        exp_2_reg_781 <= exp_2_fu_257_p3;
        isNeg_reg_776 <= exp_fu_233_p2[32'd11];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln167_fu_304_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        icmp_ln839_reg_816 <= icmp_ln839_fu_337_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        icmp_ln849_reg_772 <= icmp_ln849_fu_223_p2;
        tmp_V_11_reg_767 <= tmp_V_11_fu_219_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        icmp_ln858_reg_884 <= icmp_ln858_fu_641_p2;
        or_ln_reg_879[0] <= or_ln_fu_633_p3[0];
        sub_ln848_reg_873 <= sub_ln848_fu_536_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        k_reg_794 <= k_fu_310_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        l_reg_863 <= l_fu_524_p3;
        p_Result_39_reg_850 <= tmp_V_12_reg_147[32'd85];
        tmp_V_13_reg_855 <= tmp_V_13_fu_459_p3;
        trunc_ln847_reg_868 <= trunc_ln847_fu_532_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        m_4_reg_889 <= {{m_1_fu_693_p2[63:1]}};
        tmp_64_reg_894 <= m_1_fu_693_p2[32'd54];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_Val2_51_reg_840 <= p_Val2_51_fu_423_p2;
        tmp_58_reg_825 <= p_Val2_28_reg_159[32'd87];
        tx_V_reg_830 <= tx_V_fu_367_p3;
        ty_V_reg_835 <= ty_V_fu_393_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln167_fu_304_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        r_V_37_reg_799 <= r_V_37_fu_320_p2;
        r_V_38_reg_805 <= r_V_38_fu_326_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln167_fu_304_p2 == 1'd1) & (icmp_ln839_fu_337_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_V_reg_820 <= tmp_V_fu_343_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln839_reg_816 == 1'd0) & (icmp_ln849_reg_772 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_phi_mux_p_071_phi_fu_196_p6 = bitcast_ln683_fu_757_p1;
    end else begin
        ap_phi_mux_p_071_phi_fu_196_p6 = p_071_reg_192;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        ap_return = ap_phi_mux_p_071_phi_fu_196_p6;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cordic_ctab_table_12_ce0 = 1'b1;
    end else begin
        cordic_ctab_table_12_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln849_fu_223_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else if (((icmp_ln849_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln839_fu_337_p2 == 1'd1) & (icmp_ln167_fu_304_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else if (((icmp_ln167_fu_304_p2 == 1'd1) & (icmp_ln839_fu_337_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign NZeros_fu_518_p2 = (trunc_ln1028_fu_484_p1 + trunc_ln1037_fu_514_p1);

assign X_V_fu_265_p4 = {{{{1'd1}, {tmp_V_11_reg_767}}}, {33'd0}};

assign a_fu_594_p2 = (icmp_ln851_fu_557_p2 & icmp_ln851_1_fu_588_p2);

assign add_ln130_1_fu_388_p2 = (p_Val2_28_reg_159 + r_V_38_reg_805);

assign add_ln130_2_fu_438_p2 = (tmp_V_12_reg_147 + zext_ln369_1_fu_429_p1);

assign add_ln130_fu_362_p2 = (p_Val2_40_reg_169 + r_V_37_reg_799);

assign add_ln858_fu_647_p2 = ($signed(32'd4294967242) + $signed(sub_ln848_reg_873));

assign add_ln869_fu_732_p2 = (select_ln869_fu_720_p3 + sub_ln869_fu_727_p2);

assign and_ln853_fu_621_p2 = (xor_ln853_fu_608_p2 & p_Result_5_fu_614_p3);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign bitcast_ln683_fu_757_p1 = p_Result_41_fu_745_p5;

assign cordic_ctab_table_12_address0 = zext_ln192_fu_332_p1;

assign exp_2_fu_257_p3 = ((isNeg_fu_239_p3[0:0] === 1'b1) ? sext_ln1311_fu_253_p1 : exp_fu_233_p2);

assign exp_fu_233_p2 = ($signed(zext_ln502_fu_229_p1) + $signed(12'd3073));

assign icmp_ln1029_fu_488_p2 = ((p_Result_s_fu_466_p4 == 64'd0) ? 1'b1 : 1'b0);

assign icmp_ln167_fu_304_p2 = ((ush_1_reg_181 == 7'd88) ? 1'b1 : 1'b0);

assign icmp_ln839_fu_337_p2 = ((tmp_V_12_reg_147 == 86'd0) ? 1'b1 : 1'b0);

assign icmp_ln849_fu_223_p2 = ((tmp_V_10_fu_209_p4 < 11'd996) ? 1'b1 : 1'b0);

assign icmp_ln851_1_fu_588_p2 = ((p_Result_37_fu_583_p2 != 86'd0) ? 1'b1 : 1'b0);

assign icmp_ln851_fu_557_p2 = (($signed(tmp_62_fu_547_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign icmp_ln858_fu_641_p2 = (($signed(lsb_index_fu_541_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign isNeg_fu_239_p3 = exp_fu_233_p2[32'd11];

assign k_fu_310_p2 = (ush_1_reg_181 + 7'd1);

assign l_fu_524_p3 = ((icmp_ln1029_fu_488_p2[0:0] === 1'b1) ? NZeros_fu_518_p2 : trunc_ln1028_fu_484_p1);

assign lsb_index_fu_541_p2 = ($signed(32'd4294967243) + $signed(sub_ln848_fu_536_p2));

assign lshr_ln851_fu_577_p2 = 86'd77371252455336267181195263 >> zext_ln851_fu_573_p1;

assign lshr_ln858_fu_656_p2 = tmp_V_13_reg_855 >> zext_ln858_fu_652_p1;

assign m_1_fu_693_p2 = (m_fu_683_p3 + zext_ln865_fu_690_p1);

assign m_5_fu_717_p1 = m_4_reg_889;

assign m_fu_683_p3 = ((icmp_ln858_reg_884[0:0] === 1'b1) ? trunc_ln858_fu_675_p1 : trunc_ln858_1_fu_679_p1);

assign or_ln853_fu_627_p2 = (and_ln853_fu_621_p2 | a_fu_594_p2);

assign or_ln_fu_633_p3 = {{31'd0}, {or_ln853_fu_627_p2}};

assign p_Result_37_fu_583_p2 = (tmp_V_13_reg_855 & lshr_ln851_fu_577_p2);

assign p_Result_39_fu_451_p3 = tmp_V_12_reg_147[32'd85];

assign p_Result_40_fu_498_p3 = {{trunc_ln1035_fu_494_p1}, {42'd4398046511103}};

assign p_Result_41_fu_745_p5 = {{tmp_9_fu_738_p3}, {m_5_fu_717_p1[51:0]}};

assign p_Result_5_fu_614_p3 = tmp_V_13_reg_855[lsb_index_fu_541_p2];

assign p_Result_s_fu_466_p4 = {{tmp_V_13_fu_459_p3[85:22]}};

assign p_Val2_51_fu_423_p2 = (trunc_ln667_1_fu_401_p4 + zext_ln369_fu_419_p1);

assign p_Val2_s_fu_205_p1 = t_in;

assign r_V_32_fu_287_p2 = X_V_fu_265_p4 << zext_ln1287_fu_277_p1;

assign r_V_36_fu_293_p3 = ((isNeg_reg_776[0:0] === 1'b1) ? r_V_fu_281_p2 : r_V_32_fu_287_p2);

assign r_V_37_fu_320_p2 = $signed(p_Val2_28_reg_159) >>> zext_ln1253_fu_316_p1;

assign r_V_38_fu_326_p2 = $signed(p_Val2_40_reg_169) >>> zext_ln1253_fu_316_p1;

assign r_V_fu_281_p2 = X_V_fu_265_p4 >> zext_ln1287_fu_277_p1;

assign select_ln869_fu_720_p3 = ((tmp_64_reg_894[0:0] === 1'b1) ? 11'd1023 : 11'd1022);

assign sext_ln1311_1_fu_274_p1 = $signed(exp_2_reg_781);

assign sext_ln1311_fu_253_p1 = $signed(sub_ln1311_fu_247_p2);

assign shl_ln858_fu_670_p2 = tmp_V_13_reg_855 << zext_ln858_1_fu_666_p1;

assign sub_ln130_1_fu_383_p2 = (p_Val2_28_reg_159 - r_V_38_reg_805);

assign sub_ln130_2_fu_432_p2 = (tmp_V_12_reg_147 - zext_ln369_1_fu_429_p1);

assign sub_ln130_fu_357_p2 = (p_Val2_40_reg_169 - r_V_37_reg_799);

assign sub_ln1311_fu_247_p2 = (11'd1023 - tmp_V_10_fu_209_p4);

assign sub_ln848_fu_536_p2 = (32'd86 - l_reg_863);

assign sub_ln851_fu_567_p2 = (7'd12 - trunc_ln851_fu_563_p1);

assign sub_ln858_fu_661_p2 = (32'd54 - sub_ln848_reg_873);

assign sub_ln869_fu_727_p2 = (11'd1 - trunc_ln847_reg_868);

always @ (p_Result_s_fu_466_p4) begin
    if (p_Result_s_fu_466_p4[63] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd0;
    end else if (p_Result_s_fu_466_p4[62] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd1;
    end else if (p_Result_s_fu_466_p4[61] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd2;
    end else if (p_Result_s_fu_466_p4[60] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd3;
    end else if (p_Result_s_fu_466_p4[59] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd4;
    end else if (p_Result_s_fu_466_p4[58] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd5;
    end else if (p_Result_s_fu_466_p4[57] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd6;
    end else if (p_Result_s_fu_466_p4[56] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd7;
    end else if (p_Result_s_fu_466_p4[55] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd8;
    end else if (p_Result_s_fu_466_p4[54] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd9;
    end else if (p_Result_s_fu_466_p4[53] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd10;
    end else if (p_Result_s_fu_466_p4[52] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd11;
    end else if (p_Result_s_fu_466_p4[51] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd12;
    end else if (p_Result_s_fu_466_p4[50] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd13;
    end else if (p_Result_s_fu_466_p4[49] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd14;
    end else if (p_Result_s_fu_466_p4[48] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd15;
    end else if (p_Result_s_fu_466_p4[47] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd16;
    end else if (p_Result_s_fu_466_p4[46] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd17;
    end else if (p_Result_s_fu_466_p4[45] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd18;
    end else if (p_Result_s_fu_466_p4[44] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd19;
    end else if (p_Result_s_fu_466_p4[43] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd20;
    end else if (p_Result_s_fu_466_p4[42] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd21;
    end else if (p_Result_s_fu_466_p4[41] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd22;
    end else if (p_Result_s_fu_466_p4[40] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd23;
    end else if (p_Result_s_fu_466_p4[39] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd24;
    end else if (p_Result_s_fu_466_p4[38] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd25;
    end else if (p_Result_s_fu_466_p4[37] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd26;
    end else if (p_Result_s_fu_466_p4[36] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd27;
    end else if (p_Result_s_fu_466_p4[35] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd28;
    end else if (p_Result_s_fu_466_p4[34] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd29;
    end else if (p_Result_s_fu_466_p4[33] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd30;
    end else if (p_Result_s_fu_466_p4[32] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd31;
    end else if (p_Result_s_fu_466_p4[31] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd32;
    end else if (p_Result_s_fu_466_p4[30] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd33;
    end else if (p_Result_s_fu_466_p4[29] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd34;
    end else if (p_Result_s_fu_466_p4[28] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd35;
    end else if (p_Result_s_fu_466_p4[27] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd36;
    end else if (p_Result_s_fu_466_p4[26] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd37;
    end else if (p_Result_s_fu_466_p4[25] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd38;
    end else if (p_Result_s_fu_466_p4[24] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd39;
    end else if (p_Result_s_fu_466_p4[23] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd40;
    end else if (p_Result_s_fu_466_p4[22] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd41;
    end else if (p_Result_s_fu_466_p4[21] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd42;
    end else if (p_Result_s_fu_466_p4[20] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd43;
    end else if (p_Result_s_fu_466_p4[19] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd44;
    end else if (p_Result_s_fu_466_p4[18] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd45;
    end else if (p_Result_s_fu_466_p4[17] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd46;
    end else if (p_Result_s_fu_466_p4[16] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd47;
    end else if (p_Result_s_fu_466_p4[15] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd48;
    end else if (p_Result_s_fu_466_p4[14] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd49;
    end else if (p_Result_s_fu_466_p4[13] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd50;
    end else if (p_Result_s_fu_466_p4[12] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd51;
    end else if (p_Result_s_fu_466_p4[11] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd52;
    end else if (p_Result_s_fu_466_p4[10] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd53;
    end else if (p_Result_s_fu_466_p4[9] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd54;
    end else if (p_Result_s_fu_466_p4[8] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd55;
    end else if (p_Result_s_fu_466_p4[7] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd56;
    end else if (p_Result_s_fu_466_p4[6] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd57;
    end else if (p_Result_s_fu_466_p4[5] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd58;
    end else if (p_Result_s_fu_466_p4[4] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd59;
    end else if (p_Result_s_fu_466_p4[3] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd60;
    end else if (p_Result_s_fu_466_p4[2] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd61;
    end else if (p_Result_s_fu_466_p4[1] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd62;
    end else if (p_Result_s_fu_466_p4[0] == 1'b1) begin
        tmp_4_fu_476_p3 = 64'd63;
    end else begin
        tmp_4_fu_476_p3 = 64'd64;
    end
end

assign tmp_58_fu_349_p3 = p_Val2_28_reg_159[32'd87];

assign tmp_59_fu_375_p3 = p_Val2_28_reg_159[32'd87];

assign tmp_60_fu_411_p3 = cordic_ctab_table_12_q0[32'd40];

assign tmp_62_fu_547_p4 = {{lsb_index_fu_541_p2[31:1]}};

assign tmp_63_fu_600_p3 = lsb_index_fu_541_p2[32'd31];

assign tmp_9_fu_738_p3 = {{p_Result_39_reg_850}, {add_ln869_fu_732_p2}};

assign tmp_V_10_fu_209_p4 = {{p_Val2_s_fu_205_p1[62:52]}};

assign tmp_V_11_fu_219_p1 = p_Val2_s_fu_205_p1[51:0];

assign tmp_V_13_fu_459_p3 = ((p_Result_39_fu_451_p3[0:0] === 1'b1) ? tmp_V_reg_820 : tmp_V_12_reg_147);

assign tmp_V_fu_343_p2 = (86'd0 - tmp_V_12_reg_147);

always @ (p_Result_40_fu_498_p3) begin
    if (p_Result_40_fu_498_p3[63] == 1'b1) begin
        tmp_fu_506_p3 = 64'd0;
    end else if (p_Result_40_fu_498_p3[62] == 1'b1) begin
        tmp_fu_506_p3 = 64'd1;
    end else if (p_Result_40_fu_498_p3[61] == 1'b1) begin
        tmp_fu_506_p3 = 64'd2;
    end else if (p_Result_40_fu_498_p3[60] == 1'b1) begin
        tmp_fu_506_p3 = 64'd3;
    end else if (p_Result_40_fu_498_p3[59] == 1'b1) begin
        tmp_fu_506_p3 = 64'd4;
    end else if (p_Result_40_fu_498_p3[58] == 1'b1) begin
        tmp_fu_506_p3 = 64'd5;
    end else if (p_Result_40_fu_498_p3[57] == 1'b1) begin
        tmp_fu_506_p3 = 64'd6;
    end else if (p_Result_40_fu_498_p3[56] == 1'b1) begin
        tmp_fu_506_p3 = 64'd7;
    end else if (p_Result_40_fu_498_p3[55] == 1'b1) begin
        tmp_fu_506_p3 = 64'd8;
    end else if (p_Result_40_fu_498_p3[54] == 1'b1) begin
        tmp_fu_506_p3 = 64'd9;
    end else if (p_Result_40_fu_498_p3[53] == 1'b1) begin
        tmp_fu_506_p3 = 64'd10;
    end else if (p_Result_40_fu_498_p3[52] == 1'b1) begin
        tmp_fu_506_p3 = 64'd11;
    end else if (p_Result_40_fu_498_p3[51] == 1'b1) begin
        tmp_fu_506_p3 = 64'd12;
    end else if (p_Result_40_fu_498_p3[50] == 1'b1) begin
        tmp_fu_506_p3 = 64'd13;
    end else if (p_Result_40_fu_498_p3[49] == 1'b1) begin
        tmp_fu_506_p3 = 64'd14;
    end else if (p_Result_40_fu_498_p3[48] == 1'b1) begin
        tmp_fu_506_p3 = 64'd15;
    end else if (p_Result_40_fu_498_p3[47] == 1'b1) begin
        tmp_fu_506_p3 = 64'd16;
    end else if (p_Result_40_fu_498_p3[46] == 1'b1) begin
        tmp_fu_506_p3 = 64'd17;
    end else if (p_Result_40_fu_498_p3[45] == 1'b1) begin
        tmp_fu_506_p3 = 64'd18;
    end else if (p_Result_40_fu_498_p3[44] == 1'b1) begin
        tmp_fu_506_p3 = 64'd19;
    end else if (p_Result_40_fu_498_p3[43] == 1'b1) begin
        tmp_fu_506_p3 = 64'd20;
    end else if (p_Result_40_fu_498_p3[42] == 1'b1) begin
        tmp_fu_506_p3 = 64'd21;
    end else if (p_Result_40_fu_498_p3[41] == 1'b1) begin
        tmp_fu_506_p3 = 64'd22;
    end else if (p_Result_40_fu_498_p3[40] == 1'b1) begin
        tmp_fu_506_p3 = 64'd23;
    end else if (p_Result_40_fu_498_p3[39] == 1'b1) begin
        tmp_fu_506_p3 = 64'd24;
    end else if (p_Result_40_fu_498_p3[38] == 1'b1) begin
        tmp_fu_506_p3 = 64'd25;
    end else if (p_Result_40_fu_498_p3[37] == 1'b1) begin
        tmp_fu_506_p3 = 64'd26;
    end else if (p_Result_40_fu_498_p3[36] == 1'b1) begin
        tmp_fu_506_p3 = 64'd27;
    end else if (p_Result_40_fu_498_p3[35] == 1'b1) begin
        tmp_fu_506_p3 = 64'd28;
    end else if (p_Result_40_fu_498_p3[34] == 1'b1) begin
        tmp_fu_506_p3 = 64'd29;
    end else if (p_Result_40_fu_498_p3[33] == 1'b1) begin
        tmp_fu_506_p3 = 64'd30;
    end else if (p_Result_40_fu_498_p3[32] == 1'b1) begin
        tmp_fu_506_p3 = 64'd31;
    end else if (p_Result_40_fu_498_p3[31] == 1'b1) begin
        tmp_fu_506_p3 = 64'd32;
    end else if (p_Result_40_fu_498_p3[30] == 1'b1) begin
        tmp_fu_506_p3 = 64'd33;
    end else if (p_Result_40_fu_498_p3[29] == 1'b1) begin
        tmp_fu_506_p3 = 64'd34;
    end else if (p_Result_40_fu_498_p3[28] == 1'b1) begin
        tmp_fu_506_p3 = 64'd35;
    end else if (p_Result_40_fu_498_p3[27] == 1'b1) begin
        tmp_fu_506_p3 = 64'd36;
    end else if (p_Result_40_fu_498_p3[26] == 1'b1) begin
        tmp_fu_506_p3 = 64'd37;
    end else if (p_Result_40_fu_498_p3[25] == 1'b1) begin
        tmp_fu_506_p3 = 64'd38;
    end else if (p_Result_40_fu_498_p3[24] == 1'b1) begin
        tmp_fu_506_p3 = 64'd39;
    end else if (p_Result_40_fu_498_p3[23] == 1'b1) begin
        tmp_fu_506_p3 = 64'd40;
    end else if (p_Result_40_fu_498_p3[22] == 1'b1) begin
        tmp_fu_506_p3 = 64'd41;
    end else if (p_Result_40_fu_498_p3[21] == 1'b1) begin
        tmp_fu_506_p3 = 64'd42;
    end else if (p_Result_40_fu_498_p3[20] == 1'b1) begin
        tmp_fu_506_p3 = 64'd43;
    end else if (p_Result_40_fu_498_p3[19] == 1'b1) begin
        tmp_fu_506_p3 = 64'd44;
    end else if (p_Result_40_fu_498_p3[18] == 1'b1) begin
        tmp_fu_506_p3 = 64'd45;
    end else if (p_Result_40_fu_498_p3[17] == 1'b1) begin
        tmp_fu_506_p3 = 64'd46;
    end else if (p_Result_40_fu_498_p3[16] == 1'b1) begin
        tmp_fu_506_p3 = 64'd47;
    end else if (p_Result_40_fu_498_p3[15] == 1'b1) begin
        tmp_fu_506_p3 = 64'd48;
    end else if (p_Result_40_fu_498_p3[14] == 1'b1) begin
        tmp_fu_506_p3 = 64'd49;
    end else if (p_Result_40_fu_498_p3[13] == 1'b1) begin
        tmp_fu_506_p3 = 64'd50;
    end else if (p_Result_40_fu_498_p3[12] == 1'b1) begin
        tmp_fu_506_p3 = 64'd51;
    end else if (p_Result_40_fu_498_p3[11] == 1'b1) begin
        tmp_fu_506_p3 = 64'd52;
    end else if (p_Result_40_fu_498_p3[10] == 1'b1) begin
        tmp_fu_506_p3 = 64'd53;
    end else if (p_Result_40_fu_498_p3[9] == 1'b1) begin
        tmp_fu_506_p3 = 64'd54;
    end else if (p_Result_40_fu_498_p3[8] == 1'b1) begin
        tmp_fu_506_p3 = 64'd55;
    end else if (p_Result_40_fu_498_p3[7] == 1'b1) begin
        tmp_fu_506_p3 = 64'd56;
    end else if (p_Result_40_fu_498_p3[6] == 1'b1) begin
        tmp_fu_506_p3 = 64'd57;
    end else if (p_Result_40_fu_498_p3[5] == 1'b1) begin
        tmp_fu_506_p3 = 64'd58;
    end else if (p_Result_40_fu_498_p3[4] == 1'b1) begin
        tmp_fu_506_p3 = 64'd59;
    end else if (p_Result_40_fu_498_p3[3] == 1'b1) begin
        tmp_fu_506_p3 = 64'd60;
    end else if (p_Result_40_fu_498_p3[2] == 1'b1) begin
        tmp_fu_506_p3 = 64'd61;
    end else if (p_Result_40_fu_498_p3[1] == 1'b1) begin
        tmp_fu_506_p3 = 64'd62;
    end else if (p_Result_40_fu_498_p3[0] == 1'b1) begin
        tmp_fu_506_p3 = 64'd63;
    end else begin
        tmp_fu_506_p3 = 64'd64;
    end
end

assign trunc_ln1028_fu_484_p1 = tmp_4_fu_476_p3[31:0];

assign trunc_ln1035_fu_494_p1 = tmp_V_13_fu_459_p3[21:0];

assign trunc_ln1037_fu_514_p1 = tmp_fu_506_p3[31:0];

assign trunc_ln667_1_fu_401_p4 = {{cordic_ctab_table_12_q0[125:41]}};

assign trunc_ln847_fu_532_p1 = l_fu_524_p3[10:0];

assign trunc_ln851_fu_563_p1 = sub_ln848_fu_536_p2[6:0];

assign trunc_ln858_1_fu_679_p1 = shl_ln858_fu_670_p2[63:0];

assign trunc_ln858_fu_675_p1 = lshr_ln858_fu_656_p2[63:0];

assign tx_V_fu_367_p3 = ((tmp_58_fu_349_p3[0:0] === 1'b1) ? sub_ln130_fu_357_p2 : add_ln130_fu_362_p2);

assign ty_V_fu_393_p3 = ((tmp_59_fu_375_p3[0:0] === 1'b1) ? add_ln130_1_fu_388_p2 : sub_ln130_1_fu_383_p2);

assign tz_V_fu_444_p3 = ((tmp_58_reg_825[0:0] === 1'b1) ? sub_ln130_2_fu_432_p2 : add_ln130_2_fu_438_p2);

assign xor_ln853_fu_608_p2 = (tmp_63_fu_600_p3 ^ 1'd1);

assign y_V_fu_300_p1 = r_V_36_fu_293_p3;

assign zext_ln1253_fu_316_p1 = ush_1_reg_181;

assign zext_ln1287_fu_277_p1 = $unsigned(sext_ln1311_1_fu_274_p1);

assign zext_ln192_fu_332_p1 = ush_1_reg_181;

assign zext_ln369_1_fu_429_p1 = p_Val2_51_reg_840;

assign zext_ln369_fu_419_p1 = tmp_60_fu_411_p3;

assign zext_ln502_fu_229_p1 = tmp_V_10_fu_209_p4;

assign zext_ln851_fu_573_p1 = sub_ln851_fu_567_p2;

assign zext_ln858_1_fu_666_p1 = sub_ln858_fu_661_p2;

assign zext_ln858_fu_652_p1 = add_ln858_fu_647_p2;

assign zext_ln865_fu_690_p1 = or_ln_reg_879;

always @ (posedge ap_clk) begin
    or_ln_reg_879[31:1] <= 31'b0000000000000000000000000000000;
end

endmodule //atan_generic_double_s
