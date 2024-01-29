// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Autoencoder_Autoencoder_Pipeline_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_gmem_AWVALID,
        m_axi_gmem_AWREADY,
        m_axi_gmem_AWADDR,
        m_axi_gmem_AWID,
        m_axi_gmem_AWLEN,
        m_axi_gmem_AWSIZE,
        m_axi_gmem_AWBURST,
        m_axi_gmem_AWLOCK,
        m_axi_gmem_AWCACHE,
        m_axi_gmem_AWPROT,
        m_axi_gmem_AWQOS,
        m_axi_gmem_AWREGION,
        m_axi_gmem_AWUSER,
        m_axi_gmem_WVALID,
        m_axi_gmem_WREADY,
        m_axi_gmem_WDATA,
        m_axi_gmem_WSTRB,
        m_axi_gmem_WLAST,
        m_axi_gmem_WID,
        m_axi_gmem_WUSER,
        m_axi_gmem_ARVALID,
        m_axi_gmem_ARREADY,
        m_axi_gmem_ARADDR,
        m_axi_gmem_ARID,
        m_axi_gmem_ARLEN,
        m_axi_gmem_ARSIZE,
        m_axi_gmem_ARBURST,
        m_axi_gmem_ARLOCK,
        m_axi_gmem_ARCACHE,
        m_axi_gmem_ARPROT,
        m_axi_gmem_ARQOS,
        m_axi_gmem_ARREGION,
        m_axi_gmem_ARUSER,
        m_axi_gmem_RVALID,
        m_axi_gmem_RREADY,
        m_axi_gmem_RDATA,
        m_axi_gmem_RLAST,
        m_axi_gmem_RID,
        m_axi_gmem_RFIFONUM,
        m_axi_gmem_RUSER,
        m_axi_gmem_RRESP,
        m_axi_gmem_BVALID,
        m_axi_gmem_BREADY,
        m_axi_gmem_BRESP,
        m_axi_gmem_BID,
        m_axi_gmem_BUSER,
        sext_ln35,
        OutputValues_V,
        OutputValues_V_1,
        OutputValues_V_2,
        OutputValues_V_3,
        OutputValues_V_4,
        OutputValues_V_5,
        OutputValues_V_6,
        OutputValues_V_7,
        OutputValues_V_8,
        OutputValues_V_9,
        OutputValues_V_10,
        OutputValues_V_11,
        OutputValues_V_12,
        OutputValues_V_13,
        OutputValues_V_14,
        OutputValues_V_15,
        OutputValues_V_16,
        OutputValues_V_17,
        OutputValues_V_18,
        OutputValues_V_19,
        OutputValues_V_20,
        OutputValues_V_21,
        OutputValues_V_22,
        OutputValues_V_23,
        OutputValues_V_24,
        OutputValues_V_25,
        OutputValues_V_26,
        OutputValues_V_27,
        OutputValues_V_28,
        OutputValues_V_29,
        OutputValues_V_30,
        OutputValues_V_31,
        OutputValues_V_32,
        OutputValues_V_33,
        OutputValues_V_34,
        OutputValues_V_35,
        OutputValues_V_36,
        OutputValues_V_37,
        OutputValues_V_38,
        OutputValues_V_39,
        OutputValues_V_40,
        OutputValues_V_41,
        OutputValues_V_42,
        OutputValues_V_43,
        OutputValues_V_44,
        OutputValues_V_45,
        OutputValues_V_46,
        OutputValues_V_47,
        OutputValues_V_48,
        OutputValues_V_49,
        OutputValues_V_50,
        OutputValues_V_51,
        OutputValues_V_52,
        OutputValues_V_53,
        OutputValues_V_54,
        OutputValues_V_55,
        OutputValues_V_56,
        OutputValues_V_57,
        OutputValues_V_58,
        OutputValues_V_59,
        OutputValues_V_60,
        OutputValues_V_61,
        OutputValues_V_62,
        OutputValues_V_63
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_gmem_AWVALID;
input   m_axi_gmem_AWREADY;
output  [63:0] m_axi_gmem_AWADDR;
output  [0:0] m_axi_gmem_AWID;
output  [31:0] m_axi_gmem_AWLEN;
output  [2:0] m_axi_gmem_AWSIZE;
output  [1:0] m_axi_gmem_AWBURST;
output  [1:0] m_axi_gmem_AWLOCK;
output  [3:0] m_axi_gmem_AWCACHE;
output  [2:0] m_axi_gmem_AWPROT;
output  [3:0] m_axi_gmem_AWQOS;
output  [3:0] m_axi_gmem_AWREGION;
output  [0:0] m_axi_gmem_AWUSER;
output   m_axi_gmem_WVALID;
input   m_axi_gmem_WREADY;
output  [31:0] m_axi_gmem_WDATA;
output  [3:0] m_axi_gmem_WSTRB;
output   m_axi_gmem_WLAST;
output  [0:0] m_axi_gmem_WID;
output  [0:0] m_axi_gmem_WUSER;
output   m_axi_gmem_ARVALID;
input   m_axi_gmem_ARREADY;
output  [63:0] m_axi_gmem_ARADDR;
output  [0:0] m_axi_gmem_ARID;
output  [31:0] m_axi_gmem_ARLEN;
output  [2:0] m_axi_gmem_ARSIZE;
output  [1:0] m_axi_gmem_ARBURST;
output  [1:0] m_axi_gmem_ARLOCK;
output  [3:0] m_axi_gmem_ARCACHE;
output  [2:0] m_axi_gmem_ARPROT;
output  [3:0] m_axi_gmem_ARQOS;
output  [3:0] m_axi_gmem_ARREGION;
output  [0:0] m_axi_gmem_ARUSER;
input   m_axi_gmem_RVALID;
output   m_axi_gmem_RREADY;
input  [31:0] m_axi_gmem_RDATA;
input   m_axi_gmem_RLAST;
input  [0:0] m_axi_gmem_RID;
input  [8:0] m_axi_gmem_RFIFONUM;
input  [0:0] m_axi_gmem_RUSER;
input  [1:0] m_axi_gmem_RRESP;
input   m_axi_gmem_BVALID;
output   m_axi_gmem_BREADY;
input  [1:0] m_axi_gmem_BRESP;
input  [0:0] m_axi_gmem_BID;
input  [0:0] m_axi_gmem_BUSER;
input  [61:0] sext_ln35;
input  [31:0] OutputValues_V;
input  [31:0] OutputValues_V_1;
input  [31:0] OutputValues_V_2;
input  [31:0] OutputValues_V_3;
input  [31:0] OutputValues_V_4;
input  [31:0] OutputValues_V_5;
input  [31:0] OutputValues_V_6;
input  [31:0] OutputValues_V_7;
input  [31:0] OutputValues_V_8;
input  [31:0] OutputValues_V_9;
input  [31:0] OutputValues_V_10;
input  [31:0] OutputValues_V_11;
input  [31:0] OutputValues_V_12;
input  [31:0] OutputValues_V_13;
input  [31:0] OutputValues_V_14;
input  [31:0] OutputValues_V_15;
input  [31:0] OutputValues_V_16;
input  [31:0] OutputValues_V_17;
input  [31:0] OutputValues_V_18;
input  [31:0] OutputValues_V_19;
input  [31:0] OutputValues_V_20;
input  [31:0] OutputValues_V_21;
input  [31:0] OutputValues_V_22;
input  [31:0] OutputValues_V_23;
input  [31:0] OutputValues_V_24;
input  [31:0] OutputValues_V_25;
input  [31:0] OutputValues_V_26;
input  [31:0] OutputValues_V_27;
input  [31:0] OutputValues_V_28;
input  [31:0] OutputValues_V_29;
input  [31:0] OutputValues_V_30;
input  [31:0] OutputValues_V_31;
input  [31:0] OutputValues_V_32;
input  [31:0] OutputValues_V_33;
input  [31:0] OutputValues_V_34;
input  [31:0] OutputValues_V_35;
input  [31:0] OutputValues_V_36;
input  [31:0] OutputValues_V_37;
input  [31:0] OutputValues_V_38;
input  [31:0] OutputValues_V_39;
input  [31:0] OutputValues_V_40;
input  [31:0] OutputValues_V_41;
input  [31:0] OutputValues_V_42;
input  [31:0] OutputValues_V_43;
input  [31:0] OutputValues_V_44;
input  [31:0] OutputValues_V_45;
input  [31:0] OutputValues_V_46;
input  [31:0] OutputValues_V_47;
input  [31:0] OutputValues_V_48;
input  [31:0] OutputValues_V_49;
input  [31:0] OutputValues_V_50;
input  [31:0] OutputValues_V_51;
input  [31:0] OutputValues_V_52;
input  [31:0] OutputValues_V_53;
input  [31:0] OutputValues_V_54;
input  [31:0] OutputValues_V_55;
input  [31:0] OutputValues_V_56;
input  [31:0] OutputValues_V_57;
input  [31:0] OutputValues_V_58;
input  [31:0] OutputValues_V_59;
input  [31:0] OutputValues_V_60;
input  [31:0] OutputValues_V_61;
input  [31:0] OutputValues_V_62;
input  [31:0] OutputValues_V_63;

reg ap_idle;
reg m_axi_gmem_WVALID;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] exitcond71_fu_596_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    gmem_blk_n_W;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
wire   [31:0] tmp_s_fu_608_p66;
reg   [31:0] tmp_s_reg_762;
wire    ap_block_pp0_stage0_01001;
reg   [7:0] loop_index_fu_176;
wire   [7:0] empty_63_fu_602_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_loop_index_load;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

Autoencoder_mux_648_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 32 ),
    .din9_WIDTH( 32 ),
    .din10_WIDTH( 32 ),
    .din11_WIDTH( 32 ),
    .din12_WIDTH( 32 ),
    .din13_WIDTH( 32 ),
    .din14_WIDTH( 32 ),
    .din15_WIDTH( 32 ),
    .din16_WIDTH( 32 ),
    .din17_WIDTH( 32 ),
    .din18_WIDTH( 32 ),
    .din19_WIDTH( 32 ),
    .din20_WIDTH( 32 ),
    .din21_WIDTH( 32 ),
    .din22_WIDTH( 32 ),
    .din23_WIDTH( 32 ),
    .din24_WIDTH( 32 ),
    .din25_WIDTH( 32 ),
    .din26_WIDTH( 32 ),
    .din27_WIDTH( 32 ),
    .din28_WIDTH( 32 ),
    .din29_WIDTH( 32 ),
    .din30_WIDTH( 32 ),
    .din31_WIDTH( 32 ),
    .din32_WIDTH( 32 ),
    .din33_WIDTH( 32 ),
    .din34_WIDTH( 32 ),
    .din35_WIDTH( 32 ),
    .din36_WIDTH( 32 ),
    .din37_WIDTH( 32 ),
    .din38_WIDTH( 32 ),
    .din39_WIDTH( 32 ),
    .din40_WIDTH( 32 ),
    .din41_WIDTH( 32 ),
    .din42_WIDTH( 32 ),
    .din43_WIDTH( 32 ),
    .din44_WIDTH( 32 ),
    .din45_WIDTH( 32 ),
    .din46_WIDTH( 32 ),
    .din47_WIDTH( 32 ),
    .din48_WIDTH( 32 ),
    .din49_WIDTH( 32 ),
    .din50_WIDTH( 32 ),
    .din51_WIDTH( 32 ),
    .din52_WIDTH( 32 ),
    .din53_WIDTH( 32 ),
    .din54_WIDTH( 32 ),
    .din55_WIDTH( 32 ),
    .din56_WIDTH( 32 ),
    .din57_WIDTH( 32 ),
    .din58_WIDTH( 32 ),
    .din59_WIDTH( 32 ),
    .din60_WIDTH( 32 ),
    .din61_WIDTH( 32 ),
    .din62_WIDTH( 32 ),
    .din63_WIDTH( 32 ),
    .din64_WIDTH( 8 ),
    .dout_WIDTH( 32 ))
mux_648_32_1_1_U74(
    .din0(OutputValues_V),
    .din1(OutputValues_V_1),
    .din2(OutputValues_V_2),
    .din3(OutputValues_V_3),
    .din4(OutputValues_V_4),
    .din5(OutputValues_V_5),
    .din6(OutputValues_V_6),
    .din7(OutputValues_V_7),
    .din8(OutputValues_V_8),
    .din9(OutputValues_V_9),
    .din10(OutputValues_V_10),
    .din11(OutputValues_V_11),
    .din12(OutputValues_V_12),
    .din13(OutputValues_V_13),
    .din14(OutputValues_V_14),
    .din15(OutputValues_V_15),
    .din16(OutputValues_V_16),
    .din17(OutputValues_V_17),
    .din18(OutputValues_V_18),
    .din19(OutputValues_V_19),
    .din20(OutputValues_V_20),
    .din21(OutputValues_V_21),
    .din22(OutputValues_V_22),
    .din23(OutputValues_V_23),
    .din24(OutputValues_V_24),
    .din25(OutputValues_V_25),
    .din26(OutputValues_V_26),
    .din27(OutputValues_V_27),
    .din28(OutputValues_V_28),
    .din29(OutputValues_V_29),
    .din30(OutputValues_V_30),
    .din31(OutputValues_V_31),
    .din32(OutputValues_V_32),
    .din33(OutputValues_V_33),
    .din34(OutputValues_V_34),
    .din35(OutputValues_V_35),
    .din36(OutputValues_V_36),
    .din37(OutputValues_V_37),
    .din38(OutputValues_V_38),
    .din39(OutputValues_V_39),
    .din40(OutputValues_V_40),
    .din41(OutputValues_V_41),
    .din42(OutputValues_V_42),
    .din43(OutputValues_V_43),
    .din44(OutputValues_V_44),
    .din45(OutputValues_V_45),
    .din46(OutputValues_V_46),
    .din47(OutputValues_V_47),
    .din48(OutputValues_V_48),
    .din49(OutputValues_V_49),
    .din50(OutputValues_V_50),
    .din51(OutputValues_V_51),
    .din52(OutputValues_V_52),
    .din53(OutputValues_V_53),
    .din54(OutputValues_V_54),
    .din55(OutputValues_V_55),
    .din56(OutputValues_V_56),
    .din57(OutputValues_V_57),
    .din58(OutputValues_V_58),
    .din59(OutputValues_V_59),
    .din60(OutputValues_V_60),
    .din61(OutputValues_V_61),
    .din62(OutputValues_V_62),
    .din63(OutputValues_V_63),
    .din64(ap_sig_allocacmp_loop_index_load),
    .dout(tmp_s_fu_608_p66)
);

Autoencoder_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((exitcond71_fu_596_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            loop_index_fu_176 <= empty_63_fu_602_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            loop_index_fu_176 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond71_fu_596_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_s_reg_762 <= tmp_s_fu_608_p66;
    end
end

always @ (*) begin
    if (((exitcond71_fu_596_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_loop_index_load = 8'd0;
    end else begin
        ap_sig_allocacmp_loop_index_load = loop_index_fu_176;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        gmem_blk_n_W = m_axi_gmem_WREADY;
    end else begin
        gmem_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axi_gmem_WVALID = 1'b1;
    end else begin
        m_axi_gmem_WVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((m_axi_gmem_WREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((m_axi_gmem_WREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign empty_63_fu_602_p2 = (ap_sig_allocacmp_loop_index_load + 8'd1);

assign exitcond71_fu_596_p2 = ((ap_sig_allocacmp_loop_index_load == 8'd128) ? 1'b1 : 1'b0);

assign m_axi_gmem_ARADDR = 64'd0;

assign m_axi_gmem_ARBURST = 2'd0;

assign m_axi_gmem_ARCACHE = 4'd0;

assign m_axi_gmem_ARID = 1'd0;

assign m_axi_gmem_ARLEN = 32'd0;

assign m_axi_gmem_ARLOCK = 2'd0;

assign m_axi_gmem_ARPROT = 3'd0;

assign m_axi_gmem_ARQOS = 4'd0;

assign m_axi_gmem_ARREGION = 4'd0;

assign m_axi_gmem_ARSIZE = 3'd0;

assign m_axi_gmem_ARUSER = 1'd0;

assign m_axi_gmem_ARVALID = 1'b0;

assign m_axi_gmem_AWADDR = 64'd0;

assign m_axi_gmem_AWBURST = 2'd0;

assign m_axi_gmem_AWCACHE = 4'd0;

assign m_axi_gmem_AWID = 1'd0;

assign m_axi_gmem_AWLEN = 32'd0;

assign m_axi_gmem_AWLOCK = 2'd0;

assign m_axi_gmem_AWPROT = 3'd0;

assign m_axi_gmem_AWQOS = 4'd0;

assign m_axi_gmem_AWREGION = 4'd0;

assign m_axi_gmem_AWSIZE = 3'd0;

assign m_axi_gmem_AWUSER = 1'd0;

assign m_axi_gmem_AWVALID = 1'b0;

assign m_axi_gmem_BREADY = 1'b0;

assign m_axi_gmem_RREADY = 1'b0;

assign m_axi_gmem_WDATA = tmp_s_reg_762;

assign m_axi_gmem_WID = 1'd0;

assign m_axi_gmem_WLAST = 1'b0;

assign m_axi_gmem_WSTRB = 4'd15;

assign m_axi_gmem_WUSER = 1'd0;

endmodule //Autoencoder_Autoencoder_Pipeline_2
