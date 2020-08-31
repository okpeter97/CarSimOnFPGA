set moduleName top_level_wheel
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
set C_modelName {top_level_wheel}
set C_modelType { void 0 }
set C_modelArgList {
	{ deltaTime float 32 regular  }
	{ torque float 32 regular  }
	{ velocity_x float 32 regular  }
	{ velocity_y float 32 regular  }
	{ load float 32 regular  }
	{ steeringAngle float 32 regular  }
	{ slipRatio float 32 regular {pointer 1}  }
	{ slipAngle float 32 regular {pointer 1}  }
	{ force_x float 32 regular {pointer 1}  }
	{ force_y float 32 regular {pointer 1}  }
	{ angularVel float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "deltaTime", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "deltaTime","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "torque", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "torque","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "velocity_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "velocity_x","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "velocity_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "velocity_y","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "load","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "steeringAngle", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "steeringAngle","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "slipRatio", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "slipRatio","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "slipAngle", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "slipAngle","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "force_x", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "force_x","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "force_y", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "force_y","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "angularVel", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "angularVel","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ deltaTime sc_in sc_lv 32 signal 0 } 
	{ torque sc_in sc_lv 32 signal 1 } 
	{ velocity_x sc_in sc_lv 32 signal 2 } 
	{ velocity_y sc_in sc_lv 32 signal 3 } 
	{ load sc_in sc_lv 32 signal 4 } 
	{ steeringAngle sc_in sc_lv 32 signal 5 } 
	{ slipRatio sc_out sc_lv 32 signal 6 } 
	{ slipRatio_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ slipAngle sc_out sc_lv 32 signal 7 } 
	{ slipAngle_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ force_x sc_out sc_lv 32 signal 8 } 
	{ force_x_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ force_y sc_out sc_lv 32 signal 9 } 
	{ force_y_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ angularVel sc_out sc_lv 32 signal 10 } 
	{ angularVel_ap_vld sc_out sc_logic 1 outvld 10 } 
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
 	{ "name": "velocity_x", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "velocity_x", "role": "default" }} , 
 	{ "name": "velocity_y", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "velocity_y", "role": "default" }} , 
 	{ "name": "load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "load", "role": "default" }} , 
 	{ "name": "steeringAngle", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "steeringAngle", "role": "default" }} , 
 	{ "name": "slipRatio", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "slipRatio", "role": "default" }} , 
 	{ "name": "slipRatio_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "slipRatio", "role": "ap_vld" }} , 
 	{ "name": "slipAngle", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "slipAngle", "role": "default" }} , 
 	{ "name": "slipAngle_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "slipAngle", "role": "ap_vld" }} , 
 	{ "name": "force_x", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "force_x", "role": "default" }} , 
 	{ "name": "force_x_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "force_x", "role": "ap_vld" }} , 
 	{ "name": "force_y", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "force_y", "role": "default" }} , 
 	{ "name": "force_y_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "force_y", "role": "ap_vld" }} , 
 	{ "name": "angularVel", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "angularVel", "role": "default" }} , 
 	{ "name": "angularVel_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "angularVel", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "top_level_wheel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "196", "EstimateLatencyMax" : "1245",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_129"}],
		"Port" : [
			{"Name" : "deltaTime", "Type" : "None", "Direction" : "I"},
			{"Name" : "torque", "Type" : "None", "Direction" : "I"},
			{"Name" : "velocity_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "velocity_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "load", "Type" : "None", "Direction" : "I"},
			{"Name" : "steeringAngle", "Type" : "None", "Direction" : "I"},
			{"Name" : "slipRatio", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "slipAngle", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "force_x", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "force_y", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "angularVel", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_fu_129", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_fu_129", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_fu_129", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_fu_129", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_fu_129", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_fu_129", "Port" : "fourth_order_double_s"}]},
			{"Name" : "wheel_angularVelocit", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_fu_129", "Port" : "wheel_angularVelocit"}]},
			{"Name" : "cordic_ctab_table_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_fu_129", "Port" : "cordic_ctab_table_12"}]},
			{"Name" : "wheel_slipAngle", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_fu_129", "Port" : "wheel_slipAngle"}]},
			{"Name" : "wheel_slipRatio", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_fu_129", "Port" : "wheel_slipRatio"}]},
			{"Name" : "wheel_fz", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_fu_129", "Port" : "wheel_fz"}]},
			{"Name" : "wheel_fx", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_fu_129", "Port" : "wheel_fx"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129", "Parent" : "0", "Child" : ["2", "17", "23", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "1243",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_fu_216"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_fu_216"},
			{"State" : "ap_ST_fsm_state100", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_fu_216"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_258"},
			{"State" : "ap_ST_fsm_state76", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_258"},
			{"State" : "ap_ST_fsm_state80", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_258"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_258"},
			{"State" : "ap_ST_fsm_state93", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_atan_fu_258"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_287"}],
		"Port" : [
			{"Name" : "deltaTime", "Type" : "None", "Direction" : "I"},
			{"Name" : "torque", "Type" : "None", "Direction" : "I"},
			{"Name" : "velocity_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "velocity_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "load", "Type" : "None", "Direction" : "I"},
			{"Name" : "steeringAngle", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_sin_fu_216", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "23", "SubInstance" : "grp_sin_or_cos_double_s_fu_287", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_sin_fu_216", "Port" : "fourth_order_double_4"},
					{"ID" : "23", "SubInstance" : "grp_sin_or_cos_double_s_fu_287", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_sin_fu_216", "Port" : "fourth_order_double_5"},
					{"ID" : "23", "SubInstance" : "grp_sin_or_cos_double_s_fu_287", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_sin_fu_216", "Port" : "fourth_order_double_6"},
					{"ID" : "23", "SubInstance" : "grp_sin_or_cos_double_s_fu_287", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_sin_fu_216", "Port" : "fourth_order_double_7"},
					{"ID" : "23", "SubInstance" : "grp_sin_or_cos_double_s_fu_287", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_sin_fu_216", "Port" : "fourth_order_double_s"},
					{"ID" : "23", "SubInstance" : "grp_sin_or_cos_double_s_fu_287", "Port" : "fourth_order_double_s"}]},
			{"Name" : "wheel_angularVelocit", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cordic_ctab_table_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_atan_fu_258", "Port" : "cordic_ctab_table_12"}]},
			{"Name" : "wheel_slipAngle", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "wheel_slipRatio", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "wheel_fz", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "wheel_fx", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_fu_216", "Parent" : "1", "Child" : ["3"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_fu_216.grp_sin_or_cos_double_s_fu_26", "Parent" : "2", "Child" : ["4", "5", "6", "7", "8", "9", "10", "13", "14", "15", "16"],
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
	{"ID" : "4", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_fu_216.grp_sin_or_cos_double_s_fu_26.ref_4oPi_table_256_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_fu_216.grp_sin_or_cos_double_s_fu_26.fourth_order_double_4_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_fu_216.grp_sin_or_cos_double_s_fu_26.fourth_order_double_5_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_fu_216.grp_sin_or_cos_double_s_fu_26.fourth_order_double_6_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_fu_216.grp_sin_or_cos_double_s_fu_26.fourth_order_double_7_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_fu_216.grp_sin_or_cos_double_s_fu_26.fourth_order_double_s_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_fu_216.grp_sin_or_cos_double_s_fu_26.grp_scaled_fixed2ieee_fu_268", "Parent" : "3", "Child" : ["11", "12"],
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
	{"ID" : "11", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_fu_216.grp_sin_or_cos_double_s_fu_26.grp_scaled_fixed2ieee_fu_268.top_level_wheel_mbkb_U1", "Parent" : "10"},
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_fu_216.grp_sin_or_cos_double_s_fu_26.grp_scaled_fixed2ieee_fu_268.top_level_wheel_mbkb_U2", "Parent" : "10"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_fu_216.grp_sin_or_cos_double_s_fu_26.top_level_wheel_mibs_U6", "Parent" : "3"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_fu_216.grp_sin_or_cos_double_s_fu_26.top_level_wheel_mjbC_U7", "Parent" : "3"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_fu_216.grp_sin_or_cos_double_s_fu_26.top_level_wheel_mkbM_U8", "Parent" : "3"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_fu_216.grp_sin_or_cos_double_s_fu_26.top_level_wheel_mkbM_U9", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_atan_fu_258", "Parent" : "1", "Child" : ["18", "20", "21", "22"],
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
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_atan_fu_258.grp_atan_generic_double_s_fu_57", "Parent" : "17", "Child" : ["19"],
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
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_atan_fu_258.grp_atan_generic_double_s_fu_57.cordic_ctab_table_12_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_atan_fu_258.top_level_wheel_dmb6_U25", "Parent" : "17"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_atan_fu_258.top_level_wheel_dncg_U26", "Parent" : "17"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_atan_fu_258.top_level_wheel_docq_U27", "Parent" : "17"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_or_cos_double_s_fu_287", "Parent" : "1", "Child" : ["24", "25", "26", "27", "28", "29", "30", "33", "34", "35", "36"],
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
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_or_cos_double_s_fu_287.ref_4oPi_table_256_V_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_or_cos_double_s_fu_287.fourth_order_double_4_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_or_cos_double_s_fu_287.fourth_order_double_5_U", "Parent" : "23"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_or_cos_double_s_fu_287.fourth_order_double_6_U", "Parent" : "23"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_or_cos_double_s_fu_287.fourth_order_double_7_U", "Parent" : "23"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_or_cos_double_s_fu_287.fourth_order_double_s_U", "Parent" : "23"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_or_cos_double_s_fu_287.grp_scaled_fixed2ieee_fu_268", "Parent" : "23", "Child" : ["31", "32"],
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
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_or_cos_double_s_fu_287.grp_scaled_fixed2ieee_fu_268.top_level_wheel_mbkb_U1", "Parent" : "30"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_or_cos_double_s_fu_287.grp_scaled_fixed2ieee_fu_268.top_level_wheel_mbkb_U2", "Parent" : "30"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_or_cos_double_s_fu_287.top_level_wheel_mibs_U6", "Parent" : "23"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_or_cos_double_s_fu_287.top_level_wheel_mjbC_U7", "Parent" : "23"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_or_cos_double_s_fu_287.top_level_wheel_mkbM_U8", "Parent" : "23"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.grp_sin_or_cos_double_s_fu_287.top_level_wheel_mkbM_U9", "Parent" : "23"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_fpcA_U32", "Parent" : "1"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_fqcK_U33", "Parent" : "1"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_frcU_U34", "Parent" : "1"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_frcU_U35", "Parent" : "1"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_frcU_U36", "Parent" : "1"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_frcU_U37", "Parent" : "1"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_fsc4_U38", "Parent" : "1"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_fsc4_U39", "Parent" : "1"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_stde_U40", "Parent" : "1"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_fudo_U41", "Parent" : "1"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_fudo_U42", "Parent" : "1"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_fvdy_U43", "Parent" : "1"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_fvdy_U44", "Parent" : "1"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_fwdI_U45", "Parent" : "1"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_fwdI_U46", "Parent" : "1"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_fxdS_U47", "Parent" : "1"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_dyd2_U48", "Parent" : "1"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_dzec_U49", "Parent" : "1"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_dzec_U50", "Parent" : "1"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_dncg_U51", "Parent" : "1"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_129.top_level_wheel_dncg_U52", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	top_level_wheel {
		deltaTime {Type I LastRead 0 FirstWrite -1}
		torque {Type I LastRead 0 FirstWrite -1}
		velocity_x {Type I LastRead 0 FirstWrite -1}
		velocity_y {Type I LastRead 0 FirstWrite -1}
		load {Type I LastRead 0 FirstWrite -1}
		steeringAngle {Type I LastRead 0 FirstWrite -1}
		slipRatio {Type O LastRead -1 FirstWrite 2}
		slipAngle {Type O LastRead -1 FirstWrite 2}
		force_x {Type O LastRead -1 FirstWrite 2}
		force_y {Type O LastRead -1 FirstWrite 2}
		angularVel {Type O LastRead -1 FirstWrite 2}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}
		wheel_angularVelocit {Type IO LastRead -1 FirstWrite -1}
		cordic_ctab_table_12 {Type I LastRead -1 FirstWrite -1}
		wheel_slipAngle {Type IO LastRead -1 FirstWrite -1}
		wheel_slipRatio {Type IO LastRead -1 FirstWrite -1}
		wheel_fz {Type IO LastRead -1 FirstWrite -1}
		wheel_fx {Type IO LastRead -1 FirstWrite -1}}
	update {
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
		wheel_angularVelocit {Type IO LastRead 3 FirstWrite 130}
		cordic_ctab_table_12 {Type I LastRead -1 FirstWrite -1}
		wheel_slipAngle {Type O LastRead -1 FirstWrite 28}
		wheel_slipRatio {Type O LastRead -1 FirstWrite 28}
		wheel_fz {Type O LastRead -1 FirstWrite 114}
		wheel_fx {Type O LastRead -1 FirstWrite 114}}
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
		prescale {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "196", "Max" : "1245"}
	, {"Name" : "Interval", "Min" : "197", "Max" : "1246"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	deltaTime { ap_none {  { deltaTime in_data 0 32 } } }
	torque { ap_none {  { torque in_data 0 32 } } }
	velocity_x { ap_none {  { velocity_x in_data 0 32 } } }
	velocity_y { ap_none {  { velocity_y in_data 0 32 } } }
	load { ap_none {  { load in_data 0 32 } } }
	steeringAngle { ap_none {  { steeringAngle in_data 0 32 } } }
	slipRatio { ap_vld {  { slipRatio out_data 1 32 }  { slipRatio_ap_vld out_vld 1 1 } } }
	slipAngle { ap_vld {  { slipAngle out_data 1 32 }  { slipAngle_ap_vld out_vld 1 1 } } }
	force_x { ap_vld {  { force_x out_data 1 32 }  { force_x_ap_vld out_vld 1 1 } } }
	force_y { ap_vld {  { force_y out_data 1 32 }  { force_y_ap_vld out_vld 1 1 } } }
	angularVel { ap_vld {  { angularVel out_data 1 32 }  { angularVel_ap_vld out_vld 1 1 } } }
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
