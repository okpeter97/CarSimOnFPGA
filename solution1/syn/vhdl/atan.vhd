-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity atan is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    x : IN STD_LOGIC_VECTOR (63 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (63 downto 0) );
end;


architecture behav of atan is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000001000000000000000000000";
    constant ap_ST_fsm_state23 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000010000000000000000000000";
    constant ap_ST_fsm_state24 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000100000000000000000000000";
    constant ap_ST_fsm_state25 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000001000000000000000000000000";
    constant ap_ST_fsm_state26 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000010000000000000000000000000";
    constant ap_ST_fsm_state27 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000100000000000000000000000000";
    constant ap_ST_fsm_state28 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000001000000000000000000000000000";
    constant ap_ST_fsm_state29 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000010000000000000000000000000000";
    constant ap_ST_fsm_state30 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000100000000000000000000000000000";
    constant ap_ST_fsm_state31 : STD_LOGIC_VECTOR (40 downto 0) := "00000000001000000000000000000000000000000";
    constant ap_ST_fsm_state32 : STD_LOGIC_VECTOR (40 downto 0) := "00000000010000000000000000000000000000000";
    constant ap_ST_fsm_state33 : STD_LOGIC_VECTOR (40 downto 0) := "00000000100000000000000000000000000000000";
    constant ap_ST_fsm_state34 : STD_LOGIC_VECTOR (40 downto 0) := "00000001000000000000000000000000000000000";
    constant ap_ST_fsm_state35 : STD_LOGIC_VECTOR (40 downto 0) := "00000010000000000000000000000000000000000";
    constant ap_ST_fsm_state36 : STD_LOGIC_VECTOR (40 downto 0) := "00000100000000000000000000000000000000000";
    constant ap_ST_fsm_state37 : STD_LOGIC_VECTOR (40 downto 0) := "00001000000000000000000000000000000000000";
    constant ap_ST_fsm_state38 : STD_LOGIC_VECTOR (40 downto 0) := "00010000000000000000000000000000000000000";
    constant ap_ST_fsm_state39 : STD_LOGIC_VECTOR (40 downto 0) := "00100000000000000000000000000000000000000";
    constant ap_ST_fsm_state40 : STD_LOGIC_VECTOR (40 downto 0) := "01000000000000000000000000000000000000000";
    constant ap_ST_fsm_state41 : STD_LOGIC_VECTOR (40 downto 0) := "10000000000000000000000000000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_21 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100001";
    constant ap_const_lv32_22 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100010";
    constant ap_const_lv32_27 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100111";
    constant ap_const_lv32_28 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101000";
    constant ap_const_lv64_3FE921FB54442D18 : STD_LOGIC_VECTOR (63 downto 0) := "0011111111101001001000011111101101010100010001000010110100011000";
    constant ap_const_lv64_3FF921FB54442D18 : STD_LOGIC_VECTOR (63 downto 0) := "0011111111111001001000011111101101010100010001000010110100011000";
    constant ap_const_lv32_23 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100011";
    constant ap_const_lv64_3FF0000000000000 : STD_LOGIC_VECTOR (63 downto 0) := "0011111111110000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_34 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110100";
    constant ap_const_lv32_3E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111110";
    constant ap_const_lv11_7FF : STD_LOGIC_VECTOR (10 downto 0) := "11111111111";
    constant ap_const_lv52_0 : STD_LOGIC_VECTOR (51 downto 0) := "0000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_7FFFFFFFFFFFFFFF : STD_LOGIC_VECTOR (63 downto 0) := "0111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv11_3FE : STD_LOGIC_VECTOR (10 downto 0) := "01111111110";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal p_Result_s_reg_172 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_V_fu_91_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_V_reg_177 : STD_LOGIC_VECTOR (10 downto 0);
    signal absx_fu_117_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal absx_reg_182 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln833_fu_122_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln833_reg_189 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln639_fu_134_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_74_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_4_reg_198 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal octant1_fu_142_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal octant1_reg_202 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_69_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal one_over_x_reg_207 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state33 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state33 : signal is "none";
    signal din_fu_147_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal din_reg_212 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state34 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state34 : signal is "none";
    signal grp_atan_generic_double_s_fu_57_ap_return : STD_LOGIC_VECTOR (63 downto 0);
    signal res_reg_217 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state35 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state35 : signal is "none";
    signal grp_atan_generic_double_s_fu_57_ap_ready : STD_LOGIC;
    signal grp_atan_generic_double_s_fu_57_ap_done : STD_LOGIC;
    signal grp_fu_64_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal res_1_reg_223 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state40 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state40 : signal is "none";
    signal grp_atan_generic_double_s_fu_57_ap_start : STD_LOGIC;
    signal grp_atan_generic_double_s_fu_57_ap_idle : STD_LOGIC;
    signal ap_phi_mux_f_assign_phi_fu_46_p8 : STD_LOGIC_VECTOR (63 downto 0);
    signal f_assign_reg_42 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state41 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state41 : signal is "none";
    signal grp_atan_generic_double_s_fu_57_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state36 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state36 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal grp_fu_74_p0 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Val2_s_fu_79_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln368_fu_105_p1 : STD_LOGIC_VECTOR (62 downto 0);
    signal p_Result_44_fu_109_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_V_14_fu_101_p1 : STD_LOGIC_VECTOR (51 downto 0);
    signal icmp_ln833_3_fu_128_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_56_fu_153_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln368_1_fu_157_p1 : STD_LOGIC_VECTOR (62 downto 0);
    signal p_Result_45_fu_161_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal bitcast_ln512_fu_168_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (40 downto 0);

    component atan_generic_double_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        t_in : IN STD_LOGIC_VECTOR (63 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component top_level_dsub_64rcU IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        din1 : IN STD_LOGIC_VECTOR (63 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component top_level_ddiv_64sc4 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        din1 : IN STD_LOGIC_VECTOR (63 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component top_level_dcmp_64tde IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        din1 : IN STD_LOGIC_VECTOR (63 downto 0);
        ce : IN STD_LOGIC;
        opcode : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;



begin
    grp_atan_generic_double_s_fu_57 : component atan_generic_double_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_atan_generic_double_s_fu_57_ap_start,
        ap_done => grp_atan_generic_double_s_fu_57_ap_done,
        ap_idle => grp_atan_generic_double_s_fu_57_ap_idle,
        ap_ready => grp_atan_generic_double_s_fu_57_ap_ready,
        t_in => din_reg_212,
        ap_return => grp_atan_generic_double_s_fu_57_ap_return);

    top_level_dsub_64rcU_U36 : component top_level_dsub_64rcU
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => ap_const_lv64_3FF921FB54442D18,
        din1 => res_reg_217,
        ce => ap_const_logic_1,
        dout => grp_fu_64_p2);

    top_level_ddiv_64sc4_U37 : component top_level_ddiv_64sc4
    generic map (
        ID => 1,
        NUM_STAGE => 31,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => ap_const_lv64_3FF0000000000000,
        din1 => absx_reg_182,
        ce => ap_const_logic_1,
        dout => grp_fu_69_p2);

    top_level_dcmp_64tde_U38 : component top_level_dcmp_64tde
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 1)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_74_p0,
        din1 => ap_const_lv64_3FF0000000000000,
        ce => ap_const_logic_1,
        opcode => ap_const_lv5_1,
        dout => grp_fu_74_p2);





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


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv64_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state41)) then 
                    ap_return_preg <= bitcast_ln512_fu_168_p1;
                end if; 
            end if;
        end if;
    end process;


    grp_atan_generic_double_s_fu_57_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_atan_generic_double_s_fu_57_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state34)) then 
                    grp_atan_generic_double_s_fu_57_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_atan_generic_double_s_fu_57_ap_ready = ap_const_logic_1)) then 
                    grp_atan_generic_double_s_fu_57_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    f_assign_reg_42_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln833_fu_122_p2 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                f_assign_reg_42 <= select_ln639_fu_134_p3;
            elsif (((octant1_reg_202 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state35) and (grp_atan_generic_double_s_fu_57_ap_done = ap_const_logic_1))) then 
                f_assign_reg_42 <= grp_atan_generic_double_s_fu_57_ap_return;
            elsif (((grp_fu_74_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                f_assign_reg_42 <= ap_const_lv64_3FE921FB54442D18;
            elsif (((tmp_4_reg_198 = ap_const_lv1_0) and (octant1_reg_202 = ap_const_lv1_1) and (icmp_ln833_reg_189 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state41))) then 
                f_assign_reg_42 <= res_1_reg_223;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    absx_reg_182(62 downto 0) <= absx_fu_117_p1(62 downto 0);
                icmp_ln833_reg_189 <= icmp_ln833_fu_122_p2;
                p_Result_s_reg_172 <= p_Val2_s_fu_79_p1(63 downto 63);
                tmp_V_reg_177 <= p_Val2_s_fu_79_p1(62 downto 52);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state34)) then
                din_reg_212 <= din_fu_147_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_fu_74_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                octant1_reg_202 <= octant1_fu_142_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((octant1_reg_202 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state33))) then
                one_over_x_reg_207 <= grp_fu_69_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state40)) then
                res_1_reg_223 <= grp_fu_64_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state35) and (grp_atan_generic_double_s_fu_57_ap_done = ap_const_logic_1))) then
                res_reg_217 <= grp_atan_generic_double_s_fu_57_ap_return;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                tmp_4_reg_198 <= grp_fu_74_p2;
            end if;
        end if;
    end process;
    absx_reg_182(63) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln833_fu_122_p2, grp_fu_74_p2, ap_CS_fsm_state2, octant1_reg_202, ap_CS_fsm_state35, grp_atan_generic_double_s_fu_57_ap_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((icmp_ln833_fu_122_p2 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state41;
                elsif (((icmp_ln833_fu_122_p2 = ap_const_lv1_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((grp_fu_74_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state41;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
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
                ap_NS_fsm <= ap_ST_fsm_state16;
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
                ap_NS_fsm <= ap_ST_fsm_state26;
            when ap_ST_fsm_state26 => 
                ap_NS_fsm <= ap_ST_fsm_state27;
            when ap_ST_fsm_state27 => 
                ap_NS_fsm <= ap_ST_fsm_state28;
            when ap_ST_fsm_state28 => 
                ap_NS_fsm <= ap_ST_fsm_state29;
            when ap_ST_fsm_state29 => 
                ap_NS_fsm <= ap_ST_fsm_state30;
            when ap_ST_fsm_state30 => 
                ap_NS_fsm <= ap_ST_fsm_state31;
            when ap_ST_fsm_state31 => 
                ap_NS_fsm <= ap_ST_fsm_state32;
            when ap_ST_fsm_state32 => 
                ap_NS_fsm <= ap_ST_fsm_state33;
            when ap_ST_fsm_state33 => 
                ap_NS_fsm <= ap_ST_fsm_state34;
            when ap_ST_fsm_state34 => 
                ap_NS_fsm <= ap_ST_fsm_state35;
            when ap_ST_fsm_state35 => 
                if (((octant1_reg_202 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state35) and (grp_atan_generic_double_s_fu_57_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state41;
                elsif (((octant1_reg_202 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state35) and (grp_atan_generic_double_s_fu_57_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state36;
                else
                    ap_NS_fsm <= ap_ST_fsm_state35;
                end if;
            when ap_ST_fsm_state36 => 
                ap_NS_fsm <= ap_ST_fsm_state37;
            when ap_ST_fsm_state37 => 
                ap_NS_fsm <= ap_ST_fsm_state38;
            when ap_ST_fsm_state38 => 
                ap_NS_fsm <= ap_ST_fsm_state39;
            when ap_ST_fsm_state39 => 
                ap_NS_fsm <= ap_ST_fsm_state40;
            when ap_ST_fsm_state40 => 
                ap_NS_fsm <= ap_ST_fsm_state41;
            when ap_ST_fsm_state41 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    absx_fu_117_p1 <= p_Result_44_fu_109_p3;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state33 <= ap_CS_fsm(32);
    ap_CS_fsm_state34 <= ap_CS_fsm(33);
    ap_CS_fsm_state35 <= ap_CS_fsm(34);
    ap_CS_fsm_state36 <= ap_CS_fsm(35);
    ap_CS_fsm_state40 <= ap_CS_fsm(39);
    ap_CS_fsm_state41 <= ap_CS_fsm(40);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state41)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state41) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_phi_mux_f_assign_phi_fu_46_p8_assign_proc : process(icmp_ln833_reg_189, tmp_4_reg_198, octant1_reg_202, res_1_reg_223, f_assign_reg_42, ap_CS_fsm_state41)
    begin
        if (((tmp_4_reg_198 = ap_const_lv1_0) and (octant1_reg_202 = ap_const_lv1_1) and (icmp_ln833_reg_189 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state41))) then 
            ap_phi_mux_f_assign_phi_fu_46_p8 <= res_1_reg_223;
        else 
            ap_phi_mux_f_assign_phi_fu_46_p8 <= f_assign_reg_42;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state41)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state41)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(ap_CS_fsm_state41, bitcast_ln512_fu_168_p1, ap_return_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state41)) then 
            ap_return <= bitcast_ln512_fu_168_p1;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;

    bitcast_ln512_fu_168_p1 <= p_Result_45_fu_161_p3;
    din_fu_147_p3 <= 
        one_over_x_reg_207 when (octant1_reg_202(0) = '1') else 
        absx_reg_182;
    grp_atan_generic_double_s_fu_57_ap_start <= grp_atan_generic_double_s_fu_57_ap_start_reg;
    grp_fu_74_p0 <= p_Result_44_fu_109_p3;
    icmp_ln833_3_fu_128_p2 <= "1" when (tmp_V_14_fu_101_p1 = ap_const_lv52_0) else "0";
    icmp_ln833_fu_122_p2 <= "1" when (tmp_V_fu_91_p4 = ap_const_lv11_7FF) else "0";
    octant1_fu_142_p2 <= "1" when (unsigned(tmp_V_reg_177) > unsigned(ap_const_lv11_3FE)) else "0";
    p_Result_44_fu_109_p3 <= (ap_const_lv1_0 & trunc_ln368_fu_105_p1);
    p_Result_45_fu_161_p3 <= (p_Result_s_reg_172 & trunc_ln368_1_fu_157_p1);
    p_Val2_56_fu_153_p1 <= ap_phi_mux_f_assign_phi_fu_46_p8;
    p_Val2_s_fu_79_p1 <= x;
    select_ln639_fu_134_p3 <= 
        ap_const_lv64_3FF921FB54442D18 when (icmp_ln833_3_fu_128_p2(0) = '1') else 
        ap_const_lv64_7FFFFFFFFFFFFFFF;
    tmp_V_14_fu_101_p1 <= p_Val2_s_fu_79_p1(52 - 1 downto 0);
    tmp_V_fu_91_p4 <= p_Val2_s_fu_79_p1(62 downto 52);
    trunc_ln368_1_fu_157_p1 <= p_Val2_56_fu_153_p1(63 - 1 downto 0);
    trunc_ln368_fu_105_p1 <= p_Val2_s_fu_79_p1(63 - 1 downto 0);
end behav;