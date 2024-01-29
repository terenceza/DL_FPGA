// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XNNMULTILAYERS_H
#define XNNMULTILAYERS_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xnnmultilayers_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
    u64 Control_bus_BaseAddress;
} XNnmultilayers_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Control_bus_BaseAddress;
    u32 IsReady;
} XNnmultilayers;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XNnmultilayers_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XNnmultilayers_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XNnmultilayers_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XNnmultilayers_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XNnmultilayers_Initialize(XNnmultilayers *InstancePtr, u16 DeviceId);
XNnmultilayers_Config* XNnmultilayers_LookupConfig(u16 DeviceId);
int XNnmultilayers_CfgInitialize(XNnmultilayers *InstancePtr, XNnmultilayers_Config *ConfigPtr);
#else
int XNnmultilayers_Initialize(XNnmultilayers *InstancePtr, const char* InstanceName);
int XNnmultilayers_Release(XNnmultilayers *InstancePtr);
#endif

void XNnmultilayers_Start(XNnmultilayers *InstancePtr);
u32 XNnmultilayers_IsDone(XNnmultilayers *InstancePtr);
u32 XNnmultilayers_IsIdle(XNnmultilayers *InstancePtr);
u32 XNnmultilayers_IsReady(XNnmultilayers *InstancePtr);
void XNnmultilayers_EnableAutoRestart(XNnmultilayers *InstancePtr);
void XNnmultilayers_DisableAutoRestart(XNnmultilayers *InstancePtr);

void XNnmultilayers_Set_DataIn(XNnmultilayers *InstancePtr, u64 Data);
u64 XNnmultilayers_Get_DataIn(XNnmultilayers *InstancePtr);
void XNnmultilayers_Set_DataDimensionP(XNnmultilayers *InstancePtr, u32 Data);
u32 XNnmultilayers_Get_DataDimensionP(XNnmultilayers *InstancePtr);
void XNnmultilayers_Set_HiddenDimensionP(XNnmultilayers *InstancePtr, u32 Data);
u32 XNnmultilayers_Get_HiddenDimensionP(XNnmultilayers *InstancePtr);
void XNnmultilayers_Set_LearningRateP(XNnmultilayers *InstancePtr, u32 Data);
u32 XNnmultilayers_Get_LearningRateP(XNnmultilayers *InstancePtr);
void XNnmultilayers_Set_MomentumP(XNnmultilayers *InstancePtr, u32 Data);
u32 XNnmultilayers_Get_MomentumP(XNnmultilayers *InstancePtr);
void XNnmultilayers_Set_DataOut(XNnmultilayers *InstancePtr, u64 Data);
u64 XNnmultilayers_Get_DataOut(XNnmultilayers *InstancePtr);
u32 XNnmultilayers_Get_ErrorP(XNnmultilayers *InstancePtr);
u32 XNnmultilayers_Get_ErrorP_vld(XNnmultilayers *InstancePtr);
void XNnmultilayers_Set_EncWeights(XNnmultilayers *InstancePtr, u64 Data);
u64 XNnmultilayers_Get_EncWeights(XNnmultilayers *InstancePtr);
void XNnmultilayers_Set_DecWeights(XNnmultilayers *InstancePtr, u64 Data);
u64 XNnmultilayers_Get_DecWeights(XNnmultilayers *InstancePtr);

void XNnmultilayers_InterruptGlobalEnable(XNnmultilayers *InstancePtr);
void XNnmultilayers_InterruptGlobalDisable(XNnmultilayers *InstancePtr);
void XNnmultilayers_InterruptEnable(XNnmultilayers *InstancePtr, u32 Mask);
void XNnmultilayers_InterruptDisable(XNnmultilayers *InstancePtr, u32 Mask);
void XNnmultilayers_InterruptClear(XNnmultilayers *InstancePtr, u32 Mask);
u32 XNnmultilayers_InterruptGetEnabled(XNnmultilayers *InstancePtr);
u32 XNnmultilayers_InterruptGetStatus(XNnmultilayers *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
