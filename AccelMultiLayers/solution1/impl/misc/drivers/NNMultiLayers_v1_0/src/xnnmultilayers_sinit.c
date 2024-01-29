// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xnnmultilayers.h"

extern XNnmultilayers_Config XNnmultilayers_ConfigTable[];

XNnmultilayers_Config *XNnmultilayers_LookupConfig(u16 DeviceId) {
	XNnmultilayers_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XNNMULTILAYERS_NUM_INSTANCES; Index++) {
		if (XNnmultilayers_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XNnmultilayers_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XNnmultilayers_Initialize(XNnmultilayers *InstancePtr, u16 DeviceId) {
	XNnmultilayers_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XNnmultilayers_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XNnmultilayers_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

