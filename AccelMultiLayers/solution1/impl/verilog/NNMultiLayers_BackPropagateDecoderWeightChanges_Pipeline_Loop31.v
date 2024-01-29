// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module NNMultiLayers_BackPropagateDecoderWeightChanges_Pipeline_Loop31 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        zext_ln247,
        DecoderWeightChanges_address0,
        DecoderWeightChanges_ce0,
        DecoderWeightChanges_we0,
        DecoderWeightChanges_d0
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] zext_ln247;
output  [5:0] DecoderWeightChanges_address0;
output   DecoderWeightChanges_ce0;
output   DecoderWeightChanges_we0;
output  [0:0] DecoderWeightChanges_d0;

reg ap_idle;
reg DecoderWeightChanges_ce0;
reg DecoderWeightChanges_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln247_fu_70_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] zext_ln252_fu_92_p1;
reg   [3:0] h_fu_34;
wire   [3:0] add_ln247_fu_76_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_h_3;
wire   [5:0] zext_ln247_cast_fu_58_p1;
wire   [5:0] zext_ln247_1_fu_82_p1;
wire   [5:0] add_ln252_fu_86_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end

NNMultiLayers_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if (((ap_start_int == 1'b1) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln247_fu_70_p2 == 1'd0)) begin
            h_fu_34 <= add_ln247_fu_76_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            h_fu_34 <= 4'd0;
        end
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        DecoderWeightChanges_ce0 = 1'b1;
    end else begin
        DecoderWeightChanges_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln247_fu_70_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        DecoderWeightChanges_we0 = 1'b1;
    end else begin
        DecoderWeightChanges_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln247_fu_70_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_h_3 = 4'd0;
    end else begin
        ap_sig_allocacmp_h_3 = h_fu_34;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign DecoderWeightChanges_address0 = zext_ln252_fu_92_p1;

assign DecoderWeightChanges_d0 = 1'd0;

assign add_ln247_fu_76_p2 = (ap_sig_allocacmp_h_3 + 4'd1);

assign add_ln252_fu_86_p2 = (zext_ln247_cast_fu_58_p1 + zext_ln247_1_fu_82_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln247_fu_70_p2 = ((ap_sig_allocacmp_h_3 == 4'd10) ? 1'b1 : 1'b0);

assign zext_ln247_1_fu_82_p1 = ap_sig_allocacmp_h_3;

assign zext_ln247_cast_fu_58_p1 = zext_ln247;

assign zext_ln252_fu_92_p1 = add_ln252_fu_86_p2;

endmodule //NNMultiLayers_BackPropagateDecoderWeightChanges_Pipeline_Loop31