############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project CarSimOnFPGA
set_top top_level
add_files CarSimOnFPGA/Car.cpp
add_files CarSimOnFPGA/Chassis.cpp
add_files CarSimOnFPGA/Wheel.cpp
add_files CarSimOnFPGA/top_level.cpp
add_files -tb CarSimOnFPGA/main.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z010-clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./CarSimOnFPGA/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
