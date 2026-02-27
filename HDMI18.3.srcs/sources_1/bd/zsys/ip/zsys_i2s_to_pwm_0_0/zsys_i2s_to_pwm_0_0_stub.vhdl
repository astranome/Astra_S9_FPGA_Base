-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Feb 10 00:26:23 2025
-- Host        : DESKTOP-0SNREP6 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/HDMI18.3/HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_i2s_to_pwm_0_0/zsys_i2s_to_pwm_0_0_stub.vhdl
-- Design      : zsys_i2s_to_pwm_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_i2s_to_pwm_0_0 is
  Port ( 
    clk_in : in STD_LOGIC;
    i2s_bclk : in STD_LOGIC;
    i2s_lrclk : in STD_LOGIC;
    i2s_sdata : in STD_LOGIC;
    pwm_l_out : out STD_LOGIC;
    pwm_r_out : out STD_LOGIC
  );

end zsys_i2s_to_pwm_0_0;

architecture stub of zsys_i2s_to_pwm_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,i2s_bclk,i2s_lrclk,i2s_sdata,pwm_l_out,pwm_r_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "i2s_to_pwm,Vivado 2018.3";
begin
end;
