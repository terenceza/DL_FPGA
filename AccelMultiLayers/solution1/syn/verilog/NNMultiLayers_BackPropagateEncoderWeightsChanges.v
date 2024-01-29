// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module NNMultiLayers_BackPropagateEncoderWeightsChanges (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        EncoderWeightChanges_address0,
        EncoderWeightChanges_ce0,
        EncoderWeightChanges_we0,
        EncoderWeightChanges_d0,
        TotalErrorDeltas_address0,
        TotalErrorDeltas_ce0,
        TotalErrorDeltas_we0,
        TotalErrorDeltas_d0
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [5:0] EncoderWeightChanges_address0;
output   EncoderWeightChanges_ce0;
output   EncoderWeightChanges_we0;
output  [0:0] EncoderWeightChanges_d0;
output  [5:0] TotalErrorDeltas_address0;
output   TotalErrorDeltas_ce0;
output   TotalErrorDeltas_we0;
output  [0:0] TotalErrorDeltas_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg EncoderWeightChanges_ce0;
reg EncoderWeightChanges_we0;
reg TotalErrorDeltas_ce0;
reg TotalErrorDeltas_we0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] add_ln282_fu_129_p2;
reg   [2:0] add_ln282_reg_203;
wire    ap_CS_fsm_state3;
wire   [5:0] zext_ln285_fu_149_p1;
reg   [5:0] zext_ln285_reg_208;
wire   [0:0] icmp_ln282_fu_123_p2;
wire   [3:0] add_ln285_fu_163_p2;
wire    ap_CS_fsm_state4;
reg   [3:0] h_1_reg_74;
wire   [0:0] icmp_ln285_fu_157_p2;
wire   [63:0] zext_ln265_fu_93_p1;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln265_fu_98_p2;
wire   [63:0] zext_ln291_fu_174_p1;
reg   [3:0] h_fu_38;
wire   [3:0] add_ln265_fu_104_p2;
reg    ap_block_state1;
reg   [2:0] d_fu_42;
wire   [1:0] empty_50_fu_135_p1;
wire   [4:0] tmp_1_fu_139_p4;
wire   [5:0] zext_ln285_1_fu_153_p1;
wire   [5:0] add_ln291_fu_169_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
end

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
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((icmp_ln282_fu_123_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln265_fu_98_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        d_fu_42 <= 3'd0;
    end else if (((icmp_ln285_fu_157_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        d_fu_42 <= add_ln282_reg_203;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln285_fu_157_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        h_1_reg_74 <= add_ln285_fu_163_p2;
    end else if (((icmp_ln282_fu_123_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        h_1_reg_74 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        h_fu_38 <= 4'd0;
    end else if (((icmp_ln265_fu_98_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        h_fu_38 <= add_ln265_fu_104_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln282_reg_203 <= add_ln282_fu_129_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln282_fu_123_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        zext_ln285_reg_208[4 : 1] <= zext_ln285_fu_149_p1[4 : 1];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        EncoderWeightChanges_ce0 = 1'b1;
    end else begin
        EncoderWeightChanges_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln285_fu_157_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        EncoderWeightChanges_we0 = 1'b1;
    end else begin
        EncoderWeightChanges_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        TotalErrorDeltas_ce0 = 1'b1;
    end else begin
        TotalErrorDeltas_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln265_fu_98_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        TotalErrorDeltas_we0 = 1'b1;
    end else begin
        TotalErrorDeltas_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if (((icmp_ln282_fu_123_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln282_fu_123_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln265_fu_98_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln282_fu_123_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln285_fu_157_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign EncoderWeightChanges_address0 = zext_ln291_fu_174_p1;

assign EncoderWeightChanges_d0 = 1'd0;

assign TotalErrorDeltas_address0 = zext_ln265_fu_93_p1;

assign TotalErrorDeltas_d0 = 1'd0;

assign add_ln265_fu_104_p2 = (h_fu_38 + 4'd1);

assign add_ln282_fu_129_p2 = (d_fu_42 + 3'd1);

assign add_ln285_fu_163_p2 = (h_1_reg_74 + 4'd1);

assign add_ln291_fu_169_p2 = (zext_ln285_reg_208 + zext_ln285_1_fu_153_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign empty_50_fu_135_p1 = d_fu_42[1:0];

assign icmp_ln265_fu_98_p2 = ((h_fu_38 == 4'd10) ? 1'b1 : 1'b0);

assign icmp_ln282_fu_123_p2 = ((d_fu_42 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln285_fu_157_p2 = ((h_1_reg_74 == 4'd10) ? 1'b1 : 1'b0);

assign tmp_1_fu_139_p4 = {{{empty_50_fu_135_p1}, {empty_50_fu_135_p1}}, {1'd0}};

assign zext_ln265_fu_93_p1 = h_fu_38;

assign zext_ln285_1_fu_153_p1 = h_1_reg_74;

assign zext_ln285_fu_149_p1 = tmp_1_fu_139_p4;

assign zext_ln291_fu_174_p1 = add_ln291_fu_169_p2;

always @ (posedge ap_clk) begin
    zext_ln285_reg_208[0] <= 1'b0;
    zext_ln285_reg_208[5] <= 1'b0;
end

endmodule //NNMultiLayers_BackPropagateEncoderWeightsChanges