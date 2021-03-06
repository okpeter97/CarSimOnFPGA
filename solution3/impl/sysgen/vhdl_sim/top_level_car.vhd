-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_level_car is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    deltaTime : IN STD_LOGIC_VECTOR (31 downto 0);
    torque : IN STD_LOGIC_VECTOR (31 downto 0);
    steeringAngle : IN STD_LOGIC_VECTOR (31 downto 0);
    pos_x : OUT STD_LOGIC_VECTOR (31 downto 0);
    pos_x_ap_vld : OUT STD_LOGIC;
    pos_y : OUT STD_LOGIC_VECTOR (31 downto 0);
    pos_y_ap_vld : OUT STD_LOGIC;
    vel_x : OUT STD_LOGIC_VECTOR (31 downto 0);
    vel_x_ap_vld : OUT STD_LOGIC;
    vel_y : OUT STD_LOGIC_VECTOR (31 downto 0);
    vel_y_ap_vld : OUT STD_LOGIC;
    orientation : OUT STD_LOGIC_VECTOR (31 downto 0);
    orientation_ap_vld : OUT STD_LOGIC );
end;


architecture behav of top_level_car is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "top_level_car,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k325t-ffg900-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.465600,HLS_SYN_LAT=1123,HLS_SYN_TPT=none,HLS_SYN_MEM=56,HLS_SYN_DSP=750,HLS_SYN_FF=49364,HLS_SYN_LUT=86111,HLS_VERSION=2019_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal car_chassis_vel_z : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal car_chassis_vel_x : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal car_chassis_orientat : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal car_chassis_pos_x : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal car_chassis_pos_z : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal grp_update_1_fu_127_ap_start : STD_LOGIC;
    signal grp_update_1_fu_127_ap_done : STD_LOGIC;
    signal grp_update_1_fu_127_ap_idle : STD_LOGIC;
    signal grp_update_1_fu_127_ap_ready : STD_LOGIC;
    signal grp_update_1_fu_127_car_chassis_vel_z_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_update_1_fu_127_car_chassis_vel_z_o_ap_vld : STD_LOGIC;
    signal grp_update_1_fu_127_car_chassis_vel_x_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_update_1_fu_127_car_chassis_vel_x_o_ap_vld : STD_LOGIC;
    signal grp_update_1_fu_127_car_chassis_orientat_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_update_1_fu_127_car_chassis_orientat_o_ap_vld : STD_LOGIC;
    signal grp_update_1_fu_127_car_chassis_pos_x_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_update_1_fu_127_car_chassis_pos_x_o_ap_vld : STD_LOGIC;
    signal grp_update_1_fu_127_car_chassis_pos_z_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_update_1_fu_127_car_chassis_pos_z_o_ap_vld : STD_LOGIC;
    signal grp_update_1_fu_127_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);

    component update_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        deltaTime : IN STD_LOGIC_VECTOR (31 downto 0);
        engine_torque : IN STD_LOGIC_VECTOR (31 downto 0);
        steeringAngle : IN STD_LOGIC_VECTOR (31 downto 0);
        car_chassis_vel_z_i : IN STD_LOGIC_VECTOR (31 downto 0);
        car_chassis_vel_z_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        car_chassis_vel_z_o_ap_vld : OUT STD_LOGIC;
        car_chassis_vel_x_i : IN STD_LOGIC_VECTOR (31 downto 0);
        car_chassis_vel_x_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        car_chassis_vel_x_o_ap_vld : OUT STD_LOGIC;
        car_chassis_orientat_i : IN STD_LOGIC_VECTOR (31 downto 0);
        car_chassis_orientat_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        car_chassis_orientat_o_ap_vld : OUT STD_LOGIC;
        car_chassis_pos_x_i : IN STD_LOGIC_VECTOR (31 downto 0);
        car_chassis_pos_x_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        car_chassis_pos_x_o_ap_vld : OUT STD_LOGIC;
        car_chassis_pos_z_i : IN STD_LOGIC_VECTOR (31 downto 0);
        car_chassis_pos_z_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        car_chassis_pos_z_o_ap_vld : OUT STD_LOGIC );
    end component;



begin
    grp_update_1_fu_127 : component update_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_update_1_fu_127_ap_start,
        ap_done => grp_update_1_fu_127_ap_done,
        ap_idle => grp_update_1_fu_127_ap_idle,
        ap_ready => grp_update_1_fu_127_ap_ready,
        deltaTime => deltaTime,
        engine_torque => torque,
        steeringAngle => steeringAngle,
        car_chassis_vel_z_i => car_chassis_vel_z,
        car_chassis_vel_z_o => grp_update_1_fu_127_car_chassis_vel_z_o,
        car_chassis_vel_z_o_ap_vld => grp_update_1_fu_127_car_chassis_vel_z_o_ap_vld,
        car_chassis_vel_x_i => car_chassis_vel_x,
        car_chassis_vel_x_o => grp_update_1_fu_127_car_chassis_vel_x_o,
        car_chassis_vel_x_o_ap_vld => grp_update_1_fu_127_car_chassis_vel_x_o_ap_vld,
        car_chassis_orientat_i => car_chassis_orientat,
        car_chassis_orientat_o => grp_update_1_fu_127_car_chassis_orientat_o,
        car_chassis_orientat_o_ap_vld => grp_update_1_fu_127_car_chassis_orientat_o_ap_vld,
        car_chassis_pos_x_i => car_chassis_pos_x,
        car_chassis_pos_x_o => grp_update_1_fu_127_car_chassis_pos_x_o,
        car_chassis_pos_x_o_ap_vld => grp_update_1_fu_127_car_chassis_pos_x_o_ap_vld,
        car_chassis_pos_z_i => car_chassis_pos_z,
        car_chassis_pos_z_o => grp_update_1_fu_127_car_chassis_pos_z_o,
        car_chassis_pos_z_o_ap_vld => grp_update_1_fu_127_car_chassis_pos_z_o_ap_vld);





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


    grp_update_1_fu_127_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_update_1_fu_127_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_update_1_fu_127_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_update_1_fu_127_ap_ready = ap_const_logic_1)) then 
                    grp_update_1_fu_127_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_update_1_fu_127_car_chassis_orientat_o_ap_vld = ap_const_logic_1))) then
                car_chassis_orientat <= grp_update_1_fu_127_car_chassis_orientat_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_update_1_fu_127_car_chassis_pos_x_o_ap_vld = ap_const_logic_1))) then
                car_chassis_pos_x <= grp_update_1_fu_127_car_chassis_pos_x_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_update_1_fu_127_car_chassis_pos_z_o_ap_vld = ap_const_logic_1))) then
                car_chassis_pos_z <= grp_update_1_fu_127_car_chassis_pos_z_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_update_1_fu_127_car_chassis_vel_x_o_ap_vld = ap_const_logic_1))) then
                car_chassis_vel_x <= grp_update_1_fu_127_car_chassis_vel_x_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_update_1_fu_127_car_chassis_vel_z_o_ap_vld = ap_const_logic_1))) then
                car_chassis_vel_z <= grp_update_1_fu_127_car_chassis_vel_z_o;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, grp_update_1_fu_127_ap_done, ap_CS_fsm_state2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((grp_update_1_fu_127_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_done_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    grp_update_1_fu_127_ap_start <= grp_update_1_fu_127_ap_start_reg;
    orientation <= car_chassis_orientat;

    orientation_ap_vld_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            orientation_ap_vld <= ap_const_logic_1;
        else 
            orientation_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    pos_x <= car_chassis_pos_x;

    pos_x_ap_vld_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            pos_x_ap_vld <= ap_const_logic_1;
        else 
            pos_x_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    pos_y <= car_chassis_pos_z;

    pos_y_ap_vld_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            pos_y_ap_vld <= ap_const_logic_1;
        else 
            pos_y_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    vel_x <= car_chassis_vel_x;

    vel_x_ap_vld_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            vel_x_ap_vld <= ap_const_logic_1;
        else 
            vel_x_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    vel_y <= car_chassis_vel_z;

    vel_y_ap_vld_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            vel_y_ap_vld <= ap_const_logic_1;
        else 
            vel_y_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;
