-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Feb 10 00:33:00 2025
-- Host        : DESKTOP-0SNREP6 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/HDMI18.3/HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_clk_wiz_0_0/zsys_clk_wiz_0_0_stub.vhdl
-- Design      : zsys_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_clk_wiz_0_0 is
  Port ( 
    clk_100MHz : out STD_LOGIC;
    clk_200MHz : out STD_LOGIC;
    clk_12MHz : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end zsys_clk_wiz_0_0;

architecture stub of zsys_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_100MHz,clk_200MHz,clk_12MHz,clk_in1";
begin
end;
