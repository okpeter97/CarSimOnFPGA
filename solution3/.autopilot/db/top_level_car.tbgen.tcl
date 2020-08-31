set moduleName top_level_car
set isTopModule 1
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
set C_modelName {top_level_car}
set C_modelType { void 0 }
set C_modelArgList {
	{ deltaTime float 32 regular  }
	{ torque float 32 regular  }
	{ steeringAngle float 32 regular  }
	{ pos_x float 32 regular {pointer 1}  }
	{ pos_y float 32 regular {pointer 1}  }
	{ vel_x float 32 regular {pointer 1}  }
	{ vel_y float 32 regular {pointer 1}  }
	{ orientation float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "deltaTime", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "deltaTime","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "torque", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "torque","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "steeringAngle", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "steeringAngle","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "pos_x", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pos_x","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pos_y", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pos_y","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "vel_x", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "vel_x","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "vel_y", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "vel_y","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "orientation", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "orientation","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 19
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
	{ pos_x sc_out sc_lv 32 signal 3 } 
	{ pos_x_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ pos_y sc_out sc_lv 32 signal 4 } 
	{ pos_y_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ vel_x sc_out sc_lv 32 signal 5 } 
	{ vel_x_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ vel_y sc_out sc_lv 32 signal 6 } 
	{ vel_y_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ orientation sc_out sc_lv 32 signal 7 } 
	{ orientation_ap_vld sc_out sc_logic 1 outvld 7 } 
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
 	{ "name": "pos_x", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pos_x", "role": "default" }} , 
 	{ "name": "pos_x_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pos_x", "role": "ap_vld" }} , 
 	{ "name": "pos_y", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pos_y", "role": "default" }} , 
 	{ "name": "pos_y_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pos_y", "role": "ap_vld" }} , 
 	{ "name": "vel_x", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vel_x", "role": "default" }} , 
 	{ "name": "vel_x_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vel_x", "role": "ap_vld" }} , 
 	{ "name": "vel_y", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vel_y", "role": "default" }} , 
 	{ "name": "vel_y_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vel_y", "role": "ap_vld" }} , 
 	{ "name": "orientation", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "orientation", "role": "default" }} , 
 	{ "name": "orientation_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "orientation", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "top_level_car",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "449", "EstimateLatencyMax" : "2543",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_1_fu_127"}],
		"Port" : [
			{"Name" : "deltaTime", "Type" : "None", "Direction" : "I"},
			{"Name" : "torque", "Type" : "None", "Direction" : "I"},
			{"Name" : "steeringAngle", "Type" : "None", "Direction" : "I"},
			{"Name" : "pos_x", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pos_y", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vel_x", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vel_y", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "orientation", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "car_chassis_vel_z", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "car_chassis_vel_z"}]},
			{"Name" : "car_chassis_angularV", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "car_chassis_angularV"}]},
			{"Name" : "car_chassis_vel_x", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "car_chassis_vel_x"}]},
			{"Name" : "car_chassis_wFL", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "car_chassis_wFL"}]},
			{"Name" : "car_frontLeft_angula", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "car_frontLeft_angula"}]},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "fourth_order_double_s"}]},
			{"Name" : "cordic_ctab_table_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "cordic_ctab_table_12"}]},
			{"Name" : "car_chassis_wFR", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "car_chassis_wFR"}]},
			{"Name" : "car_frontRight_angul", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "car_frontRight_angul"}]},
			{"Name" : "car_chassis_wRL", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "car_chassis_wRL"}]},
			{"Name" : "car_rearLeft_angular", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "car_rearLeft_angular"}]},
			{"Name" : "car_chassis_wRR", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "car_chassis_wRR"}]},
			{"Name" : "car_rearRight_angula", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "car_rearRight_angula"}]},
			{"Name" : "car_chassis_accel_x", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "car_chassis_accel_x"}]},
			{"Name" : "car_chassis_accel_z", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "car_chassis_accel_z"}]},
			{"Name" : "car_chassis_orientat", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "car_chassis_orientat"}]},
			{"Name" : "car_chassis_pos_x", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "car_chassis_pos_x"}]},
			{"Name" : "car_chassis_pos_z", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_127", "Port" : "car_chassis_pos_z"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127", "Parent" : "0", "Child" : ["2", "61", "120", "134", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167"],
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
					{"ID" : "120", "SubInstance" : "grp_sin_or_cos_double_s_fu_166", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "2", "SubInstance" : "grp_update_fu_108", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "61", "SubInstance" : "grp_update_fu_136", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "134", "SubInstance" : "grp_sin_or_cos_double_s_fu_185", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_sin_or_cos_double_s_fu_166", "Port" : "fourth_order_double_4"},
					{"ID" : "2", "SubInstance" : "grp_update_fu_108", "Port" : "fourth_order_double_4"},
					{"ID" : "61", "SubInstance" : "grp_update_fu_136", "Port" : "fourth_order_double_4"},
					{"ID" : "134", "SubInstance" : "grp_sin_or_cos_double_s_fu_185", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_sin_or_cos_double_s_fu_166", "Port" : "fourth_order_double_5"},
					{"ID" : "2", "SubInstance" : "grp_update_fu_108", "Port" : "fourth_order_double_5"},
					{"ID" : "61", "SubInstance" : "grp_update_fu_136", "Port" : "fourth_order_double_5"},
					{"ID" : "134", "SubInstance" : "grp_sin_or_cos_double_s_fu_185", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_sin_or_cos_double_s_fu_166", "Port" : "fourth_order_double_6"},
					{"ID" : "2", "SubInstance" : "grp_update_fu_108", "Port" : "fourth_order_double_6"},
					{"ID" : "61", "SubInstance" : "grp_update_fu_136", "Port" : "fourth_order_double_6"},
					{"ID" : "134", "SubInstance" : "grp_sin_or_cos_double_s_fu_185", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_sin_or_cos_double_s_fu_166", "Port" : "fourth_order_double_7"},
					{"ID" : "2", "SubInstance" : "grp_update_fu_108", "Port" : "fourth_order_double_7"},
					{"ID" : "61", "SubInstance" : "grp_update_fu_136", "Port" : "fourth_order_double_7"},
					{"ID" : "134", "SubInstance" : "grp_sin_or_cos_double_s_fu_185", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_sin_or_cos_double_s_fu_166", "Port" : "fourth_order_double_s"},
					{"ID" : "2", "SubInstance" : "grp_update_fu_108", "Port" : "fourth_order_double_s"},
					{"ID" : "61", "SubInstance" : "grp_update_fu_136", "Port" : "fourth_order_double_s"},
					{"ID" : "134", "SubInstance" : "grp_sin_or_cos_double_s_fu_185", "Port" : "fourth_order_double_s"}]},
			{"Name" : "cordic_ctab_table_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_update_fu_108", "Port" : "cordic_ctab_table_12"},
					{"ID" : "61", "SubInstance" : "grp_update_fu_136", "Port" : "cordic_ctab_table_12"}]},
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108", "Parent" : "1", "Child" : ["3", "18", "24", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60"],
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
					{"ID" : "3", "SubInstance" : "grp_sin_fu_208", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "24", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_4"},
					{"ID" : "24", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_5"},
					{"ID" : "24", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_6"},
					{"ID" : "24", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_7"},
					{"ID" : "24", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_s"},
					{"ID" : "24", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_s"}]},
			{"Name" : "cordic_ctab_table_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_atan_fu_250", "Port" : "cordic_ctab_table_12"}]}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_fu_208", "Parent" : "2", "Child" : ["4"],
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
					{"ID" : "4", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_s"}]}]},
	{"ID" : "4", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26", "Parent" : "3", "Child" : ["5", "6", "7", "8", "9", "10", "11", "14", "15", "16", "17"],
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
	{"ID" : "5", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.ref_4oPi_table_256_V_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_4_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_5_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_6_U", "Parent" : "4"},
	{"ID" : "9", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_7_U", "Parent" : "4"},
	{"ID" : "10", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_s_U", "Parent" : "4"},
	{"ID" : "11", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.grp_scaled_fixed2ieee_fu_268", "Parent" : "4", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U1", "Parent" : "11"},
	{"ID" : "13", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U2", "Parent" : "11"},
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.top_level_car_mulibs_U6", "Parent" : "4"},
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.top_level_car_muxjbC_U7", "Parent" : "4"},
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.top_level_car_muxkbM_U8", "Parent" : "4"},
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.top_level_car_muxkbM_U9", "Parent" : "4"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_atan_fu_250", "Parent" : "2", "Child" : ["19", "21", "22", "23"],
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
					{"ID" : "19", "SubInstance" : "grp_atan_generic_double_s_fu_57", "Port" : "cordic_ctab_table_12"}]}]},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_atan_fu_250.grp_atan_generic_double_s_fu_57", "Parent" : "18", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_atan_fu_250.grp_atan_generic_double_s_fu_57.cordic_ctab_table_12_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_atan_fu_250.top_level_car_dsumb6_U25", "Parent" : "18"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_atan_fu_250.top_level_car_ddincg_U26", "Parent" : "18"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_atan_fu_250.top_level_car_dcmocq_U27", "Parent" : "18"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279", "Parent" : "2", "Child" : ["25", "26", "27", "28", "29", "30", "31", "34", "35", "36", "37"],
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
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.ref_4oPi_table_256_V_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.fourth_order_double_4_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.fourth_order_double_5_U", "Parent" : "24"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.fourth_order_double_6_U", "Parent" : "24"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.fourth_order_double_7_U", "Parent" : "24"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.fourth_order_double_s_U", "Parent" : "24"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.grp_scaled_fixed2ieee_fu_268", "Parent" : "24", "Child" : ["32", "33"],
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
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U1", "Parent" : "31"},
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U2", "Parent" : "31"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.top_level_car_mulibs_U6", "Parent" : "24"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.top_level_car_muxjbC_U7", "Parent" : "24"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.top_level_car_muxkbM_U8", "Parent" : "24"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.grp_sin_or_cos_double_s_fu_279.top_level_car_muxkbM_U9", "Parent" : "24"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_fadpcA_U32", "Parent" : "2"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_fadqcK_U33", "Parent" : "2"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_fadqcK_U34", "Parent" : "2"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_fmurcU_U35", "Parent" : "2"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_fmurcU_U36", "Parent" : "2"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_fmurcU_U37", "Parent" : "2"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_fmurcU_U38", "Parent" : "2"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_fmurcU_U39", "Parent" : "2"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_fdisc4_U40", "Parent" : "2"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_fdisc4_U41", "Parent" : "2"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_sittde_U42", "Parent" : "2"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_fptudo_U43", "Parent" : "2"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_fptudo_U44", "Parent" : "2"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_fpevdy_U45", "Parent" : "2"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_fpevdy_U46", "Parent" : "2"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_fcmwdI_U47", "Parent" : "2"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_fcmwdI_U48", "Parent" : "2"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_fsqxdS_U49", "Parent" : "2"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_dadyd2_U50", "Parent" : "2"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_dmuzec_U51", "Parent" : "2"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_dmuzec_U52", "Parent" : "2"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_ddincg_U53", "Parent" : "2"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_108.top_level_car_ddincg_U54", "Parent" : "2"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136", "Parent" : "1", "Child" : ["62", "77", "83", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119"],
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
					{"ID" : "62", "SubInstance" : "grp_sin_fu_208", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "83", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_4"},
					{"ID" : "83", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_5"},
					{"ID" : "83", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_6"},
					{"ID" : "83", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_7"},
					{"ID" : "83", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_sin_fu_208", "Port" : "fourth_order_double_s"},
					{"ID" : "83", "SubInstance" : "grp_sin_or_cos_double_s_fu_279", "Port" : "fourth_order_double_s"}]},
			{"Name" : "cordic_ctab_table_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_atan_fu_250", "Port" : "cordic_ctab_table_12"}]}]},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_fu_208", "Parent" : "61", "Child" : ["63"],
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
					{"ID" : "63", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_sin_or_cos_double_s_fu_26", "Port" : "fourth_order_double_s"}]}]},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26", "Parent" : "62", "Child" : ["64", "65", "66", "67", "68", "69", "70", "73", "74", "75", "76"],
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
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.ref_4oPi_table_256_V_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_4_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_5_U", "Parent" : "63"},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_6_U", "Parent" : "63"},
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_7_U", "Parent" : "63"},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.fourth_order_double_s_U", "Parent" : "63"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.grp_scaled_fixed2ieee_fu_268", "Parent" : "63", "Child" : ["71", "72"],
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
	{"ID" : "71", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U1", "Parent" : "70"},
	{"ID" : "72", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U2", "Parent" : "70"},
	{"ID" : "73", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.top_level_car_mulibs_U6", "Parent" : "63"},
	{"ID" : "74", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.top_level_car_muxjbC_U7", "Parent" : "63"},
	{"ID" : "75", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.top_level_car_muxkbM_U8", "Parent" : "63"},
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_fu_208.grp_sin_or_cos_double_s_fu_26.top_level_car_muxkbM_U9", "Parent" : "63"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_atan_fu_250", "Parent" : "61", "Child" : ["78", "80", "81", "82"],
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
					{"ID" : "78", "SubInstance" : "grp_atan_generic_double_s_fu_57", "Port" : "cordic_ctab_table_12"}]}]},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_atan_fu_250.grp_atan_generic_double_s_fu_57", "Parent" : "77", "Child" : ["79"],
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
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_atan_fu_250.grp_atan_generic_double_s_fu_57.cordic_ctab_table_12_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_atan_fu_250.top_level_car_dsumb6_U25", "Parent" : "77"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_atan_fu_250.top_level_car_ddincg_U26", "Parent" : "77"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_atan_fu_250.top_level_car_dcmocq_U27", "Parent" : "77"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279", "Parent" : "61", "Child" : ["84", "85", "86", "87", "88", "89", "90", "93", "94", "95", "96"],
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
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.ref_4oPi_table_256_V_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.fourth_order_double_4_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.fourth_order_double_5_U", "Parent" : "83"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.fourth_order_double_6_U", "Parent" : "83"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.fourth_order_double_7_U", "Parent" : "83"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.fourth_order_double_s_U", "Parent" : "83"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.grp_scaled_fixed2ieee_fu_268", "Parent" : "83", "Child" : ["91", "92"],
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
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U1", "Parent" : "90"},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U2", "Parent" : "90"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.top_level_car_mulibs_U6", "Parent" : "83"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.top_level_car_muxjbC_U7", "Parent" : "83"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.top_level_car_muxkbM_U8", "Parent" : "83"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.grp_sin_or_cos_double_s_fu_279.top_level_car_muxkbM_U9", "Parent" : "83"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_fadpcA_U32", "Parent" : "61"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_fadqcK_U33", "Parent" : "61"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_fadqcK_U34", "Parent" : "61"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_fmurcU_U35", "Parent" : "61"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_fmurcU_U36", "Parent" : "61"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_fmurcU_U37", "Parent" : "61"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_fmurcU_U38", "Parent" : "61"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_fmurcU_U39", "Parent" : "61"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_fdisc4_U40", "Parent" : "61"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_fdisc4_U41", "Parent" : "61"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_sittde_U42", "Parent" : "61"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_fptudo_U43", "Parent" : "61"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_fptudo_U44", "Parent" : "61"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_fpevdy_U45", "Parent" : "61"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_fpevdy_U46", "Parent" : "61"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_fcmwdI_U47", "Parent" : "61"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_fcmwdI_U48", "Parent" : "61"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_fsqxdS_U49", "Parent" : "61"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_dadyd2_U50", "Parent" : "61"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_dmuzec_U51", "Parent" : "61"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_dmuzec_U52", "Parent" : "61"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_ddincg_U53", "Parent" : "61"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_update_fu_136.top_level_car_ddincg_U54", "Parent" : "61"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_166", "Parent" : "1", "Child" : ["121", "122", "123", "124", "125", "126", "127", "130", "131", "132", "133"],
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
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_166.ref_4oPi_table_256_V_U", "Parent" : "120"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_166.fourth_order_double_4_U", "Parent" : "120"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_166.fourth_order_double_5_U", "Parent" : "120"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_166.fourth_order_double_6_U", "Parent" : "120"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_166.fourth_order_double_7_U", "Parent" : "120"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_166.fourth_order_double_s_U", "Parent" : "120"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_166.grp_scaled_fixed2ieee_fu_268", "Parent" : "120", "Child" : ["128", "129"],
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
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_166.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U1", "Parent" : "127"},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_166.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U2", "Parent" : "127"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_166.top_level_car_mulibs_U6", "Parent" : "120"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_166.top_level_car_muxjbC_U7", "Parent" : "120"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_166.top_level_car_muxkbM_U8", "Parent" : "120"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_166.top_level_car_muxkbM_U9", "Parent" : "120"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_185", "Parent" : "1", "Child" : ["135", "136", "137", "138", "139", "140", "141", "144", "145", "146", "147"],
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
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_185.ref_4oPi_table_256_V_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_185.fourth_order_double_4_U", "Parent" : "134"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_185.fourth_order_double_5_U", "Parent" : "134"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_185.fourth_order_double_6_U", "Parent" : "134"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_185.fourth_order_double_7_U", "Parent" : "134"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_185.fourth_order_double_s_U", "Parent" : "134"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_185.grp_scaled_fixed2ieee_fu_268", "Parent" : "134", "Child" : ["142", "143"],
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
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_185.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U1", "Parent" : "141"},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_185.grp_scaled_fixed2ieee_fu_268.top_level_car_muxbkb_U2", "Parent" : "141"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_185.top_level_car_mulibs_U6", "Parent" : "134"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_185.top_level_car_muxjbC_U7", "Parent" : "134"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_185.top_level_car_muxkbM_U8", "Parent" : "134"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.grp_sin_or_cos_double_s_fu_185.top_level_car_muxkbM_U9", "Parent" : "134"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_fadpcA_U73", "Parent" : "1"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_fadpcA_U74", "Parent" : "1"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_fadpcA_U75", "Parent" : "1"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_fadpcA_U76", "Parent" : "1"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_fmurcU_U77", "Parent" : "1"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_fmurcU_U78", "Parent" : "1"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_fmurcU_U79", "Parent" : "1"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_fmurcU_U80", "Parent" : "1"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_fdisc4_U81", "Parent" : "1"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_fdisc4_U82", "Parent" : "1"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_fptudo_U83", "Parent" : "1"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_fptudo_U84", "Parent" : "1"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_fpevdy_U85", "Parent" : "1"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_fpevdy_U86", "Parent" : "1"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_dsumb6_U87", "Parent" : "1"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_dadAem_U88", "Parent" : "1"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_dmuzec_U89", "Parent" : "1"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_dmuzec_U90", "Parent" : "1"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_dmuzec_U91", "Parent" : "1"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_127.top_level_car_dmuzec_U92", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	top_level_car {
		deltaTime {Type I LastRead 0 FirstWrite -1}
		torque {Type I LastRead 0 FirstWrite -1}
		steeringAngle {Type I LastRead 0 FirstWrite -1}
		pos_x {Type O LastRead -1 FirstWrite 2}
		pos_y {Type O LastRead -1 FirstWrite 2}
		vel_x {Type O LastRead -1 FirstWrite 2}
		vel_y {Type O LastRead -1 FirstWrite 2}
		orientation {Type O LastRead -1 FirstWrite 2}
		car_chassis_vel_z {Type IO LastRead -1 FirstWrite -1}
		car_chassis_angularV {Type IO LastRead -1 FirstWrite -1}
		car_chassis_vel_x {Type IO LastRead -1 FirstWrite -1}
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
		car_chassis_orientat {Type IO LastRead -1 FirstWrite -1}
		car_chassis_pos_x {Type IO LastRead -1 FirstWrite -1}
		car_chassis_pos_z {Type IO LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "449", "Max" : "2543"}
	, {"Name" : "Interval", "Min" : "450", "Max" : "2544"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	deltaTime { ap_none {  { deltaTime in_data 0 32 } } }
	torque { ap_none {  { torque in_data 0 32 } } }
	steeringAngle { ap_none {  { steeringAngle in_data 0 32 } } }
	pos_x { ap_vld {  { pos_x out_data 1 32 }  { pos_x_ap_vld out_vld 1 1 } } }
	pos_y { ap_vld {  { pos_y out_data 1 32 }  { pos_y_ap_vld out_vld 1 1 } } }
	vel_x { ap_vld {  { vel_x out_data 1 32 }  { vel_x_ap_vld out_vld 1 1 } } }
	vel_y { ap_vld {  { vel_y out_data 1 32 }  { vel_y_ap_vld out_vld 1 1 } } }
	orientation { ap_vld {  { orientation out_data 1 32 }  { orientation_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
