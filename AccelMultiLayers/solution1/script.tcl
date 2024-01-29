############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AccelMultiLayers
set_top NNMultiLayers
add_files AccelMultiLayers/src/NNMultiLayers.hpp
add_files AccelMultiLayers/src/NNMultiLayers.cpp
add_files -tb AccelMultiLayers/test/TestAccelNNMultiLayers.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
source "./AccelMultiLayers/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
