// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xnnmultilayers.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XNnmultilayers_CfgInitialize(XNnmultilayers *InstancePtr, XNnmultilayers_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XNnmultilayers_Start(XNnmultilayers *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnmultilayers_ReadReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XNnmultilayers_WriteReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XNnmultilayers_IsDone(XNnmultilayers *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnmultilayers_ReadReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XNnmultilayers_IsIdle(XNnmultilayers *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnmultilayers_ReadReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XNnmultilayers_IsReady(XNnmultilayers *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnmultilayers_ReadReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XNnmultilayers_EnableAutoRestart(XNnmultilayers *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnmultilayers_WriteReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XNnmultilayers_DisableAutoRestart(XNnmultilayers *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnmultilayers_WriteReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XNnmultilayers_Set_DataIn(XNnmultilayers *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnmultilayers_WriteReg(InstancePtr->Control_BaseAddress, XNNMULTILAYERS_CONTROL_ADDR_DATAIN_DATA, (u32)(Data));
    XNnmultilayers_WriteReg(InstancePtr->Control_BaseAddress, XNNMULTILAYERS_CONTROL_ADDR_DATAIN_DATA + 4, (u32)(Data >> 32));
}

u64 XNnmultilayers_Get_DataIn(XNnmultilayers *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnmultilayers_ReadReg(InstancePtr->Control_BaseAddress, XNNMULTILAYERS_CONTROL_ADDR_DATAIN_DATA);
    Data += (u64)XNnmultilayers_ReadReg(InstancePtr->Control_BaseAddress, XNNMULTILAYERS_CONTROL_ADDR_DATAIN_DATA + 4) << 32;
    return Data;
}

void XNnmultilayers_Set_DataDimensionP(XNnmultilayers *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnmultilayers_WriteReg(InstancePtr->Control_BaseAddress, XNNMULTILAYERS_CONTROL_ADDR_DATADIMENSIONP_DATA, Data);
}

u32 XNnmultilayers_Get_DataDimensionP(XNnmultilayers *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnmultilayers_ReadReg(InstancePtr->Control_BaseAddress, XNNMULTILAYERS_CONTROL_ADDR_DATADIMENSIONP_DATA);
    return Data;
}

void XNnmultilayers_Set_HiddenDimensionP(XNnmultilayers *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnmultilayers_WriteReg(InstancePtr->Control_BaseAddress, XNNMULTILAYERS_CONTROL_ADDR_HIDDENDIMENSIONP_DATA, Data);
}

u32 XNnmultilayers_Get_HiddenDimensionP(XNnmultilayers *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnmultilayers_ReadReg(InstancePtr->Control_BaseAddress, XNNMULTILAYERS_CONTROL_ADDR_HIDDENDIMENSIONP_DATA);
    return Data;
}

void XNnmultilayers_Set_LearningRateP(XNnmultilayers *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnmultilayers_WriteReg(InstancePtr->Control_BaseAddress, XNNMULTILAYERS_CONTROL_ADDR_LEARNINGRATEP_DATA, Data);
}

u32 XNnmultilayers_Get_LearningRateP(XNnmultilayers *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnmultilayers_ReadReg(InstancePtr->Control_BaseAddress, XNNMULTILAYERS_CONTROL_ADDR_LEARNINGRATEP_DATA);
    return Data;
}

void XNnmultilayers_Set_MomentumP(XNnmultilayers *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnmultilayers_WriteReg(InstancePtr->Control_BaseAddress, XNNMULTILAYERS_CONTROL_ADDR_MOMENTUMP_DATA, Data);
}

u32 XNnmultilayers_Get_MomentumP(XNnmultilayers *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnmultilayers_ReadReg(InstancePtr->Control_BaseAddress, XNNMULTILAYERS_CONTROL_ADDR_MOMENTUMP_DATA);
    return Data;
}

void XNnmultilayers_Set_DataOut(XNnmultilayers *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnmultilayers_WriteReg(InstancePtr->Control_BaseAddress, XNNMULTILAYERS_CONTROL_ADDR_DATAOUT_DATA, (u32)(Data));
    XNnmultilayers_WriteReg(InstancePtr->Control_BaseAddress, XNNMULTILAYERS_CONTROL_ADDR_DATAOUT_DATA + 4, (u32)(Data >> 32));
}

u64 XNnmultilayers_Get_DataOut(XNnmultilayers *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnmultilayers_ReadReg(InstancePtr->Control_BaseAddress, XNNMULTILAYERS_CONTROL_ADDR_DATAOUT_DATA);
    Data += (u64)XNnmultilayers_ReadReg(InstancePtr->Control_BaseAddress, XNNMULTILAYERS_CONTROL_ADDR_DATAOUT_DATA + 4) << 32;
    return Data;
}

u32 XNnmultilayers_Get_ErrorP(XNnmultilayers *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnmultilayers_ReadReg(InstancePtr->Control_BaseAddress, XNNMULTILAYERS_CONTROL_ADDR_ERRORP_DATA);
    return Data;
}

u32 XNnmultilayers_Get_ErrorP_vld(XNnmultilayers *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnmultilayers_ReadReg(InstancePtr->Control_BaseAddress, XNNMULTILAYERS_CONTROL_ADDR_ERRORP_CTRL);
    return Data & 0x1;
}

void XNnmultilayers_Set_EncWeights(XNnmultilayers *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnmultilayers_WriteReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_ENCWEIGHTS_DATA, (u32)(Data));
    XNnmultilayers_WriteReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_ENCWEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XNnmultilayers_Get_EncWeights(XNnmultilayers *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnmultilayers_ReadReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_ENCWEIGHTS_DATA);
    Data += (u64)XNnmultilayers_ReadReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_ENCWEIGHTS_DATA + 4) << 32;
    return Data;
}

void XNnmultilayers_Set_DecWeights(XNnmultilayers *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnmultilayers_WriteReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_DECWEIGHTS_DATA, (u32)(Data));
    XNnmultilayers_WriteReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_DECWEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XNnmultilayers_Get_DecWeights(XNnmultilayers *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnmultilayers_ReadReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_DECWEIGHTS_DATA);
    Data += (u64)XNnmultilayers_ReadReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_DECWEIGHTS_DATA + 4) << 32;
    return Data;
}

void XNnmultilayers_InterruptGlobalEnable(XNnmultilayers *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnmultilayers_WriteReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_GIE, 1);
}

void XNnmultilayers_InterruptGlobalDisable(XNnmultilayers *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnmultilayers_WriteReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_GIE, 0);
}

void XNnmultilayers_InterruptEnable(XNnmultilayers *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XNnmultilayers_ReadReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_IER);
    XNnmultilayers_WriteReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XNnmultilayers_InterruptDisable(XNnmultilayers *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XNnmultilayers_ReadReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_IER);
    XNnmultilayers_WriteReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XNnmultilayers_InterruptClear(XNnmultilayers *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XNnmultilayers_WriteReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XNnmultilayers_InterruptGetEnabled(XNnmultilayers *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNnmultilayers_ReadReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_IER);
}

u32 XNnmultilayers_InterruptGetStatus(XNnmultilayers *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XNnmultilayers_ReadReg(InstancePtr->Control_bus_BaseAddress, XNNMULTILAYERS_CONTROL_BUS_ADDR_ISR);
}

