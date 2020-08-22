set moduleName update
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
set C_modelName {update}
set C_modelType { void 0 }
set C_modelArgList {
	{ deltaTime float 32 regular  }
	{ torque float 32 regular  }
	{ steeringAngle float 32 regular  }
	{ wheel_vel_x float 32 regular {pointer 2} {global 2}  }
	{ wheel_angularVelocit float 32 regular {pointer 2} {global 2}  }
	{ wheel_radius float 32 regular {pointer 0} {global 0}  }
	{ wheel_slipAngle float 32 regular {pointer 1} {global 1}  }
	{ wheel_slipRatio float 32 regular {pointer 1} {global 1}  }
	{ wheel_inertia float 32 regular {pointer 0} {global 0}  }
	{ wheel_mass float 32 regular {pointer 0} {global 0}  }
	{ wheel_pos_x float 32 regular {pointer 2} {global 2}  }
	{ wheel_fz float 32 regular {pointer 1} {global 1}  }
	{ wheel_fx float 32 regular {pointer 1} {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "deltaTime", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "torque", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "steeringAngle", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "wheel_vel_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "wheel_angularVelocit", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "wheel_radius", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "wheel_slipAngle", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "wheel_slipRatio", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "wheel_inertia", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "wheel_mass", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "wheel_pos_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "wheel_fz", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "wheel_fx", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ deltaTime sc_in sc_lv 32 signal 0 } 
	{ torque sc_in sc_lv 32 signal 1 } 
	{ steeringAngle sc_in sc_lv 32 signal 2 } 
	{ wheel_vel_x_i sc_in sc_lv 32 signal 3 } 
	{ wheel_vel_x_o sc_out sc_lv 32 signal 3 } 
	{ wheel_vel_x_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ wheel_angularVelocit_i sc_in sc_lv 32 signal 4 } 
	{ wheel_angularVelocit_o sc_out sc_lv 32 signal 4 } 
	{ wheel_angularVelocit_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ wheel_radius sc_in sc_lv 32 signal 5 } 
	{ wheel_slipAngle sc_out sc_lv 32 signal 6 } 
	{ wheel_slipAngle_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ wheel_slipRatio sc_out sc_lv 32 signal 7 } 
	{ wheel_slipRatio_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ wheel_inertia sc_in sc_lv 32 signal 8 } 
	{ wheel_mass sc_in sc_lv 32 signal 9 } 
	{ wheel_pos_x_i sc_in sc_lv 32 signal 10 } 
	{ wheel_pos_x_o sc_out sc_lv 32 signal 10 } 
	{ wheel_pos_x_o_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ wheel_fz sc_out sc_lv 32 signal 11 } 
	{ wheel_fz_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ wheel_fx sc_out sc_lv 32 signal 12 } 
	{ wheel_fx_ap_vld sc_out sc_logic 1 outvld 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "deltaTime", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "deltaTime", "role": "default" }} , 
 	{ "name": "torque", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "torque", "role": "default" }} , 
 	{ "name": "steeringAngle", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "steeringAngle", "role": "default" }} , 
 	{ "name": "wheel_vel_x_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wheel_vel_x", "role": "i" }} , 
 	{ "name": "wheel_vel_x_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wheel_vel_x", "role": "o" }} , 
 	{ "name": "wheel_vel_x_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "wheel_vel_x", "role": "o_ap_vld" }} , 
 	{ "name": "wheel_angularVelocit_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wheel_angularVelocit", "role": "i" }} , 
 	{ "name": "wheel_angularVelocit_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wheel_angularVelocit", "role": "o" }} , 
 	{ "name": "wheel_angularVelocit_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "wheel_angularVelocit", "role": "o_ap_vld" }} , 
 	{ "name": "wheel_radius", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wheel_radius", "role": "default" }} , 
 	{ "name": "wheel_slipAngle", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wheel_slipAngle", "role": "default" }} , 
 	{ "name": "wheel_slipAngle_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "wheel_slipAngle", "role": "ap_vld" }} , 
 	{ "name": "wheel_slipRatio", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wheel_slipRatio", "role": "default" }} , 
 	{ "name": "wheel_slipRatio_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "wheel_slipRatio", "role": "ap_vld" }} , 
 	{ "name": "wheel_inertia", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wheel_inertia", "role": "default" }} , 
 	{ "name": "wheel_mass", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wheel_mass", "role": "default" }} , 
 	{ "name": "wheel_pos_x_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wheel_pos_x", "role": "i" }} , 
 	{ "name": "wheel_pos_x_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wheel_pos_x", "role": "o" }} , 
 	{ "name": "wheel_pos_x_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "wheel_pos_x", "role": "o_ap_vld" }} , 
 	{ "name": "wheel_fz", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wheel_fz", "role": "default" }} , 
 	{ "name": "wheel_fz_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "wheel_fz", "role": "ap_vld" }} , 
 	{ "name": "wheel_fx", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wheel_fx", "role": "default" }} , 
 	{ "name": "wheel_fx_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "wheel_fx", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "7", "21", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "193", "EstimateLatencyMax" : "1238",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_175"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_175"},
			{"State" : "ap_ST_fsm_state77", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_175"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_175"},
			{"State" : "ap_ST_fsm_state90", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_175"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_182"},
			{"State" : "ap_ST_fsm_state96", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_182"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_182"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_201"}],
		"Port" : [
			{"Name" : "deltaTime", "Type" : "None", "Direction" : "I"},
			{"Name" : "torque", "Type" : "None", "Direction" : "I"},
			{"Name" : "steeringAngle", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sin_or_cos_double_s_fu_182", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "21", "SubInstance" : "grp_sin_or_cos_double_s_fu_201", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sin_or_cos_double_s_fu_182", "Port" : "fourth_order_double_4"},
					{"ID" : "21", "SubInstance" : "grp_sin_or_cos_double_s_fu_201", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sin_or_cos_double_s_fu_182", "Port" : "fourth_order_double_5"},
					{"ID" : "21", "SubInstance" : "grp_sin_or_cos_double_s_fu_201", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sin_or_cos_double_s_fu_182", "Port" : "fourth_order_double_6"},
					{"ID" : "21", "SubInstance" : "grp_sin_or_cos_double_s_fu_201", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sin_or_cos_double_s_fu_182", "Port" : "fourth_order_double_7"},
					{"ID" : "21", "SubInstance" : "grp_sin_or_cos_double_s_fu_201", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sin_or_cos_double_s_fu_182", "Port" : "fourth_order_double_s"},
					{"ID" : "21", "SubInstance" : "grp_sin_or_cos_double_s_fu_201", "Port" : "fourth_order_double_s"}]},
			{"Name" : "wheel_vel_x", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wheel_angularVelocit", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wheel_radius", "Type" : "None", "Direction" : "I"},
			{"Name" : "cordic_ctab_table_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_atan_fu_175", "Port" : "cordic_ctab_table_12"}]},
			{"Name" : "wheel_slipAngle", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "wheel_slipRatio", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "wheel_inertia", "Type" : "None", "Direction" : "I"},
			{"Name" : "wheel_mass", "Type" : "None", "Direction" : "I"},
			{"Name" : "wheel_pos_x", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wheel_fz", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "wheel_fx", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_atan_fu_175", "Parent" : "0", "Child" : ["2", "4", "5", "6"],
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
					{"ID" : "2", "SubInstance" : "grp_atan_generic_double_s_fu_57", "Port" : "cordic_ctab_table_12"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan_fu_175.grp_atan_generic_double_s_fu_57", "Parent" : "1", "Child" : ["3"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan_fu_175.grp_atan_generic_double_s_fu_57.cordic_ctab_table_12_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan_fu_175.top_level_wheelSimb6_U24", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan_fu_175.top_level_wheelSincg_U25", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan_fu_175.top_level_wheelSiocq_U26", "Parent" : "1"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_182", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12", "13", "14", "17", "18", "19", "20"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "30",
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_182.ref_4oPi_table_256_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_182.fourth_order_double_4_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_182.fourth_order_double_5_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_182.fourth_order_double_6_U", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_182.fourth_order_double_7_U", "Parent" : "7"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_182.fourth_order_double_s_U", "Parent" : "7"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_182.grp_scaled_fixed2ieee_fu_268", "Parent" : "7", "Child" : ["15", "16"],
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
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_182.grp_scaled_fixed2ieee_fu_268.top_level_wheelSibkb_U1", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_182.grp_scaled_fixed2ieee_fu_268.top_level_wheelSibkb_U2", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_182.top_level_wheelSiibs_U6", "Parent" : "7"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_182.top_level_wheelSijbC_U7", "Parent" : "7"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_182.top_level_wheelSikbM_U8", "Parent" : "7"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_182.top_level_wheelSikbM_U9", "Parent" : "7"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_201", "Parent" : "0", "Child" : ["22", "23", "24", "25", "26", "27", "28", "31", "32", "33", "34"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "30",
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
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_201.ref_4oPi_table_256_V_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_201.fourth_order_double_4_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_201.fourth_order_double_5_U", "Parent" : "21"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_201.fourth_order_double_6_U", "Parent" : "21"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_201.fourth_order_double_7_U", "Parent" : "21"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_201.fourth_order_double_s_U", "Parent" : "21"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_201.grp_scaled_fixed2ieee_fu_268", "Parent" : "21", "Child" : ["29", "30"],
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
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_201.grp_scaled_fixed2ieee_fu_268.top_level_wheelSibkb_U1", "Parent" : "28"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_201.grp_scaled_fixed2ieee_fu_268.top_level_wheelSibkb_U2", "Parent" : "28"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_201.top_level_wheelSiibs_U6", "Parent" : "21"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_201.top_level_wheelSijbC_U7", "Parent" : "21"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_201.top_level_wheelSikbM_U8", "Parent" : "21"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_201.top_level_wheelSikbM_U9", "Parent" : "21"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSipcA_U31", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSiqcK_U32", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSircU_U33", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSircU_U34", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSircU_U35", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSircU_U36", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSisc4_U37", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSisc4_U38", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSitde_U39", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSiudo_U40", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSiudo_U41", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSivdy_U42", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSivdy_U43", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSiwdI_U44", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSiwdI_U45", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSixdS_U46", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSiyd2_U47", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSizec_U48", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSizec_U49", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSincg_U50", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_level_wheelSincg_U51", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	update {
		deltaTime {Type I LastRead 11 FirstWrite -1}
		torque {Type I LastRead 11 FirstWrite -1}
		steeringAngle {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}
		wheel_vel_x {Type IO LastRead 4 FirstWrite 122}
		wheel_angularVelocit {Type IO LastRead 3 FirstWrite 128}
		wheel_radius {Type I LastRead 11 FirstWrite -1}
		cordic_ctab_table_12 {Type I LastRead -1 FirstWrite -1}
		wheel_slipAngle {Type O LastRead -1 FirstWrite 25}
		wheel_slipRatio {Type O LastRead -1 FirstWrite 25}
		wheel_inertia {Type I LastRead 115 FirstWrite -1}
		wheel_mass {Type I LastRead 109 FirstWrite -1}
		wheel_pos_x {Type IO LastRead 125 FirstWrite 128}
		wheel_fz {Type O LastRead -1 FirstWrite 109}
		wheel_fx {Type O LastRead -1 FirstWrite 109}}
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
		prescale {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "193", "Max" : "1238"}
	, {"Name" : "Interval", "Min" : "193", "Max" : "1238"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	deltaTime { ap_none {  { deltaTime in_data 0 32 } } }
	torque { ap_none {  { torque in_data 0 32 } } }
	steeringAngle { ap_none {  { steeringAngle in_data 0 32 } } }
	wheel_vel_x { ap_ovld {  { wheel_vel_x_i in_data 0 32 }  { wheel_vel_x_o out_data 1 32 }  { wheel_vel_x_o_ap_vld out_vld 1 1 } } }
	wheel_angularVelocit { ap_ovld {  { wheel_angularVelocit_i in_data 0 32 }  { wheel_angularVelocit_o out_data 1 32 }  { wheel_angularVelocit_o_ap_vld out_vld 1 1 } } }
	wheel_radius { ap_none {  { wheel_radius in_data 0 32 } } }
	wheel_slipAngle { ap_vld {  { wheel_slipAngle out_data 1 32 }  { wheel_slipAngle_ap_vld out_vld 1 1 } } }
	wheel_slipRatio { ap_vld {  { wheel_slipRatio out_data 1 32 }  { wheel_slipRatio_ap_vld out_vld 1 1 } } }
	wheel_inertia { ap_none {  { wheel_inertia in_data 0 32 } } }
	wheel_mass { ap_none {  { wheel_mass in_data 0 32 } } }
	wheel_pos_x { ap_ovld {  { wheel_pos_x_i in_data 0 32 }  { wheel_pos_x_o out_data 1 32 }  { wheel_pos_x_o_ap_vld out_vld 1 1 } } }
	wheel_fz { ap_vld {  { wheel_fz out_data 1 32 }  { wheel_fz_ap_vld out_vld 1 1 } } }
	wheel_fx { ap_vld {  { wheel_fx out_data 1 32 }  { wheel_fx_ap_vld out_vld 1 1 } } }
}
