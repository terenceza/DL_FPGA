set SynModuleInfo {
  {SRCNAME NNMultiLayers_Pipeline_VITIS_LOOP_52_1 MODELNAME NNMultiLayers_Pipeline_VITIS_LOOP_52_1 RTLNAME NNMultiLayers_NNMultiLayers_Pipeline_VITIS_LOOP_52_1
    SUBMODULES {
      {MODELNAME NNMultiLayers_flow_control_loop_pipe_sequential_init RTLNAME NNMultiLayers_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME NNMultiLayers_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME NNMultiLayers_Pipeline_VITIS_LOOP_58_2 MODELNAME NNMultiLayers_Pipeline_VITIS_LOOP_58_2 RTLNAME NNMultiLayers_NNMultiLayers_Pipeline_VITIS_LOOP_58_2}
  {SRCNAME NNMultiLayers_Pipeline_VITIS_LOOP_63_3 MODELNAME NNMultiLayers_Pipeline_VITIS_LOOP_63_3 RTLNAME NNMultiLayers_NNMultiLayers_Pipeline_VITIS_LOOP_63_3}
  {SRCNAME NNMultiLayers_Pipeline_VITIS_LOOP_69_4 MODELNAME NNMultiLayers_Pipeline_VITIS_LOOP_69_4 RTLNAME NNMultiLayers_NNMultiLayers_Pipeline_VITIS_LOOP_69_4}
  {SRCNAME BackPropagateDecoderWeightChanges_Pipeline_Loop31 MODELNAME BackPropagateDecoderWeightChanges_Pipeline_Loop31 RTLNAME NNMultiLayers_BackPropagateDecoderWeightChanges_Pipeline_Loop31}
  {SRCNAME BackPropagateDecoderWeightChanges MODELNAME BackPropagateDecoderWeightChanges RTLNAME NNMultiLayers_BackPropagateDecoderWeightChanges}
  {SRCNAME BackPropagateEncoderWeightsChanges MODELNAME BackPropagateEncoderWeightsChanges RTLNAME NNMultiLayers_BackPropagateEncoderWeightsChanges}
  {SRCNAME BackPropagateEncoderWeights MODELNAME BackPropagateEncoderWeights RTLNAME NNMultiLayers_BackPropagateEncoderWeights
    SUBMODULES {
      {MODELNAME NNMultiLayers_mux_406_1_1_1 RTLNAME NNMultiLayers_mux_406_1_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME BackPropagateDecoderWeights MODELNAME BackPropagateDecoderWeights RTLNAME NNMultiLayers_BackPropagateDecoderWeights}
  {SRCNAME BackPropagate MODELNAME BackPropagate RTLNAME NNMultiLayers_BackPropagate}
  {SRCNAME NNMultiLayers MODELNAME NNMultiLayers RTLNAME NNMultiLayers IS_TOP 1
    SUBMODULES {
      {MODELNAME NNMultiLayers_PrevEncoderWeightChanges_RAM_AUTO_0R0W RTLNAME NNMultiLayers_PrevEncoderWeightChanges_RAM_AUTO_0R0W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME NNMultiLayers_Deltas_V_RAM_AUTO_0R0W RTLNAME NNMultiLayers_Deltas_V_RAM_AUTO_0R0W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME NNMultiLayers_gmem_m_axi RTLNAME NNMultiLayers_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME NNMultiLayers_gmem0_m_axi RTLNAME NNMultiLayers_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME NNMultiLayers_CONTROL_BUS_s_axi RTLNAME NNMultiLayers_CONTROL_BUS_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME NNMultiLayers_control_s_axi RTLNAME NNMultiLayers_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
