############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project CarSimOnFPGA
set_top top_level_wheelSimWithMass
add_files CarSimOnFPGA/Car.cpp
add_files CarSimOnFPGA/Chassis.cpp
add_files CarSimOnFPGA/Wheel.cpp
add_files CarSimOnFPGA/WheelWithMass.cpp
add_files CarSimOnFPGA/top_level.cpp
add_files -tb CarSimOnFPGA/main.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7k325t-ffg900-2}
create_clock -period 10 -name default
config_sdx -target none
config_export -format sysgen -rtl vhdl -vivado_optimization_level 2 -vivado_phys_opt place -vivado_report_level 0
set_clock_uncertainty 12.5%
source "./CarSimOnFPGA/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -setup
export_design -rtl vhdl -format sysgen
