-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Feb 10 00:32:16 2025
-- Host        : DESKTOP-0SNREP6 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/HDMI18.3/HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_xadc_wiz_0_0/zsys_xadc_wiz_0_0_stub.vhdl
-- Design      : zsys_xadc_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_xadc_wiz_0_0 is
  Port ( 
    s_axis_aclk : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_resetn : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axis_tready : in STD_LOGIC;
    busy_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC
  );

end zsys_xadc_wiz_0_0;

architecture stub of zsys_xadc_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axis_aclk,m_axis_aclk,m_axis_resetn,m_axis_tdata[15:0],m_axis_tvalid,m_axis_tid[4:0],m_axis_tready,busy_out,channel_out[4:0],eoc_out,eos_out,alarm_out,vp_in,vn_in";
begin
end;
