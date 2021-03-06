// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "top_level_wheel.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic top_level_wheel::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic top_level_wheel::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> top_level_wheel::ap_ST_fsm_state1 = "1";
const sc_lv<3> top_level_wheel::ap_ST_fsm_state2 = "10";
const sc_lv<3> top_level_wheel::ap_ST_fsm_state3 = "100";
const sc_lv<32> top_level_wheel::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> top_level_wheel::ap_const_lv32_1 = "1";
const sc_lv<32> top_level_wheel::ap_const_lv32_2 = "10";
const bool top_level_wheel::ap_const_boolean_1 = true;

top_level_wheel::top_level_wheel(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_update_fu_129 = new update("grp_update_fu_129");
    grp_update_fu_129->ap_clk(ap_clk);
    grp_update_fu_129->ap_rst(ap_rst);
    grp_update_fu_129->ap_start(grp_update_fu_129_ap_start);
    grp_update_fu_129->ap_done(grp_update_fu_129_ap_done);
    grp_update_fu_129->ap_idle(grp_update_fu_129_ap_idle);
    grp_update_fu_129->ap_ready(grp_update_fu_129_ap_ready);
    grp_update_fu_129->deltaTime(deltaTime);
    grp_update_fu_129->torque(torque);
    grp_update_fu_129->velocity_x(velocity_x);
    grp_update_fu_129->velocity_z(velocity_y);
    grp_update_fu_129->load(load);
    grp_update_fu_129->steeringAngle(steeringAngle);
    grp_update_fu_129->wheel_angularVelocit_i(wheel_angularVelocit);
    grp_update_fu_129->wheel_angularVelocit_o(grp_update_fu_129_wheel_angularVelocit_o);
    grp_update_fu_129->wheel_angularVelocit_o_ap_vld(grp_update_fu_129_wheel_angularVelocit_o_ap_vld);
    grp_update_fu_129->wheel_slipAngle(grp_update_fu_129_wheel_slipAngle);
    grp_update_fu_129->wheel_slipAngle_ap_vld(grp_update_fu_129_wheel_slipAngle_ap_vld);
    grp_update_fu_129->wheel_slipRatio(grp_update_fu_129_wheel_slipRatio);
    grp_update_fu_129->wheel_slipRatio_ap_vld(grp_update_fu_129_wheel_slipRatio_ap_vld);
    grp_update_fu_129->wheel_fz(grp_update_fu_129_wheel_fz);
    grp_update_fu_129->wheel_fz_ap_vld(grp_update_fu_129_wheel_fz_ap_vld);
    grp_update_fu_129->wheel_fx(grp_update_fu_129_wheel_fx);
    grp_update_fu_129->wheel_fx_ap_vld(grp_update_fu_129_wheel_fx_ap_vld);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_angularVel);
    sensitive << ( wheel_angularVelocit );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_angularVel_ap_vld);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_force_x);
    sensitive << ( wheel_fx );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_force_x_ap_vld);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_force_y);
    sensitive << ( wheel_fz );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_force_y_ap_vld);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_grp_update_fu_129_ap_start);
    sensitive << ( grp_update_fu_129_ap_start_reg );

    SC_METHOD(thread_slipAngle);
    sensitive << ( wheel_slipAngle );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_slipAngle_ap_vld);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_slipRatio);
    sensitive << ( wheel_slipRatio );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_slipRatio_ap_vld);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( grp_update_fu_129_ap_done );
    sensitive << ( ap_CS_fsm_state2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "001";
    wheel_angularVelocit = "00000000000000000000000000000000";
    wheel_slipAngle = "00000000000000000000000000000000";
    wheel_slipRatio = "00000000000000000000000000000000";
    wheel_fz = "00000000000000000000000000000000";
    wheel_fx = "00000000000000000000000000000000";
    grp_update_fu_129_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "top_level_wheel_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, deltaTime, "(port)deltaTime");
    sc_trace(mVcdFile, torque, "(port)torque");
    sc_trace(mVcdFile, velocity_x, "(port)velocity_x");
    sc_trace(mVcdFile, velocity_y, "(port)velocity_y");
    sc_trace(mVcdFile, load, "(port)load");
    sc_trace(mVcdFile, steeringAngle, "(port)steeringAngle");
    sc_trace(mVcdFile, slipRatio, "(port)slipRatio");
    sc_trace(mVcdFile, slipRatio_ap_vld, "(port)slipRatio_ap_vld");
    sc_trace(mVcdFile, slipAngle, "(port)slipAngle");
    sc_trace(mVcdFile, slipAngle_ap_vld, "(port)slipAngle_ap_vld");
    sc_trace(mVcdFile, force_x, "(port)force_x");
    sc_trace(mVcdFile, force_x_ap_vld, "(port)force_x_ap_vld");
    sc_trace(mVcdFile, force_y, "(port)force_y");
    sc_trace(mVcdFile, force_y_ap_vld, "(port)force_y_ap_vld");
    sc_trace(mVcdFile, angularVel, "(port)angularVel");
    sc_trace(mVcdFile, angularVel_ap_vld, "(port)angularVel_ap_vld");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, wheel_angularVelocit, "wheel_angularVelocit");
    sc_trace(mVcdFile, wheel_slipAngle, "wheel_slipAngle");
    sc_trace(mVcdFile, wheel_slipRatio, "wheel_slipRatio");
    sc_trace(mVcdFile, wheel_fz, "wheel_fz");
    sc_trace(mVcdFile, wheel_fx, "wheel_fx");
    sc_trace(mVcdFile, grp_update_fu_129_ap_start, "grp_update_fu_129_ap_start");
    sc_trace(mVcdFile, grp_update_fu_129_ap_done, "grp_update_fu_129_ap_done");
    sc_trace(mVcdFile, grp_update_fu_129_ap_idle, "grp_update_fu_129_ap_idle");
    sc_trace(mVcdFile, grp_update_fu_129_ap_ready, "grp_update_fu_129_ap_ready");
    sc_trace(mVcdFile, grp_update_fu_129_wheel_angularVelocit_o, "grp_update_fu_129_wheel_angularVelocit_o");
    sc_trace(mVcdFile, grp_update_fu_129_wheel_angularVelocit_o_ap_vld, "grp_update_fu_129_wheel_angularVelocit_o_ap_vld");
    sc_trace(mVcdFile, grp_update_fu_129_wheel_slipAngle, "grp_update_fu_129_wheel_slipAngle");
    sc_trace(mVcdFile, grp_update_fu_129_wheel_slipAngle_ap_vld, "grp_update_fu_129_wheel_slipAngle_ap_vld");
    sc_trace(mVcdFile, grp_update_fu_129_wheel_slipRatio, "grp_update_fu_129_wheel_slipRatio");
    sc_trace(mVcdFile, grp_update_fu_129_wheel_slipRatio_ap_vld, "grp_update_fu_129_wheel_slipRatio_ap_vld");
    sc_trace(mVcdFile, grp_update_fu_129_wheel_fz, "grp_update_fu_129_wheel_fz");
    sc_trace(mVcdFile, grp_update_fu_129_wheel_fz_ap_vld, "grp_update_fu_129_wheel_fz_ap_vld");
    sc_trace(mVcdFile, grp_update_fu_129_wheel_fx, "grp_update_fu_129_wheel_fx");
    sc_trace(mVcdFile, grp_update_fu_129_wheel_fx_ap_vld, "grp_update_fu_129_wheel_fx_ap_vld");
    sc_trace(mVcdFile, grp_update_fu_129_ap_start_reg, "grp_update_fu_129_ap_start_reg");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("top_level_wheel.hdltvin.dat");
    mHdltvoutHandle.open("top_level_wheel.hdltvout.dat");
}

top_level_wheel::~top_level_wheel() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete grp_update_fu_129;
}

void top_level_wheel::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_update_fu_129_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
             esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
            grp_update_fu_129_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_update_fu_129_ap_ready.read())) {
            grp_update_fu_129_ap_start_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_logic_1, grp_update_fu_129_wheel_angularVelocit_o_ap_vld.read()))) {
        wheel_angularVelocit = grp_update_fu_129_wheel_angularVelocit_o.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_logic_1, grp_update_fu_129_wheel_fx_ap_vld.read()))) {
        wheel_fx = grp_update_fu_129_wheel_fx.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_logic_1, grp_update_fu_129_wheel_fz_ap_vld.read()))) {
        wheel_fz = grp_update_fu_129_wheel_fz.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_logic_1, grp_update_fu_129_wheel_slipAngle_ap_vld.read()))) {
        wheel_slipAngle = grp_update_fu_129_wheel_slipAngle.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_logic_1, grp_update_fu_129_wheel_slipRatio_ap_vld.read()))) {
        wheel_slipRatio = grp_update_fu_129_wheel_slipRatio.read();
    }
}

void top_level_wheel::thread_angularVel() {
    angularVel = wheel_angularVelocit.read();
}

void top_level_wheel::thread_angularVel_ap_vld() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        angularVel_ap_vld = ap_const_logic_1;
    } else {
        angularVel_ap_vld = ap_const_logic_0;
    }
}

void top_level_wheel::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void top_level_wheel::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void top_level_wheel::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void top_level_wheel::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void top_level_wheel::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void top_level_wheel::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void top_level_wheel::thread_force_x() {
    force_x = wheel_fx.read();
}

void top_level_wheel::thread_force_x_ap_vld() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        force_x_ap_vld = ap_const_logic_1;
    } else {
        force_x_ap_vld = ap_const_logic_0;
    }
}

void top_level_wheel::thread_force_y() {
    force_y = wheel_fz.read();
}

void top_level_wheel::thread_force_y_ap_vld() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        force_y_ap_vld = ap_const_logic_1;
    } else {
        force_y_ap_vld = ap_const_logic_0;
    }
}

void top_level_wheel::thread_grp_update_fu_129_ap_start() {
    grp_update_fu_129_ap_start = grp_update_fu_129_ap_start_reg.read();
}

void top_level_wheel::thread_slipAngle() {
    slipAngle = wheel_slipAngle.read();
}

void top_level_wheel::thread_slipAngle_ap_vld() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        slipAngle_ap_vld = ap_const_logic_1;
    } else {
        slipAngle_ap_vld = ap_const_logic_0;
    }
}

void top_level_wheel::thread_slipRatio() {
    slipRatio = wheel_slipRatio.read();
}

void top_level_wheel::thread_slipRatio_ap_vld() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        slipRatio_ap_vld = ap_const_logic_1;
    } else {
        slipRatio_ap_vld = ap_const_logic_0;
    }
}

void top_level_wheel::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(grp_update_fu_129_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

void top_level_wheel::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"deltaTime\" :  \"" << deltaTime.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"torque\" :  \"" << torque.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"velocity_x\" :  \"" << velocity_x.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"velocity_y\" :  \"" << velocity_y.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"load\" :  \"" << load.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"steeringAngle\" :  \"" << steeringAngle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"slipRatio\" :  \"" << slipRatio.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"slipRatio_ap_vld\" :  \"" << slipRatio_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"slipAngle\" :  \"" << slipAngle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"slipAngle_ap_vld\" :  \"" << slipAngle_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"force_x\" :  \"" << force_x.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"force_x_ap_vld\" :  \"" << force_x_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"force_y\" :  \"" << force_y.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"force_y_ap_vld\" :  \"" << force_y_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"angularVel\" :  \"" << angularVel.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"angularVel_ap_vld\" :  \"" << angularVel_ap_vld.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

