-makelib xcelium_lib/xilinx_vip -sv \
  "U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "U:/VivadoSuite-10-19-2022/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_12 -sv \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_14 -sv \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_26 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_25 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_27 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_10 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_6 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_6 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_6 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_multadd_v3_0_6 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_6 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_18 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/ab19/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_1_14 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/342a/hdl/floating_point_v7_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_1_14 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/342a/hdl/floating_point_v7_1_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_26 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_pc_2/sim/design_1_auto_pc_2.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
-endlib
-makelib xcelium_lib/axi_mmu_v2_1_24 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/1b83/hdl/axi_mmu_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_s00_mmu_0/sim/design_1_s00_mmu_0.v" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_25 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/e893/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_5 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/axi_dwidth_converter_v2_1_26 \
  "../../../../AccelAutoencoder.gen/sources_1/bd/design_1/ipshared/b3c7/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
  "../../../bd/design_1/ip/design_1_auto_us_1/sim/design_1_auto_us_1.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_3/sim/design_1_auto_pc_3.v" \
  "../../../bd/design_1/ip/design_1_s00_mmu_1/sim/design_1_s00_mmu_1.v" \
  "../../../bd/design_1/ip/design_1_s01_mmu_0/sim/design_1_s01_mmu_0.v" \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

