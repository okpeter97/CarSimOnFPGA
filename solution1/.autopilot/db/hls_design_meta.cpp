#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("deltaTime", 32, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("torque", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("velocity_x", 32, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("velocity_z", 32, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("load", 32, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("steeringAngle", 32, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("force_x", 32, hls_out, 6, "ap_vld", "out_data", 1),
	Port_Property("force_x_ap_vld", 1, hls_out, 6, "ap_vld", "out_vld", 1),
	Port_Property("force_z", 32, hls_out, 7, "ap_vld", "out_data", 1),
	Port_Property("force_z_ap_vld", 1, hls_out, 7, "ap_vld", "out_vld", 1),
	Port_Property("angularVel", 32, hls_out, 8, "ap_vld", "out_data", 1),
	Port_Property("angularVel_ap_vld", 1, hls_out, 8, "ap_vld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "top_level";
