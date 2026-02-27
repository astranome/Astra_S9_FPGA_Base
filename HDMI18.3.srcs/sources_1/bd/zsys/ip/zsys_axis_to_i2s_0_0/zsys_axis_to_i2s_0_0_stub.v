// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Feb 10 00:26:17 2025
// Host        : DESKTOP-0SNREP6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/HDMI18.3/HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_axis_to_i2s_0_0/zsys_axis_to_i2s_0_0_stub.v
// Design      : zsys_axis_to_i2s_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axis_to_i2s,Vivado 2018.3" *)
module zsys_axis_to_i2s_0_0(s_axis_aclk, s_axis_aresetn, s_axis_tready, 
  s_axis_tdata, s_axis_tvalid, i2s_bclk, i2s_lrclk, i2s_sdata)
/* synthesis syn_black_box black_box_pad_pin="s_axis_aclk,s_axis_aresetn,s_axis_tready,s_axis_tdata[15:0],s_axis_tvalid,i2s_bclk,i2s_lrclk,i2s_sdata" */;
  input s_axis_aclk;
  input s_axis_aresetn;
  output s_axis_tready;
  input [15:0]s_axis_tdata;
  input s_axis_tvalid;
  input i2s_bclk;
  input i2s_lrclk;
  output i2s_sdata;
endmodule
