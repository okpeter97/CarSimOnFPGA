set moduleName update_1
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {update.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ deltaTime float 32 regular  }
	{ engine_torque float 32 regular  }
	{ steeringAngle float 32 regular  }
	{ car_chassis_vel_z float 32 regular {pointer 2} {global 2}  }
	{ car_chassis_vel_x float 32 regular {pointer 2} {global 2}  }
	{ car_chassis_orientat float 32 regular {pointer 2} {global 2}  }
	{ car_chassis_pos_x float 32 regular {pointer 2} {global 2}  }
	{ car_chassis_pos_z float 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "deltaTime", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "engine_torque", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "steeringAngle", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "car_chassis_vel_z", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "car_chassis_vel_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "car_chassis_orientat", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "car_chassis_pos_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "car_chassis_pos_z", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ deltaTime sc_in sc_lv 32 signal 0 } 
	{ engine_torque sc_in sc_lv 32 signal 1 } 
	{ steeringAngle sc_in sc_lv 32 signal 2 } 
	{ car_chassis_vel_z_i sc_in sc_lv 32 signal 3 } 
	{ car_chassis_vel_z_o sc_out sc_lv 32 signal 3 } 
	{ car_chassis_vel_z_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ car_chassis_vel_x_i sc_in sc_lv 32 signal 4 } 
	{ car_chassis_vel_x_o sc_out sc_lv 32 signal 4 } 
	{ car_chassis_vel_x_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ car_chassis_orientat_i sc_in sc_lv 32 signal 5 } 
	{ car_chassis_orientat_o sc_out sc_lv 32 signal 5 } 
	{ car_chassis_orientat_o_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ car_chassis_pos_x_i sc_in sc_lv 32 signal 6 } 
	{ car_chassis_pos_x_o sc_out sc_lv 32 signal 6 } 
	{ car_chassis_pos_x_o_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ car_chassis_pos_z_i sc_in sc_lv 32 signal 7 } 
	{ car_chassis_pos_z_o sc_out sc_lv 32 signal 7 } 
	{ car_chassis_pos_z_o_ap_vld sc_out sc_logic 1 outvld 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "deltaTime", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "deltaTime", "role": "default" }} , 
 	{ "name": "engine_torque", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "engine_torque", "role": "default" }} , 
 	{ "name": "steeringAngle", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "steeringAngle", "role": "default" }} , 
 	{ "name": "car_chassis_vel_z_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "car_chassis_vel_z", "role": "i" }} , 
 	{ "name": "car_chassis_vel_z_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "car_chassis_vel_z", "role": "o" }} , 
 	{ "name": "car_chassis_vel_z_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "car_chassis_vel_z", "role": "o_ap_vld" }} , 
 	{ "name": "car_chassis_vel_x_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "car_chassis_vel_x", "role": "i" }} , 
 	{ "name": "car_chassis_vel_x_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "car_chassis_vel_x", "role": "o" }} , 
 	{ "name": "car_chassis_vel_x_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "car_chassis_vel_x", "role": "o_ap_vld" }} , 
 	{ "name": "car_chassis_orientat_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "car_chassis_orientat", "role": "i" }} , 
 	{ "name": "car_chassis_orientat_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "car_chassis_orientat", "role": "o" }} , 
 	{ "name": "car_chassis_orientat_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "car_chassis_orientat", "role": "o_ap_vld" }} , 
 	{ "name": "car_chassis_pos_x_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "car_chassis_pos_x", "role": "i" }} , 
 	{ "name": "car_chassis_pos_x_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "car_chassis_pos_x", "role": "o" }} , 
 	{ "name": "car_chassis_pos_x_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "car_chassis_pos_x", "role": "o_ap_vld" }} , 
 	{ "name": "car_chassis_pos_z_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "car_chassis_pos_z", "role": "i" }} , 
 	{ "name": "car_chassis_pos_z_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "car_chassis_pos_z", "role": "o" }} , 
 	{ "name": "car_chassis_pos_z_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "car_chassis_pos_z", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "60", "119", "133", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166"],
		"CDFG" : "update_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "447", "EstimateLatencyMax" : "2541",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_108"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_108"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_136"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_136"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_166"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_185"}],
		"Port" : [
			{"Name" : "deltaTime", "Type" : "None", "Direction" : "I"},
			{"Name" : "engine_torque", "Type" : "None", "Direction" : "I"},
			{"Name" : "steeringAngle", "Type" : "None", "Direction" : "I"},
			{"Name" : "car_chassis_vel_z", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "car_chassis_angularV", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "car_chassis_vel_x", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "car_chassis_wFL", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "car_frontLeft_angula", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_sin_or_cos_double_s_fu_166", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "1", "SubInstance" : "grp_update_fu_108", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "60", "SubInstance" : "grp_update_fu_136", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "133", "SubInstance" : "grp_sin_or_cos_double_s_fu_185", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_sin_or_cos_double_s_fu_166", "Port" : "fourth_order_double_4"},
					{"ID" : "1", "SubInstance" : "grp_update_fu_108", "Port" : "fourth_order_double_4"},
					{"ID" : "60", "SubInstance" : "grp_update_fu_136", "Port" : "fourth_order_double_4"},
					{"ID" : "133", "SubInstance" : "grp_sin_or_cos_double_s_fu_185", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_sin_or_cos_double_s_fu_166", "Port" : "fourth_order_double_5"},
					{"ID" : "1", "SubInstance" : "grp_update_fu_108", "Port" : "fourth_order_double_5"},
					{"ID" : "60", "SubInstance" : "grp_update_fu_136", "Port" : "fourth_order_double_5"},
					{"ID" : "133", "SubInstance" : "grp_sin_or_cos_double_s_fu_185", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_sin_or_cos_double_s_fu_166", "Port" : "fourth_order_double_6"},
					{"ID" : "1", "SubInstance" : "grp_update_fu_108", "Port" : "fourth_order_double_6"},
					{"ID" : "60", "SubInstance" : "grp_update_fu_136", "Port" : "fourth_order_double_6"},
					{"ID" : "133", "SubInstance" : "grp_sin_or_cos_double_s_fu_185", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_sin_or_cos_double_s_fu_166", "Port" : "fourth_order_double_7"},
					{"ID" : "1", "SubInstance" : "grp_update_fu_108", "Port" : "fourth_order_double_7"},
					{"ID" : "60", "SubInstance" : "grp_update_fu_136", "Port" : "fourth_order_double_7"},
					{"ID" : "133", "SubInstance" : "grp_sin_or_cos_double_s_fu_185", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_sin_or_cos_double_s_fu_166", "Port" : "fourth_order_double_s"},
					{"ID" : "1", "SubInstance" : "grp_update_fu_108", "Port" : "fourth_order_double_s"},
					{"ID" : "60", "SubInstance" : "grp_update_fu_136", "Port" : "fourth_order_double_s"},
					{"ID" : "133", "SubInstance" : "grp_sin_or_cos_double_s_fu_185", "Port" : "fourth_order_double_s"}]},
			{"Name" : "cordic_ctab_table_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_fu_108", "Port" : "cordic_ctab_table_12"},
					{"ID" : "60", "SubInstance" : "grp_update_fu_136", "Port" : "cordic_ctab_table_12"}]},
			{"Name" : "car_chassis_wFR", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "car_frontRight_angul", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "car_chassis_wRL", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "car_rearLeft_angular", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "car_chassis_wRR", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "car_rearRight_angula", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "car_chassis_accel_x", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "car_chassis_accel_z", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "car_chassis_orientat", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "car_chassis_pos_x", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "car_chassis_pos_z", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108", "Parent" : "0", "Child" : ["2", "17", "23", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "197", "EstimateLatencyMax" : "1244",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_fu_208"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_fu_208"},
			{"State" : "ap_ST_fsm_state100", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_fu_208"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_250"},
			{"State" : "ap_ST_fsm_state76", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_250"},
			{"State" : "ap_ST_fsm_state80", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_250"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_250"},
			{"State" : "ap_ST_fsm_state93", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_250"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_279"}],
		"Port" : [
			{"Name" : "Wheel_angularVelocity_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "deltaTime", "Type" : "None", "Direction" : "I"},
			{"Name" : "torque", "Type" : "None", "Direction" : "I"},
			{"Name" : "velocity_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "velocity_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "load", "Type" : "None", "Direction" : "I"},
			{"Name" : "steeringAngle", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_sin_fu_208", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "23", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_4"},
					{"ID" : "23", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_5"},
					{"ID" : "23", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_6"},
					{"ID" : "23", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_7"},
					{"ID" : "23", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_s"},
					{"ID" : "23", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_s"}]},
			{"Name" : "cordic_ctab_table_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_atan_fu_250", "Port" : "cordic_ctab_table_12"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_fu_208", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "sin",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_26"}],
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_s"}]}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26", "Parent" : "2", "Child" : ["4", "5", "6", "7", "8", "9", "10", "13", "14", "15", "16"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.ref_4oPi_table_256_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_4_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_5_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_6_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_7_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_s_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.grp_scaled_fixed2ieee_fu_268", "Parent" : "3", "Child" : ["11", "12"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U1", "Parent" : "10"},
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U2", "Parent" : "10"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.top_level_car_mulibs_U6", "Parent" : "3"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.top_level_car_muxjbC_U7", "Parent" : "3"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.top_level_car_muxkbM_U8", "Parent" : "3"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.top_level_car_muxkbM_U9", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_atan_fu_250", "Parent" : "1", "Child" : ["18", "20", "21", "22"],
		"CDFG" : "atan",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "204",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_generic_double_s_fu_57"}],
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "cordic_ctab_table_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_atan_generic_double_s_fu_57", "Port" : "cordic_ctab_table_12"}]}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_atan_fu_250.grp_atan_generic_double_s_fu_57", "Parent" : "17", "Child" : ["19"],
		"CDFG" : "atan_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "179",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "cordic_ctab_table_12", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_atan_fu_250.grp_atan_generic_double_s_fu_57.cordic_ctab_table_12_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_atan_fu_250.top_level_car_dsumb6_U25", "Parent" : "17"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_atan_fu_250.top_level_car_ddincg_U26", "Parent" : "17"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_atan_fu_250.top_level_car_dcmocq_U27", "Parent" : "17"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279", "Parent" : "1", "Child" : ["24", "25", "26", "27", "28", "29", "30", "33", "34", "35", "36"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.ref_4oPi_table_256_V_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.fourth_order_double_4_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.fourth_order_double_5_U", "Parent" : "23"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.fourth_order_double_6_U", "Parent" : "23"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.fourth_order_double_7_U", "Parent" : "23"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.fourth_order_double_s_U", "Parent" : "23"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.grp_scaled_fixed2ieee_fu_268", "Parent" : "23", "Child" : ["31", "32"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U1", "Parent" : "30"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U2", "Parent" : "30"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.top_level_car_mulibs_U6", "Parent" : "23"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.top_level_car_muxjbC_U7", "Parent" : "23"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.top_level_car_muxkbM_U8", "Parent" : "23"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.top_level_car_muxkbM_U9", "Parent" : "23"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_fadpcA_U32", "Parent" : "1"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_fadqcK_U33", "Parent" : "1"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_fadqcK_U34", "Parent" : "1"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_fmurcU_U35", "Parent" : "1"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_fmurcU_U36", "Parent" : "1"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_fmurcU_U37", "Parent" : "1"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_fmurcU_U38", "Parent" : "1"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_fmurcU_U39", "Parent" : "1"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_fdisc4_U40", "Parent" : "1"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_fdisc4_U41", "Parent" : "1"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_sittde_U42", "Parent" : "1"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_fptudo_U43", "Parent" : "1"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_fptudo_U44", "Parent" : "1"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_fpevdy_U45", "Parent" : "1"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_fpevdy_U46", "Parent" : "1"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_fcmwdI_U47", "Parent" : "1"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_fcmwdI_U48", "Parent" : "1"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_fsqxdS_U49", "Parent" : "1"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_dadyd2_U50", "Parent" : "1"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_dmuzec_U51", "Parent" : "1"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_dmuzec_U52", "Parent" : "1"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_ddincg_U53", "Parent" : "1"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_108.top_level_car_ddincg_U54", "Parent" : "1"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136", "Parent" : "0", "Child" : ["61", "76", "82", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "197", "EstimateLatencyMax" : "1244",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_fu_208"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_fu_208"},
			{"State" : "ap_ST_fsm_state100", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_fu_208"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_250"},
			{"State" : "ap_ST_fsm_state76", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_250"},
			{"State" : "ap_ST_fsm_state80", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_250"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_250"},
			{"State" : "ap_ST_fsm_state93", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_250"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_279"}],
		"Port" : [
			{"Name" : "Wheel_angularVelocity_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "deltaTime", "Type" : "None", "Direction" : "I"},
			{"Name" : "torque", "Type" : "None", "Direction" : "I"},
			{"Name" : "velocity_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "velocity_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "load", "Type" : "None", "Direction" : "I"},
			{"Name" : "steeringAngle", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_sin_fu_208", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "82", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_4"},
					{"ID" : "82", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_5"},
					{"ID" : "82", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_6"},
					{"ID" : "82", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_7"},
					{"ID" : "82", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_s"},
					{"ID" : "82", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_s"}]},
			{"Name" : "cordic_ctab_table_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_atan_fu_250", "Port" : "cordic_ctab_table_12"}]}]},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_fu_208", "Parent" : "60", "Child" : ["62"],
		"CDFG" : "sin",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_26"}],
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_s"}]}]},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26", "Parent" : "61", "Child" : ["63", "64", "65", "66", "67", "68", "69", "72", "73", "74", "75"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.ref_4oPi_table_256_V_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_4_U", "Parent" : "62"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_5_U", "Parent" : "62"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_6_U", "Parent" : "62"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_7_U", "Parent" : "62"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_s_U", "Parent" : "62"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.grp_scaled_fixed2ieee_fu_268", "Parent" : "62", "Child" : ["70", "71"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U1", "Parent" : "69"},
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U2", "Parent" : "69"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.top_level_car_mulibs_U6", "Parent" : "62"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.top_level_car_muxjbC_U7", "Parent" : "62"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.top_level_car_muxkbM_U8", "Parent" : "62"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.top_level_car_muxkbM_U9", "Parent" : "62"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_atan_fu_250", "Parent" : "60", "Child" : ["77", "79", "80", "81"],
		"CDFG" : "atan",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "204",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_generic_double_s_fu_57"}],
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "cordic_ctab_table_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_atan_generic_double_s_fu_57", "Port" : "cordic_ctab_table_12"}]}]},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_atan_fu_250.grp_atan_generic_double_s_fu_57", "Parent" : "76", "Child" : ["78"],
		"CDFG" : "atan_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "179",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "cordic_ctab_table_12", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_atan_fu_250.grp_atan_generic_double_s_fu_57.cordic_ctab_table_12_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_atan_fu_250.top_level_car_dsumb6_U25", "Parent" : "76"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_atan_fu_250.top_level_car_ddincg_U26", "Parent" : "76"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_atan_fu_250.top_level_car_dcmocq_U27", "Parent" : "76"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279", "Parent" : "60", "Child" : ["83", "84", "85", "86", "87", "88", "89", "92", "93", "94", "95"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.ref_4oPi_table_256_V_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.fourth_order_double_4_U", "Parent" : "82"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.fourth_order_double_5_U", "Parent" : "82"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.fourth_order_double_6_U", "Parent" : "82"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.fourth_order_double_7_U", "Parent" : "82"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.fourth_order_double_s_U", "Parent" : "82"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.grp_scaled_fixed2ieee_fu_268", "Parent" : "82", "Child" : ["90", "91"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U1", "Parent" : "89"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U2", "Parent" : "89"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.top_level_car_mulibs_U6", "Parent" : "82"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.top_level_car_muxjbC_U7", "Parent" : "82"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.top_level_car_muxkbM_U8", "Parent" : "82"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.top_level_car_muxkbM_U9", "Parent" : "82"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_fadpcA_U32", "Parent" : "60"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_fadqcK_U33", "Parent" : "60"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_fadqcK_U34", "Parent" : "60"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_fmurcU_U35", "Parent" : "60"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_fmurcU_U36", "Parent" : "60"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_fmurcU_U37", "Parent" : "60"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_fmurcU_U38", "Parent" : "60"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_fmurcU_U39", "Parent" : "60"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_fdisc4_U40", "Parent" : "60"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_fdisc4_U41", "Parent" : "60"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_sittde_U42", "Parent" : "60"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_fptudo_U43", "Parent" : "60"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_fptudo_U44", "Parent" : "60"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_fpevdy_U45", "Parent" : "60"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_fpevdy_U46", "Parent" : "60"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_fcmwdI_U47", "Parent" : "60"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_fcmwdI_U48", "Parent" : "60"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_fsqxdS_U49", "Parent" : "60"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_dadyd2_U50", "Parent" : "60"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_dmuzec_U51", "Parent" : "60"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_dmuzec_U52", "Parent" : "60"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_ddincg_U53", "Parent" : "60"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_136.top_level_car_ddincg_U54", "Parent" : "60"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_166", "Parent" : "0", "Child" : ["120", "121", "122", "123", "124", "125", "126", "129", "130", "131", "132"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_166.ref_4oPi_table_256_V_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_166.fourth_order_double_4_U", "Parent" : "119"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_166.fourth_order_double_5_U", "Parent" : "119"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_166.fourth_order_double_6_U", "Parent" : "119"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_166.fourth_order_double_7_U", "Parent" : "119"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_166.fourth_order_double_s_U", "Parent" : "119"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_166.grp_scaled_fixed2ieee_fu_268", "Parent" : "119", "Child" : ["127", "128"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_166.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U1", "Parent" : "126"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_166.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U2", "Parent" : "126"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_166.top_level_car_mulibs_U6", "Parent" : "119"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_166.top_level_car_muxjbC_U7", "Parent" : "119"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_166.top_level_car_muxkbM_U8", "Parent" : "119"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_166.top_level_car_muxkbM_U9", "Parent" : "119"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_185", "Parent" : "0", "Child" : ["134", "135", "136", "137", "138", "139", "140", "143", "144", "145", "146"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_185.ref_4oPi_table_256_V_U", "Parent" : "133"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_185.fourth_order_double_4_U", "Parent" : "133"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_185.fourth_order_double_5_U", "Parent" : "133"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_185.fourth_order_double_6_U", "Parent" : "133"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_185.fourth_order_double_7_U", "Parent" : "133"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_185.fourth_order_double_s_U", "Parent" : "133"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_185.grp_scaled_fixed2ieee_fu_268", "Parent" : "133", "Child" : ["141", "142"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_185.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U1", "Parent" : "140"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_185.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U2", "Parent" : "140"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_185.top_level_car_mulibs_U6", "Parent" : "133"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_185.top_level_car_muxjbC_U7", "Parent" : "133"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_185.top_level_car_muxkbM_U8", "Parent" : "133"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_185.top_level_car_muxkbM_U9", "Parent" : "133"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_fadpcA_U73", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_fadpcA_U74", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_fadpcA_U75", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_fadpcA_U76", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_fmurcU_U77", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_fmurcU_U78", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_fmurcU_U79", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_fmurcU_U80", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_fdisc4_U81", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_fdisc4_U82", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_fptudo_U83", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_fptudo_U84", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_fpevdy_U85", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_fpevdy_U86", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_dsumb6_U87", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_dadAem_U88", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_dmuzec_U89", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_dmuzec_U90", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_dmuzec_U91", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_car_dmuzec_U92", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	update_1 {
		deltaTime {Type I LastRead 8 FirstWrite -1}
		engine_torque {Type I LastRead 8 FirstWrite -1}
		steeringAngle {Type I LastRead 8 FirstWrite -1}
		car_chassis_vel_z {Type IO LastRead 4 FirstWrite 35}
		car_chassis_angularV {Type IO LastRead -1 FirstWrite -1}
		car_chassis_vel_x {Type IO LastRead 4 FirstWrite 35}
		car_chassis_wFL {Type IO LastRead -1 FirstWrite -1}
		car_frontLeft_angula {Type IO LastRead -1 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}
		cordic_ctab_table_12 {Type I LastRead -1 FirstWrite -1}
		car_chassis_wFR {Type IO LastRead -1 FirstWrite -1}
		car_frontRight_angul {Type IO LastRead -1 FirstWrite -1}
		car_chassis_wRL {Type IO LastRead -1 FirstWrite -1}
		car_rearLeft_angular {Type IO LastRead -1 FirstWrite -1}
		car_chassis_wRR {Type IO LastRead -1 FirstWrite -1}
		car_rearRight_angula {Type IO LastRead -1 FirstWrite -1}
		car_chassis_accel_x {Type IO LastRead -1 FirstWrite -1}
		car_chassis_accel_z {Type IO LastRead -1 FirstWrite -1}
		car_chassis_orientat {Type IO LastRead 7 FirstWrite 53}
		car_chassis_pos_x {Type IO LastRead 50 FirstWrite 53}
		car_chassis_pos_z {Type IO LastRead 50 FirstWrite 53}}
	update {
		Wheel_angularVelocity_read {Type I LastRead 3 FirstWrite -1}
		deltaTime {Type I LastRead 11 FirstWrite -1}
		torque {Type I LastRead 11 FirstWrite -1}
		velocity_x {Type I LastRead 4 FirstWrite -1}
		velocity_z {Type I LastRead 4 FirstWrite -1}
		load {Type I LastRead 11 FirstWrite -1}
		steeringAngle {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}
		cordic_ctab_table_12 {Type I LastRead -1 FirstWrite -1}}
	sin {
		x {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 5 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	atan {
		x {Type I LastRead 0 FirstWrite -1}
		cordic_ctab_table_12 {Type I LastRead -1 FirstWrite -1}}
	atan_generic_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		cordic_ctab_table_12 {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 5 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	update {
		Wheel_angularVelocity_read {Type I LastRead 3 FirstWrite -1}
		deltaTime {Type I LastRead 11 FirstWrite -1}
		torque {Type I LastRead 11 FirstWrite -1}
		velocity_x {Type I LastRead 4 FirstWrite -1}
		velocity_z {Type I LastRead 4 FirstWrite -1}
		load {Type I LastRead 11 FirstWrite -1}
		steeringAngle {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}
		cordic_ctab_table_12 {Type I LastRead -1 FirstWrite -1}}
	sin {
		x {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 5 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	atan {
		x {Type I LastRead 0 FirstWrite -1}
		cordic_ctab_table_12 {Type I LastRead -1 FirstWrite -1}}
	atan_generic_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		cordic_ctab_table_12 {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 5 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 5 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 5 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "447", "Max" : "2541"}
	, {"Name" : "Interval", "Min" : "447", "Max" : "2541"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	deltaTime { ap_none {  { deltaTime in_data 0 32 } } }
	engine_torque { ap_none {  { engine_torque in_data 0 32 } } }
	steeringAngle { ap_none {  { steeringAngle in_data 0 32 } } }
	car_chassis_vel_z { ap_ovld {  { car_chassis_vel_z_i in_data 0 32 }  { car_chassis_vel_z_o out_data 1 32 }  { car_chassis_vel_z_o_ap_vld out_vld 1 1 } } }
	car_chassis_vel_x { ap_ovld {  { car_chassis_vel_x_i in_data 0 32 }  { car_chassis_vel_x_o out_data 1 32 }  { car_chassis_vel_x_o_ap_vld out_vld 1 1 } } }
	car_chassis_orientat { ap_ovld {  { car_chassis_orientat_i in_data 0 32 }  { car_chassis_orientat_o out_data 1 32 }  { car_chassis_orientat_o_ap_vld out_vld 1 1 } } }
	car_chassis_pos_x { ap_ovld {  { car_chassis_pos_x_i in_data 0 32 }  { car_chassis_pos_x_o out_data 1 32 }  { car_chassis_pos_x_o_ap_vld out_vld 1 1 } } }
	car_chassis_pos_z { ap_ovld {  { car_chassis_pos_z_i in_data 0 32 }  { car_chassis_pos_z_o out_data 1 32 }  { car_chassis_pos_z_o_ap_vld out_vld 1 1 } } }
}
