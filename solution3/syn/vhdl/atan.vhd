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
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_12 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010010";
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv64_3FE921FB54442D18 : STD_LOGIC_VECTOR (63 downto 0) := "0011111111101001001000011111101101010100010001000010110100011000";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv64_3FF921FB54442D18 : STD_LOGIC_VECTOR (63 downto 0) := "0011111111111001001000011111101101010100010001000010110100011000";
    constant ap_const_lv64_3FF0000000000000 : STD_LOGIC_VECTOR (63 downto 0) := "0011111111110000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_34 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110100";
    constant ap_const_lv32_3E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111110";
    constant ap_const_lv11_7FF : STD_LOGIC_VECTOR (10 downto 0) := "11111111111";
    constant ap_const_lv52_0 : STD_LOGIC_VECTOR (51 downto 0) := "0000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_7FFFFFFFFFFFFFFF : STD_LOGIC_VECTOR (63 downto 0) := "0111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv11_3FE : STD_LOGIC_VECTOR (10 downto 0) := "01111111110";
    constant ap_const_lv32_15 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010101";
    constant ap_const_lv32_16 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010110";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal p_Result_s_reg_174 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_V_fu_93_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_V_reg_179 : STD_LOGIC_VECTOR (10 downto 0);
    signal absx_fu_119_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal absx_reg_184 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln833_fu_124_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln833_reg_191 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln639_fu_136_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_76_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_4_reg_200 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal octant1_fu_144_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal octant1_reg_204 : STD_LOGIC_VECTOR (0 downto 0);
    signal din_fu_149_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal din_reg_209 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state19 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state19 : signal is "none";
    signal grp_atan_generic_double_s_fu_57_ap_return : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state21 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state21 : signal is "none";
    signal grp_atan_generic_double_s_fu_57_ap_ready : STD_LOGIC;
    signal grp_atan_generic_double_s_fu_57_ap_done : STD_LOGIC;
    signal grp_atan_generic_double_s_fu_57_ap_start : STD_LOGIC;
    signal grp_atan_generic_double_s_fu_57_ap_idle : STD_LOGIC;
    signal grp_fu_64_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_phi_mux_f_assign_phi_fu_46_p8 : STD_LOGIC_VECTOR (63 downto 0);
    signal f_assign_reg_42 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state25 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state25 : signal is "none";
    signal grp_atan_generic_double_s_fu_57_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state20 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state20 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal grp_fu_76_p0 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Val2_s_fu_81_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln368_fu_107_p1 : STD_LOGIC_VECTOR (62 downto 0);
    signal p_Result_44_fu_111_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_V_14_fu_103_p1 : STD_LOGIC_VECTOR (51 downto 0);
    signal icmp_ln833_3_fu_130_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_71_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Val2_56_fu_155_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln368_1_fu_159_p1 : STD_LOGIC_VECTOR (62 downto 0);
    signal p_Result_45_fu_163_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_64_ce : STD_LOGIC;
    signal ap_CS_fsm_state22 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state22 : signal is "none";
    signal ap_CS_fsm_state23 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state23 : signal is "none";
    signal ap_CS_fsm_state24 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state24 : signal is "none";
    signal bitcast_ln512_fu_170_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (24 downto 0);

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


    component top_level_car_dsumb6 IS
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


    component top_level_car_ddincg IS
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


    component top_level_car_dcmocq IS
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
        t_in => din_reg_209,
        ap_return => grp_atan_generic_double_s_fu_57_ap_return);

    top_level_car_dsumb6_U25 : component top_level_car_dsumb6
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
        din1 => grp_atan_generic_double_s_fu_57_ap_return,
        ce => grp_fu_64_ce,
        dout => grp_fu_64_p2);

    top_level_car_ddincg_U26 : component top_level_car_ddincg
    generic map (
        ID => 1,
        NUM_STAGE => 17,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => ap_const_lv64_3FF0000000000000,
        din1 => absx_reg_184,
        ce => ap_const_logic_1,
        dout => grp_fu_71_p2);

    top_level_car_dcmocq_U27 : component top_level_car_dcmocq
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 1)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_76_p0,
        din1 => ap_const_lv64_3FF0000000000000,
        ce => ap_const_logic_1,
        opcode => ap_const_lv5_1,
        dout => grp_fu_76_p2);





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
                if ((ap_const_logic_1 = ap_CS_fsm_state25)) then 
                    ap_return_preg <= bitcast_ln512_fu_170_p1;
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
                if ((ap_const_logic_1 = ap_CS_fsm_state20)) then 
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
            if (((icmp_ln833_fu_124_p2 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                f_assign_reg_42 <= select_ln639_fu_136_p3;
            elsif (((grp_atan_generic_double_s_fu_57_ap_done = ap_const_logic_1) and (octant1_reg_204 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state21))) then 
                f_assign_reg_42 <= grp_atan_generic_double_s_fu_57_ap_return;
            elsif (((grp_fu_76_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                f_assign_reg_42 <= ap_const_lv64_3FE921FB54442D18;
            elsif (((tmp_4_reg_200 = ap_const_lv1_0) and (octant1_reg_204 = ap_const_lv1_1) and (icmp_ln833_reg_191 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state25))) then 
                f_assign_reg_42 <= grp_fu_64_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    absx_reg_184(62 downto 0) <= absx_fu_119_p1(62 downto 0);
                icmp_ln833_reg_191 <= icmp_ln833_fu_124_p2;
                p_Result_s_reg_174 <= p_Val2_s_fu_81_p1(63 downto 63);
                tmp_V_reg_179 <= p_Val2_s_fu_81_p1(62 downto 52);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state25)) then
                ap_return <= bitcast_ln512_fu_170_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state19)) then
                din_reg_209 <= din_fu_149_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_fu_76_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                octant1_reg_204 <= octant1_fu_144_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                tmp_4_reg_200 <= grp_fu_76_p2;
            end if;
        end if;
    end process;
    absx_reg_184(63) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln833_fu_124_p2, grp_fu_76_p2, ap_CS_fsm_state2, octant1_reg_204, ap_CS_fsm_state21, grp_atan_generic_double_s_fu_57_ap_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((icmp_ln833_fu_124_p2 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state25;
                elsif (((icmp_ln833_fu_124_p2 = ap_const_lv1_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((grp_fu_76_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state25;
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
                if (((grp_atan_generic_double_s_fu_57_ap_done = ap_const_logic_1) and (octant1_reg_204 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state21))) then
                    ap_NS_fsm <= ap_ST_fsm_state25;
                elsif (((grp_atan_generic_double_s_fu_57_ap_done = ap_const_logic_1) and (octant1_reg_204 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state21))) then
                    ap_NS_fsm <= ap_ST_fsm_state22;
                else
                    ap_NS_fsm <= ap_ST_fsm_state21;
                end if;
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
    absx_fu_119_p1 <= p_Result_44_fu_111_p3;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state19 <= ap_CS_fsm(18);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state20 <= ap_CS_fsm(19);
    ap_CS_fsm_state21 <= ap_CS_fsm(20);
    ap_CS_fsm_state22 <= ap_CS_fsm(21);
    ap_CS_fsm_state23 <= ap_CS_fsm(22);
    ap_CS_fsm_state24 <= ap_CS_fsm(23);
    ap_CS_fsm_state25 <= ap_CS_fsm(24);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
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


    ap_phi_mux_f_assign_phi_fu_46_p8_assign_proc : process(icmp_ln833_reg_191, tmp_4_reg_200, octant1_reg_204, grp_fu_64_p2, f_assign_reg_42, ap_CS_fsm_state25)
    begin
        if (((tmp_4_reg_200 = ap_const_lv1_0) and (octant1_reg_204 = ap_const_lv1_1) and (icmp_ln833_reg_191 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state25))) then 
            ap_phi_mux_f_assign_phi_fu_46_p8 <= grp_fu_64_p2;
        else 
            ap_phi_mux_f_assign_phi_fu_46_p8 <= f_assign_reg_42;
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

    bitcast_ln512_fu_170_p1 <= p_Result_45_fu_163_p3;
    din_fu_149_p3 <= 
        grp_fu_71_p2 when (octant1_reg_204(0) = '1') else 
        absx_reg_184;
    grp_atan_generic_double_s_fu_57_ap_start <= grp_atan_generic_double_s_fu_57_ap_start_reg;

    grp_fu_64_ce_assign_proc : process(ap_CS_fsm_state21, grp_atan_generic_double_s_fu_57_ap_done, ap_CS_fsm_state25, ap_CS_fsm_state22, ap_CS_fsm_state23, ap_CS_fsm_state24)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state24) or (ap_const_logic_1 = ap_CS_fsm_state23) or (ap_const_logic_1 = ap_CS_fsm_state22) or (ap_const_logic_1 = ap_CS_fsm_state25) or ((grp_atan_generic_double_s_fu_57_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state21)))) then 
            grp_fu_64_ce <= ap_const_logic_1;
        else 
            grp_fu_64_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_76_p0 <= p_Result_44_fu_111_p3;
    icmp_ln833_3_fu_130_p2 <= "1" when (tmp_V_14_fu_103_p1 = ap_const_lv52_0) else "0";
    icmp_ln833_fu_124_p2 <= "1" when (tmp_V_fu_93_p4 = ap_const_lv11_7FF) else "0";
    octant1_fu_144_p2 <= "1" when (unsigned(tmp_V_reg_179) > unsigned(ap_const_lv11_3FE)) else "0";
    p_Result_44_fu_111_p3 <= (ap_const_lv1_0 & trunc_ln368_fu_107_p1);
    p_Result_45_fu_163_p3 <= (p_Result_s_reg_174 & trunc_ln368_1_fu_159_p1);
    p_Val2_56_fu_155_p1 <= ap_phi_mux_f_assign_phi_fu_46_p8;
    p_Val2_s_fu_81_p1 <= x;
    select_ln639_fu_136_p3 <= 
        ap_const_lv64_3FF921FB54442D18 when (icmp_ln833_3_fu_130_p2(0) = '1') else 
        ap_const_lv64_7FFFFFFFFFFFFFFF;
    tmp_V_14_fu_103_p1 <= p_Val2_s_fu_81_p1(52 - 1 downto 0);
    tmp_V_fu_93_p4 <= p_Val2_s_fu_81_p1(62 downto 52);
    trunc_ln368_1_fu_159_p1 <= p_Val2_56_fu_155_p1(63 - 1 downto 0);
    trunc_ln368_fu_107_p1 <= p_Val2_s_fu_81_p1(63 - 1 downto 0);
end behav;