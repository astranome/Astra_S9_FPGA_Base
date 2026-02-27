// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Feb 10 00:26:23 2025
// Host        : DESKTOP-0SNREP6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_i2s_to_pwm_0_0_stub.v
// Design      : zsys_i2s_to_pwm_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "i2s_to_pwm,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk_in, i2s_bclk, i2s_lrclk, i2s_sdata, 
  pwm_l_out, pwm_r_out)
/* synthesis syn_black_box black_box_pad_pin="clk_in,i2s_bclk,i2s_lrclk,i2s_sdata,pwm_l_out,pwm_r_out" */;
  input clk_in;
  input i2s_bclk;
  input i2s_lrclk;
  input i2s_sdata;
  output pwm_l_out;
  output pwm_r_out;
endmodule
