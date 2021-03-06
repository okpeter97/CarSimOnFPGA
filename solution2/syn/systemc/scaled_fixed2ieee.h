// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _scaled_fixed2ieee_HH_
#define _scaled_fixed2ieee_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "top_level_wheel_mbkb.h"

namespace ap_rtl {

struct scaled_fixed2ieee : public sc_module {
    // Port declarations 9
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<63> > in_V;
    sc_in< sc_lv<12> > prescale;
    sc_out< sc_lv<64> > ap_return;


    // Module declarations
    scaled_fixed2ieee(sc_module_name name);
    SC_HAS_PROCESS(scaled_fixed2ieee);

    ~scaled_fixed2ieee();

    sc_trace_file* mVcdFile;

    top_level_wheel_mbkb<1,1,32,32,32,32,2,32>* top_level_wheel_mbkb_U1;
    top_level_wheel_mbkb<1,1,32,32,32,32,2,32>* top_level_wheel_mbkb_U2;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<12> > prescale_read_reg_670;
    sc_signal< sc_lv<63> > in_V_read_reg_675;
    sc_signal< sc_lv<32> > out_bits_2_V_load_reg_684;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > out_bits_2_V_1_load_reg_690;
    sc_signal< sc_lv<32> > out_bits_2_V_2_load_reg_696;
    sc_signal< sc_lv<2> > i_fu_236_p2;
    sc_signal< sc_lv<2> > i_reg_705;
    sc_signal< sc_lv<16> > trunc_ln169_fu_350_p1;
    sc_signal< sc_lv<16> > trunc_ln169_reg_710;
    sc_signal< sc_lv<1> > icmp_ln423_fu_230_p2;
    sc_signal< sc_lv<32> > p_Result_29_fu_365_p5;
    sc_signal< sc_lv<32> > p_Result_29_reg_739;
    sc_signal< sc_lv<3> > i_1_fu_417_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<3> > i_2_fu_481_p2;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<32> > shift_fu_517_p2;
    sc_signal< sc_lv<1> > icmp_ln441_fu_475_p2;
    sc_signal< sc_lv<63> > r_V_31_fu_561_p3;
    sc_signal< sc_lv<1> > icmp_ln1452_fu_575_p2;
    sc_signal< sc_lv<1> > icmp_ln1452_reg_778;
    sc_signal< sc_lv<1> > icmp_ln444_fu_569_p2;
    sc_signal< sc_lv<2> > ap_phi_mux_i_0_phi_fu_138_p4;
    sc_signal< sc_lv<2> > i_0_reg_134;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > p_Val2_s_reg_146;
    sc_signal< sc_lv<3> > i1_0_reg_157;
    sc_signal< sc_lv<1> > icmp_ln434_fu_411_p2;
    sc_signal< sc_lv<63> > p_0119_0_reg_168;
    sc_signal< sc_lv<32> > shift_0_reg_178;
    sc_signal< sc_lv<3> > i2_0_reg_190;
    sc_signal< sc_lv<63> > p_Val2_43_reg_201;
    sc_signal< sc_lv<32> > shift_1_reg_211;
    sc_signal< sc_lv<32> > out_bits_2_V_fu_94;
    sc_signal< sc_lv<32> > out_bits_0_V_fu_384_p5;
    sc_signal< sc_lv<32> > out_bits_2_V_1_fu_98;
    sc_signal< sc_lv<32> > out_bits_2_V_2_fu_102;
    sc_signal< sc_lv<32> > c_3_fu_106;
    sc_signal< sc_lv<32> > c_0_fu_447_p3;
    sc_signal< sc_lv<2> > trunc_ln510_fu_423_p1;
    sc_signal< sc_lv<32> > c_3_1_fu_110;
    sc_signal< sc_lv<32> > c_3_2_fu_114;
    sc_signal< sc_lv<32> > c_3_3_fu_118;
    sc_signal< sc_lv<6> > shl_ln_fu_242_p3;
    sc_signal< sc_lv<6> > sub_ln425_fu_256_p2;
    sc_signal< sc_lv<6> > sub_ln424_fu_250_p2;
    sc_signal< sc_lv<1> > icmp_ln566_fu_262_p2;
    sc_signal< sc_lv<6> > sub_ln566_fu_277_p2;
    sc_signal< sc_lv<6> > sub_ln566_2_fu_289_p2;
    sc_signal< sc_lv<63> > tmp_fu_268_p4;
    sc_signal< sc_lv<6> > sub_ln566_1_fu_283_p2;
    sc_signal< sc_lv<6> > select_ln566_fu_295_p3;
    sc_signal< sc_lv<6> > select_ln566_2_fu_310_p3;
    sc_signal< sc_lv<6> > sub_ln566_3_fu_318_p2;
    sc_signal< sc_lv<63> > select_ln566_1_fu_303_p3;
    sc_signal< sc_lv<63> > zext_ln566_fu_324_p1;
    sc_signal< sc_lv<63> > zext_ln566_1_fu_328_p1;
    sc_signal< sc_lv<63> > lshr_ln566_fu_332_p2;
    sc_signal< sc_lv<63> > lshr_ln566_1_fu_338_p2;
    sc_signal< sc_lv<63> > p_Result_s_fu_344_p2;
    sc_signal< sc_lv<15> > trunc_ln566_fu_354_p1;
    sc_signal< sc_lv<16> > tmp_1_fu_357_p3;
    sc_signal< sc_lv<17> > tmp_3_fu_377_p3;
    sc_signal< sc_lv<2> > p_Val2_38_fu_427_p5;
    sc_signal< sc_lv<32> > p_Val2_38_fu_427_p6;
    sc_signal< sc_lv<32> > p_Result_30_fu_437_p4;
    sc_signal< sc_lv<2> > sh_assign_fu_503_p5;
    sc_signal< sc_lv<32> > sh_assign_fu_503_p6;
    sc_signal< sc_lv<1> > isNeg_fu_523_p3;
    sc_signal< sc_lv<32> > sub_ln1311_fu_531_p2;
    sc_signal< sc_lv<32> > ush_fu_537_p3;
    sc_signal< sc_lv<63> > zext_ln1287_fu_545_p1;
    sc_signal< sc_lv<63> > r_V_fu_549_p2;
    sc_signal< sc_lv<63> > r_V_29_fu_555_p2;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<12> > sub_ln452_fu_580_p2;
    sc_signal< sc_lv<32> > sext_ln452_fu_585_p1;
    sc_signal< sc_lv<32> > newexp_fu_589_p2;
    sc_signal< sc_lv<1> > tmp_7_fu_595_p3;
    sc_signal< sc_lv<1> > or_ln453_fu_603_p2;
    sc_signal< sc_lv<52> > phitmp1_fu_612_p4;
    sc_signal< sc_lv<11> > empty_50_fu_608_p1;
    sc_signal< sc_lv<11> > out_exp_V_fu_630_p3;
    sc_signal< sc_lv<52> > significand_V_fu_622_p3;
    sc_signal< sc_lv<64> > p_Result_31_fu_638_p4;
    sc_signal< sc_lv<64> > bitcast_ln512_fu_648_p1;
    sc_signal< sc_lv<64> > ap_return_preg;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<6> ap_const_lv6_3E;
    static const sc_lv<6> ap_const_lv6_2F;
    static const sc_lv<32> ap_const_lv32_3E;
    static const sc_lv<63> ap_const_lv63_7FFFFFFFFFFFFFFF;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<63> ap_const_lv63_0;
    static const sc_lv<12> ap_const_lv12_3FF;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_3D;
    static const sc_lv<52> ap_const_lv52_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_i_0_phi_fu_138_p4();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_bitcast_ln512_fu_648_p1();
    void thread_c_0_fu_447_p3();
    void thread_empty_50_fu_608_p1();
    void thread_i_1_fu_417_p2();
    void thread_i_2_fu_481_p2();
    void thread_i_fu_236_p2();
    void thread_icmp_ln1452_fu_575_p2();
    void thread_icmp_ln423_fu_230_p2();
    void thread_icmp_ln434_fu_411_p2();
    void thread_icmp_ln441_fu_475_p2();
    void thread_icmp_ln444_fu_569_p2();
    void thread_icmp_ln566_fu_262_p2();
    void thread_isNeg_fu_523_p3();
    void thread_lshr_ln566_1_fu_338_p2();
    void thread_lshr_ln566_fu_332_p2();
    void thread_newexp_fu_589_p2();
    void thread_or_ln453_fu_603_p2();
    void thread_out_bits_0_V_fu_384_p5();
    void thread_out_exp_V_fu_630_p3();
    void thread_p_Result_29_fu_365_p5();
    void thread_p_Result_30_fu_437_p4();
    void thread_p_Result_31_fu_638_p4();
    void thread_p_Result_s_fu_344_p2();
    void thread_p_Val2_38_fu_427_p5();
    void thread_phitmp1_fu_612_p4();
    void thread_r_V_29_fu_555_p2();
    void thread_r_V_31_fu_561_p3();
    void thread_r_V_fu_549_p2();
    void thread_select_ln566_1_fu_303_p3();
    void thread_select_ln566_2_fu_310_p3();
    void thread_select_ln566_fu_295_p3();
    void thread_sext_ln452_fu_585_p1();
    void thread_sh_assign_fu_503_p5();
    void thread_shift_fu_517_p2();
    void thread_shl_ln_fu_242_p3();
    void thread_significand_V_fu_622_p3();
    void thread_sub_ln1311_fu_531_p2();
    void thread_sub_ln424_fu_250_p2();
    void thread_sub_ln425_fu_256_p2();
    void thread_sub_ln452_fu_580_p2();
    void thread_sub_ln566_1_fu_283_p2();
    void thread_sub_ln566_2_fu_289_p2();
    void thread_sub_ln566_3_fu_318_p2();
    void thread_sub_ln566_fu_277_p2();
    void thread_tmp_1_fu_357_p3();
    void thread_tmp_3_fu_377_p3();
    void thread_tmp_7_fu_595_p3();
    void thread_tmp_fu_268_p4();
    void thread_trunc_ln169_fu_350_p1();
    void thread_trunc_ln510_fu_423_p1();
    void thread_trunc_ln566_fu_354_p1();
    void thread_ush_fu_537_p3();
    void thread_zext_ln1287_fu_545_p1();
    void thread_zext_ln566_1_fu_328_p1();
    void thread_zext_ln566_fu_324_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
