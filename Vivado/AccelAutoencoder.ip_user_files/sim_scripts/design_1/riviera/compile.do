vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_12
vlib riviera/processing_system7_vip_v1_0_14
vlib riviera/xil_defaultlib
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_26
vlib riviera/fifo_generator_v13_2_7
vlib riviera/axi_data_fifo_v2_1_25
vlib riviera/axi_crossbar_v2_1_27
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_dsp48_multadd_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_18
vlib riviera/floating_point_v7_1_14
vlib riviera/axi_protocol_converter_v2_1_26
vlib riviera/axi_mmu_v2_1_24
vlib riviera/axi_clock_converter_v2_1_25
vlib riviera/blk_mem_gen_v8_4_5
vlib riviera/axi_dwidth_converter_v2_1_26

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 riviera/axi_vip_v1_1_12
vmap processing_system7_vip_v1_0_14 riviera/processing_system7_vip_v1_0_14
vmap xil_defaultlib riviera/xil_defaultlib
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_26 riviera/axi_register_slice_v2_1_26
vmap fifo_generator_v13_2_7 riviera/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_25 riviera/axi_data_fifo_v2_1_25
vmap axi_crossbar_v2_1_27 riviera/axi_crossbar_v2_1_27
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 riviera/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 riviera/mult_gen_v12_0_18
vmap floating_point_v7_1_14 riviera/floating_point_v7_1_14
vmap axi_protocol_converter_v2_1_26 riviera/axi_protocol_converter_v2_1_26
vmap axi_mmu_v2_1_24 riviera/axi_mmu_v2_1_24
vmap axi_clock_converter_v2_1_25 riviera/axi_clock_converter_v2_1_25
vmap blk_mem_gen_v8_4_5 riviera/blk_mem_gen_v8_4_5
vmap axi_dwidth_converter_v2_1_26 riviera/axi_dwidth_converter_v2_1_26

vlog -work xilinx_vip  -sv2k12 "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12  -sv2k12 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_14  -sv2k12 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93 \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_27  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93 \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18 -93 \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ab19/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_14 -93 \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/342a/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_14  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/342a/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/verilog/Autoencoder_Autoencoder_Pipeline_1.v" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/verilog/Autoencoder_Autoencoder_Pipeline_2.v" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/verilog/Autoencoder_CONTROL_BUS_s_axi.v" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/verilog/Autoencoder_control_s_axi.v" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/verilog/Autoencoder_dadd_64ns_64ns_64_7_full_dsp_1.v" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/verilog/Autoencoder_ddiv_64ns_64ns_64_59_no_dsp_1.v" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/verilog/Autoencoder_dexp_64ns_64ns_64_21_full_dsp_1.v" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/verilog/Autoencoder_flow_control_loop_pipe_sequential_init.v" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/verilog/Autoencoder_gmem0_m_axi.v" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/verilog/Autoencoder_gmem_m_axi.v" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/verilog/Autoencoder_HiddenValues_V_RAM_AUTO_1R1W.v" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/verilog/Autoencoder_mul_7ns_8ns_15_1_1.v" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/verilog/Autoencoder_mul_8ns_8ns_16_1_1.v" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/verilog/Autoencoder_mul_32s_8ns_32_2_1.v" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/verilog/Autoencoder_mux_648_32_1_1.v" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/verilog/Autoencoder_sigmoid.v" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/verilog/Autoencoder.v" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/ip/Autoencoder_dadd_64ns_64ns_64_7_full_dsp_1_ip.v" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/ip/Autoencoder_ddiv_64ns_64ns_64_59_no_dsp_1_ip.v" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/81a8/hdl/ip/Autoencoder_dexp_64ns_64ns_64_21_full_dsp_1_ip.v" \
"../../../bd/design_1/ip/design_1_Autoencoder_0_1/sim/design_1_Autoencoder_0_1.v" \

vlog -work axi_protocol_converter_v2_1_26  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_2/sim/design_1_auto_pc_2.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \

vlog -work axi_mmu_v2_1_24  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/1b83/hdl/axi_mmu_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_s00_mmu_0/sim/design_1_s00_mmu_0.v" \

vlog -work axi_clock_converter_v2_1_25  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/e893/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_26  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/b3c7/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ip/design_1_Autoencoder_0_1/drivers/Autoencoder_v1_1/src" "+incdir+U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
"../../../bd/design_1/ip/design_1_auto_us_1/sim/design_1_auto_us_1.v" \
"../../../bd/design_1/ip/design_1_auto_pc_3/sim/design_1_auto_pc_3.v" \
"../../../bd/design_1/ip/design_1_s00_mmu_1/sim/design_1_s00_mmu_1.v" \
"../../../bd/design_1/ip/design_1_s01_mmu_0/sim/design_1_s01_mmu_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

