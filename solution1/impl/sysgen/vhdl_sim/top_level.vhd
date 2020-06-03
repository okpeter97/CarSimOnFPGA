-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_level is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    deltaTime : IN STD_LOGIC_VECTOR (31 downto 0);
    torque : IN STD_LOGIC_VECTOR (31 downto 0);
    velocity_x : IN STD_LOGIC_VECTOR (31 downto 0);
    velocity_z : IN STD_LOGIC_VECTOR (31 downto 0);
    load : IN STD_LOGIC_VECTOR (31 downto 0);
    steeringAngle : IN STD_LOGIC_VECTOR (31 downto 0);
    force_x : OUT STD_LOGIC_VECTOR (31 downto 0);
    force_x_ap_vld : OUT STD_LOGIC;
    force_z : OUT STD_LOGIC_VECTOR (31 downto 0);
    force_z_ap_vld : OUT STD_LOGIC;
    angularVel : OUT STD_LOGIC_VECTOR (31 downto 0);
    angularVel_ap_vld : OUT STD_LOGIC );
end;


architecture behav of top_level is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "top_level,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.625000,HLS_SYN_LAT=71,HLS_SYN_TPT=none,HLS_SYN_MEM=16,HLS_SYN_DSP=194,HLS_SYN_FF=12421,HLS_SYN_LUT=17713,HLS_VERSION=2019_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (24 downto 0) := "0000000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (24 downto 0) := "0000000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (24 downto 0) := "0000000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (24 downto 0) := "0000001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (24 downto 0) := "0000010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (24 downto 0) := "0000100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (24 downto 0) := "0001000000000000000000000";
    constant ap_ST_fsm_state23 : STD_LOGIC_VECTOR (24 downto 0) := "0010000000000000000000000";
    constant ap_ST_fsm_state24 : STD_LOGIC_VECTOR (24 downto 0) := "0100000000000000000000000";
    constant ap_ST_fsm_state25 : STD_LOGIC_VECTOR (24 downto 0) := "1000000000000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_80000000 : STD_LOGIC_VECTOR (31 downto 0) := "10000000000000000000000000000000";
    constant ap_const_lv32_40A00000 : STD_LOGIC_VECTOR (31 downto 0) := "01000000101000000000000000000000";
    constant ap_const_lv32_11 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010001";
    constant ap_const_lv32_12 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010010";
    constant ap_const_lv32_15 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010101";
    constant ap_const_lv32_16 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010110";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal wheel_angularVelocit : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal grp_fu_180_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal x_assign_reg_205 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal grp_sin_or_cos_double_s_fu_93_ap_return : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state15 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state15 : signal is "none";
    signal grp_sin_or_cos_double_s_fu_93_ap_ready : STD_LOGIC;
    signal grp_sin_or_cos_double_s_fu_93_ap_done : STD_LOGIC;
    signal grp_sin_or_cos_double_s_fu_112_ap_ready : STD_LOGIC;
    signal grp_sin_or_cos_double_s_fu_112_ap_done : STD_LOGIC;
    signal ap_block_state15_on_subcall_done : BOOLEAN;
    signal grp_sin_or_cos_double_s_fu_112_ap_return : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_172_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal cos_steer_reg_221 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state16 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state16 : signal is "none";
    signal grp_fu_176_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sin_steer_reg_226 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_166_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1_i_reg_232 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state17 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state17 : signal is "none";
    signal grp_fu_146_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_2_i_reg_242 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state20 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state20 : signal is "none";
    signal grp_fu_151_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_4_i_reg_247 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_156_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_i_reg_253 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_161_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_7_i_reg_258 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state21 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state21 : signal is "none";
    signal grp_sin_or_cos_double_s_fu_93_ap_start : STD_LOGIC;
    signal grp_sin_or_cos_double_s_fu_93_ap_idle : STD_LOGIC;
    signal grp_sin_or_cos_double_s_fu_93_do_cos : STD_LOGIC;
    signal grp_sin_or_cos_double_s_fu_112_ap_start : STD_LOGIC;
    signal grp_sin_or_cos_double_s_fu_112_ap_idle : STD_LOGIC;
    signal grp_sin_or_cos_double_s_fu_112_do_cos : STD_LOGIC;
    signal grp_sin_or_cos_double_s_fu_93_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state14 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state14 : signal is "none";
    signal grp_sin_or_cos_double_s_fu_112_ap_start_reg : STD_LOGIC := '0';
    signal grp_fu_131_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state25 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state25 : signal is "none";
    signal grp_fu_136_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_141_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_166_ce : STD_LOGIC;
    signal ap_CS_fsm_state18 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state18 : signal is "none";
    signal ap_CS_fsm_state19 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state19 : signal is "none";
    signal ap_CS_fsm_state22 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state22 : signal is "none";
    signal ap_CS_fsm_state23 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state23 : signal is "none";
    signal ap_CS_fsm_state24 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state24 : signal is "none";
    signal grp_fu_172_ce : STD_LOGIC;
    signal grp_fu_176_ce : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (24 downto 0);

    component sin_or_cos_double_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        t_in : IN STD_LOGIC_VECTOR (63 downto 0);
        do_cos : IN STD_LOGIC;
        ap_return : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component top_level_fadd_32qcK IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component top_level_fmul_32rcU IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component top_level_fdiv_32sc4 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component top_level_fptrunctde IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component top_level_fpext_3udo IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;



begin
    grp_sin_or_cos_double_s_fu_93 : component sin_or_cos_double_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_sin_or_cos_double_s_fu_93_ap_start,
        ap_done => grp_sin_or_cos_double_s_fu_93_ap_done,
        ap_idle => grp_sin_or_cos_double_s_fu_93_ap_idle,
        ap_ready => grp_sin_or_cos_double_s_fu_93_ap_ready,
        t_in => x_assign_reg_205,
        do_cos => grp_sin_or_cos_double_s_fu_93_do_cos,
        ap_return => grp_sin_or_cos_double_s_fu_93_ap_return);

    grp_sin_or_cos_double_s_fu_112 : component sin_or_cos_double_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_sin_or_cos_double_s_fu_112_ap_start,
        ap_done => grp_sin_or_cos_double_s_fu_112_ap_done,
        ap_idle => grp_sin_or_cos_double_s_fu_112_ap_idle,
        ap_ready => grp_sin_or_cos_double_s_fu_112_ap_ready,
        t_in => x_assign_reg_205,
        do_cos => grp_sin_or_cos_double_s_fu_112_do_cos,
        ap_return => grp_sin_or_cos_double_s_fu_112_ap_return);

    top_level_fadd_32qcK_U34 : component top_level_fadd_32qcK
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => wheel_angularVelocit,
        din1 => tmp_2_i_reg_242,
        ce => ap_const_logic_1,
        dout => grp_fu_131_p2);

    top_level_fadd_32qcK_U35 : component top_level_fadd_32qcK
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => tmp_4_i_reg_247,
        din1 => tmp_6_i_reg_253,
        ce => ap_const_logic_1,
        dout => grp_fu_136_p2);

    top_level_fadd_32qcK_U36 : component top_level_fadd_32qcK
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => tmp_7_i_reg_258,
        din1 => tmp_4_i_reg_247,
        ce => ap_const_logic_1,
        dout => grp_fu_141_p2);

    top_level_fmul_32rcU_U37 : component top_level_fmul_32rcU
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => tmp_1_i_reg_232,
        din1 => deltaTime,
        ce => ap_const_logic_1,
        dout => grp_fu_146_p2);

    top_level_fmul_32rcU_U38 : component top_level_fmul_32rcU
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => cos_steer_reg_221,
        din1 => ap_const_lv32_0,
        ce => ap_const_logic_1,
        dout => grp_fu_151_p2);

    top_level_fmul_32rcU_U39 : component top_level_fmul_32rcU
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => sin_steer_reg_226,
        din1 => ap_const_lv32_0,
        ce => ap_const_logic_1,
        dout => grp_fu_156_p2);

    top_level_fmul_32rcU_U40 : component top_level_fmul_32rcU
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => sin_steer_reg_226,
        din1 => ap_const_lv32_80000000,
        ce => ap_const_logic_1,
        dout => grp_fu_161_p2);

    top_level_fdiv_32sc4_U41 : component top_level_fdiv_32sc4
    generic map (
        ID => 1,
        NUM_STAGE => 16,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => torque,
        din1 => ap_const_lv32_40A00000,
        ce => grp_fu_166_ce,
        dout => grp_fu_166_p2);

    top_level_fptrunctde_U42 : component top_level_fptrunctde
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 64,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_sin_or_cos_double_s_fu_93_ap_return,
        ce => grp_fu_172_ce,
        dout => grp_fu_172_p1);

    top_level_fptrunctde_U43 : component top_level_fptrunctde
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 64,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_sin_or_cos_double_s_fu_112_ap_return,
        ce => grp_fu_176_ce,
        dout => grp_fu_176_p1);

    top_level_fpext_3udo_U44 : component top_level_fpext_3udo
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => steeringAngle,
        ce => ap_const_logic_1,
        dout => grp_fu_180_p1);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_sin_or_cos_double_s_fu_112_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_sin_or_cos_double_s_fu_112_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
                    grp_sin_or_cos_double_s_fu_112_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_sin_or_cos_double_s_fu_112_ap_ready = ap_const_logic_1)) then 
                    grp_sin_or_cos_double_s_fu_112_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_sin_or_cos_double_s_fu_93_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_sin_or_cos_double_s_fu_93_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
                    grp_sin_or_cos_double_s_fu_93_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_sin_or_cos_double_s_fu_93_ap_ready = ap_const_logic_1)) then 
                    grp_sin_or_cos_double_s_fu_93_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state16)) then
                cos_steer_reg_221 <= grp_fu_172_p1;
                sin_steer_reg_226 <= grp_fu_176_p1;
                tmp_1_i_reg_232 <= grp_fu_166_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state20)) then
                tmp_2_i_reg_242 <= grp_fu_146_p2;
                tmp_4_i_reg_247 <= grp_fu_151_p2;
                tmp_6_i_reg_253 <= grp_fu_156_p2;
                tmp_7_i_reg_258 <= grp_fu_161_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state25)) then
                wheel_angularVelocit <= grp_fu_131_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state13)) then
                x_assign_reg_205 <= grp_fu_180_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state15, ap_block_state15_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                if (((ap_const_boolean_0 = ap_block_state15_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state15))) then
                    ap_NS_fsm <= ap_ST_fsm_state16;
                else
                    ap_NS_fsm <= ap_ST_fsm_state15;
                end if;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state18;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state19;
            when ap_ST_fsm_state19 => 
                ap_NS_fsm <= ap_ST_fsm_state20;
            when ap_ST_fsm_state20 => 
                ap_NS_fsm <= ap_ST_fsm_state21;
            when ap_ST_fsm_state21 => 
                ap_NS_fsm <= ap_ST_fsm_state22;
            when ap_ST_fsm_state22 => 
                ap_NS_fsm <= ap_ST_fsm_state23;
            when ap_ST_fsm_state23 => 
                ap_NS_fsm <= ap_ST_fsm_state24;
            when ap_ST_fsm_state24 => 
                ap_NS_fsm <= ap_ST_fsm_state25;
            when ap_ST_fsm_state25 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    angularVel <= grp_fu_131_p2;

    angularVel_ap_vld_assign_proc : process(ap_CS_fsm_state25)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state25)) then 
            angularVel_ap_vld <= ap_const_logic_1;
        else 
            angularVel_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state14 <= ap_CS_fsm(13);
    ap_CS_fsm_state15 <= ap_CS_fsm(14);
    ap_CS_fsm_state16 <= ap_CS_fsm(15);
    ap_CS_fsm_state17 <= ap_CS_fsm(16);
    ap_CS_fsm_state18 <= ap_CS_fsm(17);
    ap_CS_fsm_state19 <= ap_CS_fsm(18);
    ap_CS_fsm_state20 <= ap_CS_fsm(19);
    ap_CS_fsm_state21 <= ap_CS_fsm(20);
    ap_CS_fsm_state22 <= ap_CS_fsm(21);
    ap_CS_fsm_state23 <= ap_CS_fsm(22);
    ap_CS_fsm_state24 <= ap_CS_fsm(23);
    ap_CS_fsm_state25 <= ap_CS_fsm(24);

    ap_block_state15_on_subcall_done_assign_proc : process(grp_sin_or_cos_double_s_fu_93_ap_done, grp_sin_or_cos_double_s_fu_112_ap_done)
    begin
                ap_block_state15_on_subcall_done <= ((grp_sin_or_cos_double_s_fu_112_ap_done = ap_const_logic_0) or (grp_sin_or_cos_double_s_fu_93_ap_done = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state25)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state25)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state25)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state25)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    force_x <= grp_fu_136_p2;

    force_x_ap_vld_assign_proc : process(ap_CS_fsm_state25)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state25)) then 
            force_x_ap_vld <= ap_const_logic_1;
        else 
            force_x_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    force_z <= grp_fu_141_p2;

    force_z_ap_vld_assign_proc : process(ap_CS_fsm_state25)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state25)) then 
            force_z_ap_vld <= ap_const_logic_1;
        else 
            force_z_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_166_ce_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state15, ap_block_state15_on_subcall_done, ap_CS_fsm_state17, ap_CS_fsm_state20, ap_CS_fsm_state21, ap_CS_fsm_state25, ap_CS_fsm_state18, ap_CS_fsm_state19, ap_CS_fsm_state22, ap_CS_fsm_state23, ap_CS_fsm_state24)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state24) or (ap_const_logic_1 = ap_CS_fsm_state23) or (ap_const_logic_1 = ap_CS_fsm_state22) or (ap_const_logic_1 = ap_CS_fsm_state19) or (ap_const_logic_1 = ap_CS_fsm_state18) or (ap_const_logic_1 = ap_CS_fsm_state25) or (ap_const_logic_1 = ap_CS_fsm_state21) or (ap_const_logic_1 = ap_CS_fsm_state20) or (ap_const_logic_1 = ap_CS_fsm_state17) or ((ap_const_boolean_1 = ap_block_state15_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state15)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            grp_fu_166_ce <= ap_const_logic_0;
        else 
            grp_fu_166_ce <= ap_const_logic_1;
        end if; 
    end process;


    grp_fu_172_ce_assign_proc : process(ap_CS_fsm_state15, ap_block_state15_on_subcall_done, ap_CS_fsm_state16)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state16) or ((ap_const_boolean_0 = ap_block_state15_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state15)))) then 
            grp_fu_172_ce <= ap_const_logic_1;
        else 
            grp_fu_172_ce <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_176_ce_assign_proc : process(ap_CS_fsm_state15, ap_block_state15_on_subcall_done, ap_CS_fsm_state16)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state16) or ((ap_const_boolean_0 = ap_block_state15_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state15)))) then 
            grp_fu_176_ce <= ap_const_logic_1;
        else 
            grp_fu_176_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_sin_or_cos_double_s_fu_112_ap_start <= grp_sin_or_cos_double_s_fu_112_ap_start_reg;
    grp_sin_or_cos_double_s_fu_112_do_cos <= ap_const_logic_0;
    grp_sin_or_cos_double_s_fu_93_ap_start <= grp_sin_or_cos_double_s_fu_93_ap_start_reg;
    grp_sin_or_cos_double_s_fu_93_do_cos <= ap_const_logic_1;
end behav;
