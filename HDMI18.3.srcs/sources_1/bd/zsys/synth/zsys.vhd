--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Mon Feb 10 00:22:51 2025
--Host        : DESKTOP-0SNREP6 running 64-bit major release  (build 9200)
--Command     : generate_target zsys.bd
--Design      : zsys
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_imp_1P9NOCO is
  port (
    DMA_RX_ACK_tready : out STD_LOGIC;
    DMA_RX_ACK_tuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_RX_ACK_tvalid : in STD_LOGIC;
    DMA_RX_REQ_tlast : out STD_LOGIC;
    DMA_RX_REQ_tready : in STD_LOGIC;
    DMA_RX_REQ_tuser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_RX_REQ_tvalid : out STD_LOGIC;
    DMA_TX_ACK_tready : out STD_LOGIC;
    DMA_TX_ACK_tuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_TX_ACK_tvalid : in STD_LOGIC;
    DMA_TX_REQ_tlast : out STD_LOGIC;
    DMA_TX_REQ_tready : in STD_LOGIC;
    DMA_TX_REQ_tuser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_TX_REQ_tvalid : out STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    Vp_Vn_v_n : in STD_LOGIC;
    Vp_Vn_v_p : in STD_LOGIC;
    audio_clk : in STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC_VECTOR ( 0 to 0 );
    pwm_l_out : out STD_LOGIC;
    pwm_r_out : out STD_LOGIC
  );
end audio_imp_1P9NOCO;

architecture STRUCTURE of audio_imp_1P9NOCO is
  component zsys_axi_i2s_adi_0_0 is
  port (
    DATA_CLK_I : in STD_LOGIC;
    BCLK_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    LRCLK_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    SDATA_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    SDATA_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    MUTEN_O : out STD_LOGIC;
    DMA_REQ_TX_ACLK : in STD_LOGIC;
    DMA_REQ_TX_RSTN : in STD_LOGIC;
    DMA_REQ_TX_DAVALID : in STD_LOGIC;
    DMA_REQ_TX_DATYPE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_REQ_TX_DAREADY : out STD_LOGIC;
    DMA_REQ_TX_DRVALID : out STD_LOGIC;
    DMA_REQ_TX_DRTYPE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_REQ_TX_DRLAST : out STD_LOGIC;
    DMA_REQ_TX_DRREADY : in STD_LOGIC;
    DMA_REQ_RX_ACLK : in STD_LOGIC;
    DMA_REQ_RX_RSTN : in STD_LOGIC;
    DMA_REQ_RX_DAVALID : in STD_LOGIC;
    DMA_REQ_RX_DATYPE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_REQ_RX_DAREADY : out STD_LOGIC;
    DMA_REQ_RX_DRVALID : out STD_LOGIC;
    DMA_REQ_RX_DRTYPE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_REQ_RX_DRLAST : out STD_LOGIC;
    DMA_REQ_RX_DRREADY : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component zsys_axi_i2s_adi_0_0;
  component zsys_axis_to_i2s_0_0 is
  port (
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    i2s_bclk : in STD_LOGIC;
    i2s_lrclk : in STD_LOGIC;
    i2s_sdata : out STD_LOGIC
  );
  end component zsys_axis_to_i2s_0_0;
  component zsys_i2s_to_pwm_0_0 is
  port (
    clk_in : in STD_LOGIC;
    i2s_bclk : in STD_LOGIC;
    i2s_lrclk : in STD_LOGIC;
    i2s_sdata : in STD_LOGIC;
    pwm_l_out : out STD_LOGIC;
    pwm_r_out : out STD_LOGIC
  );
  end component zsys_i2s_to_pwm_0_0;
  component zsys_xadc_wiz_0_0 is
  port (
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    m_axis_resetn : in STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC
  );
  end component zsys_xadc_wiz_0_0;
  signal BCLK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_V_N : STD_LOGIC;
  signal Conn1_V_P : STD_LOGIC;
  signal Conn2_TREADY : STD_LOGIC;
  signal Conn2_TUSER : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_TVALID : STD_LOGIC;
  signal Conn3_TLAST : STD_LOGIC;
  signal Conn3_TREADY : STD_LOGIC;
  signal Conn3_TUSER : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_TVALID : STD_LOGIC;
  signal Conn4_TLAST : STD_LOGIC;
  signal Conn4_TREADY : STD_LOGIC;
  signal Conn4_TUSER : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_TVALID : STD_LOGIC;
  signal Conn5_TREADY : STD_LOGIC;
  signal Conn5_TUSER : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn5_TVALID : STD_LOGIC;
  signal Conn6_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn6_ARREADY : STD_LOGIC;
  signal Conn6_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn6_AWREADY : STD_LOGIC;
  signal Conn6_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn6_BVALID : STD_LOGIC;
  signal Conn6_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn6_RVALID : STD_LOGIC;
  signal Conn6_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_WREADY : STD_LOGIC;
  signal Conn6_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn6_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DATA_CLK_I_1 : STD_LOGIC;
  signal LRCLK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_aclk_1 : STD_LOGIC;
  signal i2s_to_pwm_0_pwm_l_out : STD_LOGIC;
  signal i2s_to_pwm_0_pwm_r_out : STD_LOGIC;
  signal m_axis_resetn_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal play_sdata : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rec_sdata : STD_LOGIC;
  signal xadc_wiz_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xadc_wiz_0_M_AXIS_TREADY : STD_LOGIC;
  signal xadc_wiz_0_M_AXIS_TVALID : STD_LOGIC;
  signal NLW_axi_i2s_adi_0_MUTEN_O_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eoc_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_xadc_wiz_0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  Conn1_V_N <= Vp_Vn_v_n;
  Conn1_V_P <= Vp_Vn_v_p;
  Conn2_TUSER(1 downto 0) <= DMA_TX_ACK_tuser(1 downto 0);
  Conn2_TVALID <= DMA_TX_ACK_tvalid;
  Conn3_TREADY <= DMA_TX_REQ_tready;
  Conn4_TREADY <= DMA_RX_REQ_tready;
  Conn5_TUSER(1 downto 0) <= DMA_RX_ACK_tuser(1 downto 0);
  Conn5_TVALID <= DMA_RX_ACK_tvalid;
  Conn6_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  Conn6_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  Conn6_ARVALID(0) <= S00_AXI_arvalid(0);
  Conn6_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  Conn6_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  Conn6_AWVALID(0) <= S00_AXI_awvalid(0);
  Conn6_BREADY(0) <= S00_AXI_bready(0);
  Conn6_RREADY(0) <= S00_AXI_rready(0);
  Conn6_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  Conn6_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  Conn6_WVALID(0) <= S00_AXI_wvalid(0);
  DATA_CLK_I_1 <= audio_clk;
  DMA_RX_ACK_tready <= Conn5_TREADY;
  DMA_RX_REQ_tlast <= Conn4_TLAST;
  DMA_RX_REQ_tuser(1 downto 0) <= Conn4_TUSER(1 downto 0);
  DMA_RX_REQ_tvalid <= Conn4_TVALID;
  DMA_TX_ACK_tready <= Conn2_TREADY;
  DMA_TX_REQ_tlast <= Conn3_TLAST;
  DMA_TX_REQ_tuser(1 downto 0) <= Conn3_TUSER(1 downto 0);
  DMA_TX_REQ_tvalid <= Conn3_TVALID;
  S00_AXI_arready(0) <= Conn6_ARREADY;
  S00_AXI_awready(0) <= Conn6_AWREADY;
  S00_AXI_bresp(1 downto 0) <= Conn6_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= Conn6_BVALID;
  S00_AXI_rdata(31 downto 0) <= Conn6_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= Conn6_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= Conn6_RVALID;
  S00_AXI_wready(0) <= Conn6_WREADY;
  axi_aclk_1 <= axi_aclk;
  m_axis_resetn_1(0) <= axi_resetn(0);
  pwm_l_out <= i2s_to_pwm_0_pwm_l_out;
  pwm_r_out <= i2s_to_pwm_0_pwm_r_out;
axi_i2s_adi_0: component zsys_axi_i2s_adi_0_0
     port map (
      BCLK_O(0) => BCLK(0),
      DATA_CLK_I => DATA_CLK_I_1,
      DMA_REQ_RX_ACLK => axi_aclk_1,
      DMA_REQ_RX_DAREADY => Conn5_TREADY,
      DMA_REQ_RX_DATYPE(1 downto 0) => Conn5_TUSER(1 downto 0),
      DMA_REQ_RX_DAVALID => Conn5_TVALID,
      DMA_REQ_RX_DRLAST => Conn4_TLAST,
      DMA_REQ_RX_DRREADY => Conn4_TREADY,
      DMA_REQ_RX_DRTYPE(1 downto 0) => Conn4_TUSER(1 downto 0),
      DMA_REQ_RX_DRVALID => Conn4_TVALID,
      DMA_REQ_RX_RSTN => m_axis_resetn_1(0),
      DMA_REQ_TX_ACLK => axi_aclk_1,
      DMA_REQ_TX_DAREADY => Conn2_TREADY,
      DMA_REQ_TX_DATYPE(1 downto 0) => Conn2_TUSER(1 downto 0),
      DMA_REQ_TX_DAVALID => Conn2_TVALID,
      DMA_REQ_TX_DRLAST => Conn3_TLAST,
      DMA_REQ_TX_DRREADY => Conn3_TREADY,
      DMA_REQ_TX_DRTYPE(1 downto 0) => Conn3_TUSER(1 downto 0),
      DMA_REQ_TX_DRVALID => Conn3_TVALID,
      DMA_REQ_TX_RSTN => m_axis_resetn_1(0),
      LRCLK_O(0) => LRCLK(0),
      MUTEN_O => NLW_axi_i2s_adi_0_MUTEN_O_UNCONNECTED,
      SDATA_I(0) => rec_sdata,
      SDATA_O(0) => play_sdata(0),
      s00_axi_aclk => axi_aclk_1,
      s00_axi_araddr(5 downto 0) => Conn6_ARADDR(5 downto 0),
      s00_axi_aresetn => m_axis_resetn_1(0),
      s00_axi_arprot(2 downto 0) => Conn6_ARPROT(2 downto 0),
      s00_axi_arready => Conn6_ARREADY,
      s00_axi_arvalid => Conn6_ARVALID(0),
      s00_axi_awaddr(5 downto 0) => Conn6_AWADDR(5 downto 0),
      s00_axi_awprot(2 downto 0) => Conn6_AWPROT(2 downto 0),
      s00_axi_awready => Conn6_AWREADY,
      s00_axi_awvalid => Conn6_AWVALID(0),
      s00_axi_bready => Conn6_BREADY(0),
      s00_axi_bresp(1 downto 0) => Conn6_BRESP(1 downto 0),
      s00_axi_bvalid => Conn6_BVALID,
      s00_axi_rdata(31 downto 0) => Conn6_RDATA(31 downto 0),
      s00_axi_rready => Conn6_RREADY(0),
      s00_axi_rresp(1 downto 0) => Conn6_RRESP(1 downto 0),
      s00_axi_rvalid => Conn6_RVALID,
      s00_axi_wdata(31 downto 0) => Conn6_WDATA(31 downto 0),
      s00_axi_wready => Conn6_WREADY,
      s00_axi_wstrb(3 downto 0) => Conn6_WSTRB(3 downto 0),
      s00_axi_wvalid => Conn6_WVALID(0)
    );
axis_to_i2s_0: component zsys_axis_to_i2s_0_0
     port map (
      i2s_bclk => BCLK(0),
      i2s_lrclk => LRCLK(0),
      i2s_sdata => rec_sdata,
      s_axis_aclk => axi_aclk_1,
      s_axis_aresetn => m_axis_resetn_1(0),
      s_axis_tdata(15 downto 0) => xadc_wiz_0_M_AXIS_TDATA(15 downto 0),
      s_axis_tready => xadc_wiz_0_M_AXIS_TREADY,
      s_axis_tvalid => xadc_wiz_0_M_AXIS_TVALID
    );
i2s_to_pwm_0: component zsys_i2s_to_pwm_0_0
     port map (
      clk_in => axi_aclk_1,
      i2s_bclk => BCLK(0),
      i2s_lrclk => LRCLK(0),
      i2s_sdata => play_sdata(0),
      pwm_l_out => i2s_to_pwm_0_pwm_l_out,
      pwm_r_out => i2s_to_pwm_0_pwm_r_out
    );
xadc_wiz_0: component zsys_xadc_wiz_0_0
     port map (
      alarm_out => NLW_xadc_wiz_0_alarm_out_UNCONNECTED,
      busy_out => NLW_xadc_wiz_0_busy_out_UNCONNECTED,
      channel_out(4 downto 0) => NLW_xadc_wiz_0_channel_out_UNCONNECTED(4 downto 0),
      eoc_out => NLW_xadc_wiz_0_eoc_out_UNCONNECTED,
      eos_out => NLW_xadc_wiz_0_eos_out_UNCONNECTED,
      m_axis_aclk => axi_aclk_1,
      m_axis_resetn => m_axis_resetn_1(0),
      m_axis_tdata(15 downto 0) => xadc_wiz_0_M_AXIS_TDATA(15 downto 0),
      m_axis_tid(4 downto 0) => NLW_xadc_wiz_0_m_axis_tid_UNCONNECTED(4 downto 0),
      m_axis_tready => xadc_wiz_0_M_AXIS_TREADY,
      m_axis_tvalid => xadc_wiz_0_M_AXIS_TVALID,
      s_axis_aclk => axi_aclk_1,
      vn_in => Conn1_V_N,
      vp_in => Conn1_V_P
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1FQ8Y7U is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_1FQ8Y7U;

architecture STRUCTURE of m00_couplers_imp_1FQ8Y7U is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_AXBQKS is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_AXBQKS;

architecture STRUCTURE of m01_couplers_imp_AXBQKS is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_P91CBB is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_P91CBB;

architecture STRUCTURE of m02_couplers_imp_P91CBB is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m02_couplers_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m02_couplers_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_1IYBMJL is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m03_couplers_imp_1IYBMJL;

architecture STRUCTURE of m03_couplers_imp_1IYBMJL is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m03_couplers_to_m03_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m03_couplers_to_m03_couplers_AWVALID(0);
  M_AXI_bready(0) <= m03_couplers_to_m03_couplers_BREADY(0);
  M_AXI_rready(0) <= m03_couplers_to_m03_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m03_couplers_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m03_couplers_to_m03_couplers_WVALID(0);
  S_AXI_arready(0) <= m03_couplers_to_m03_couplers_ARREADY(0);
  S_AXI_awready(0) <= m03_couplers_to_m03_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m03_couplers_to_m03_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m03_couplers_to_m03_couplers_RVALID(0);
  S_AXI_wready(0) <= m03_couplers_to_m03_couplers_WREADY(0);
  m03_couplers_to_m03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_m03_couplers_ARREADY(0) <= M_AXI_arready(0);
  m03_couplers_to_m03_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m03_couplers_to_m03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_m03_couplers_AWREADY(0) <= M_AXI_awready(0);
  m03_couplers_to_m03_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m03_couplers_to_m03_couplers_BREADY(0) <= S_AXI_bready(0);
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY(0) <= S_AXI_rready(0);
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY(0) <= M_AXI_wready(0);
  m03_couplers_to_m03_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_m03_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_19FT0DD is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m04_couplers_imp_19FT0DD;

architecture STRUCTURE of m04_couplers_imp_19FT0DD is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m04_couplers_to_m04_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m04_couplers_to_m04_couplers_AWVALID(0);
  M_AXI_bready(0) <= m04_couplers_to_m04_couplers_BREADY(0);
  M_AXI_rready(0) <= m04_couplers_to_m04_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m04_couplers_to_m04_couplers_WVALID(0);
  S_AXI_arready(0) <= m04_couplers_to_m04_couplers_ARREADY(0);
  S_AXI_awready(0) <= m04_couplers_to_m04_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m04_couplers_to_m04_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m04_couplers_to_m04_couplers_RVALID(0);
  S_AXI_wready(0) <= m04_couplers_to_m04_couplers_WREADY(0);
  m04_couplers_to_m04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_m04_couplers_ARREADY(0) <= M_AXI_arready(0);
  m04_couplers_to_m04_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m04_couplers_to_m04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_m04_couplers_AWREADY(0) <= M_AXI_awready(0);
  m04_couplers_to_m04_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m04_couplers_to_m04_couplers_BREADY(0) <= S_AXI_bready(0);
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RREADY(0) <= S_AXI_rready(0);
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WREADY(0) <= M_AXI_wready(0);
  m04_couplers_to_m04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_HF9FTJ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m05_couplers_imp_HF9FTJ;

architecture STRUCTURE of m05_couplers_imp_HF9FTJ is
  signal m05_couplers_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m05_couplers_to_m05_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m05_couplers_to_m05_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m05_couplers_to_m05_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m05_couplers_to_m05_couplers_AWVALID(0);
  M_AXI_bready(0) <= m05_couplers_to_m05_couplers_BREADY(0);
  M_AXI_rready(0) <= m05_couplers_to_m05_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m05_couplers_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m05_couplers_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m05_couplers_to_m05_couplers_WVALID(0);
  S_AXI_arready(0) <= m05_couplers_to_m05_couplers_ARREADY(0);
  S_AXI_awready(0) <= m05_couplers_to_m05_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_m05_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m05_couplers_to_m05_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_m05_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_m05_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m05_couplers_to_m05_couplers_RVALID(0);
  S_AXI_wready(0) <= m05_couplers_to_m05_couplers_WREADY(0);
  m05_couplers_to_m05_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_m05_couplers_ARREADY(0) <= M_AXI_arready(0);
  m05_couplers_to_m05_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m05_couplers_to_m05_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_m05_couplers_AWREADY(0) <= M_AXI_awready(0);
  m05_couplers_to_m05_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m05_couplers_to_m05_couplers_BREADY(0) <= S_AXI_bready(0);
  m05_couplers_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_couplers_to_m05_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m05_couplers_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m05_couplers_to_m05_couplers_RREADY(0) <= S_AXI_rready(0);
  m05_couplers_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_couplers_to_m05_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m05_couplers_to_m05_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_m05_couplers_WREADY(0) <= M_AXI_wready(0);
  m05_couplers_to_m05_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_m05_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity resets_imp_BXH7YA is
  port (
    axi_clk : in STD_LOGIC;
    axi_int_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_per_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    ext_reset_in : in STD_LOGIC
  );
end resets_imp_BXH7YA;

architecture STRUCTURE of resets_imp_BXH7YA is
  component zsys_rst_processing_system7_0_50M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_rst_processing_system7_0_50M_0;
  signal ext_reset_in_1 : STD_LOGIC;
  signal rst_processing_system7_0_50M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_processing_system7_0_50M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal slowest_sync_clk_1 : STD_LOGIC;
  signal NLW_rst_processing_system7_0_50M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_processing_system7_0_50M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_processing_system7_0_50M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  axi_int_aresetn(0) <= rst_processing_system7_0_50M_interconnect_aresetn(0);
  axi_per_aresetn(0) <= rst_processing_system7_0_50M_peripheral_aresetn(0);
  ext_reset_in_1 <= ext_reset_in;
  slowest_sync_clk_1 <= axi_clk;
rst_processing_system7_0_50M: component zsys_rst_processing_system7_0_50M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_processing_system7_0_50M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => ext_reset_in_1,
      interconnect_aresetn(0) => rst_processing_system7_0_50M_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_processing_system7_0_50M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_processing_system7_0_50M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_processing_system7_0_50M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => slowest_sync_clk_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1CXSKC1 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC
  );
end s00_couplers_imp_1CXSKC1;

architecture STRUCTURE of s00_couplers_imp_1CXSKC1 is
  component zsys_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component zsys_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(3 downto 0) <= auto_pc_to_s00_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= auto_pc_to_s00_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
auto_pc: component zsys_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(3 downto 0) => auto_pc_to_s00_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_pc_to_s00_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => auto_pc_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rlast => auto_pc_to_s00_couplers_RLAST,
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_YMICCV is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_YMICCV;

architecture STRUCTURE of s00_couplers_imp_YMICCV is
  component zsys_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component zsys_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component zsys_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_mem_intercon_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC
  );
end zsys_axi_mem_intercon_0;

architecture STRUCTURE of zsys_axi_mem_intercon_0 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal axi_mem_intercon_ACLK_net : STD_LOGIC;
  signal axi_mem_intercon_ARESETN_net : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARREADY : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARVALID : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_RLAST : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_RREADY : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_RVALID : STD_LOGIC;
begin
  M00_AXI_araddr(31 downto 0) <= s00_couplers_to_axi_mem_intercon_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= s00_couplers_to_axi_mem_intercon_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= s00_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0);
  M00_AXI_arlen(3 downto 0) <= s00_couplers_to_axi_mem_intercon_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= s00_couplers_to_axi_mem_intercon_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= s00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= s00_couplers_to_axi_mem_intercon_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= s00_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= s00_couplers_to_axi_mem_intercon_ARVALID;
  M00_AXI_rready <= s00_couplers_to_axi_mem_intercon_RREADY;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_mem_intercon_to_s00_couplers_ARREADY;
  S00_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rlast <= axi_mem_intercon_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_mem_intercon_to_s00_couplers_RVALID;
  axi_mem_intercon_ACLK_net <= M00_ACLK;
  axi_mem_intercon_ARESETN_net <= M00_ARESETN;
  axi_mem_intercon_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_mem_intercon_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_mem_intercon_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_mem_intercon_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_mem_intercon_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_mem_intercon_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_mem_intercon_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_mem_intercon_to_s00_couplers_RREADY <= S00_AXI_rready;
  s00_couplers_to_axi_mem_intercon_ARREADY <= M00_AXI_arready;
  s00_couplers_to_axi_mem_intercon_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  s00_couplers_to_axi_mem_intercon_RLAST <= M00_AXI_rlast;
  s00_couplers_to_axi_mem_intercon_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_axi_mem_intercon_RVALID <= M00_AXI_rvalid;
s00_couplers: entity work.s00_couplers_imp_1CXSKC1
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_axi_mem_intercon_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_axi_mem_intercon_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0),
      M_AXI_arlen(3 downto 0) => s00_couplers_to_axi_mem_intercon_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => s00_couplers_to_axi_mem_intercon_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_axi_mem_intercon_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_axi_mem_intercon_ARREADY,
      M_AXI_arsize(2 downto 0) => s00_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_axi_mem_intercon_ARVALID,
      M_AXI_rdata(31 downto 0) => s00_couplers_to_axi_mem_intercon_RDATA(31 downto 0),
      M_AXI_rlast => s00_couplers_to_axi_mem_intercon_RLAST,
      M_AXI_rready => s00_couplers_to_axi_mem_intercon_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_axi_mem_intercon_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_axi_mem_intercon_RVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_mem_intercon_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_mem_intercon_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_mem_intercon_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_mem_intercon_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => axi_mem_intercon_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => axi_mem_intercon_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_mem_intercon_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_mem_intercon_to_s00_couplers_ARVALID,
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rlast => axi_mem_intercon_to_s00_couplers_RLAST,
      S_AXI_rready => axi_mem_intercon_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_mem_intercon_to_s00_couplers_RVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_processing_system7_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end zsys_processing_system7_0_axi_periph_0;

architecture STRUCTURE of zsys_processing_system7_0_axi_periph_0 is
  component zsys_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 191 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 191 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 191 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 191 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component zsys_xbar_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC;
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC;
  signal M05_ACLK_1 : STD_LOGIC;
  signal M05_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_ACLK_net : STD_LOGIC;
  signal processing_system7_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_processing_system7_0_axi_periph_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_processing_system7_0_axi_periph_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_processing_system7_0_axi_periph_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_processing_system7_0_axi_periph_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_processing_system7_0_axi_periph_WVALID(0);
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_processing_system7_0_axi_periph_ARVALID(0);
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_processing_system7_0_axi_periph_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_processing_system7_0_axi_periph_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_processing_system7_0_axi_periph_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_processing_system7_0_axi_periph_WVALID(0);
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_processing_system7_0_axi_periph_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_processing_system7_0_axi_periph_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_processing_system7_0_axi_periph_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_processing_system7_0_axi_periph_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_processing_system7_0_axi_periph_WVALID(0);
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1 <= M03_ARESETN;
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M03_AXI_arvalid(0) <= m03_couplers_to_processing_system7_0_axi_periph_ARVALID(0);
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M03_AXI_awvalid(0) <= m03_couplers_to_processing_system7_0_axi_periph_AWVALID(0);
  M03_AXI_bready(0) <= m03_couplers_to_processing_system7_0_axi_periph_BREADY(0);
  M03_AXI_rready(0) <= m03_couplers_to_processing_system7_0_axi_periph_RREADY(0);
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M03_AXI_wvalid(0) <= m03_couplers_to_processing_system7_0_axi_periph_WVALID(0);
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1 <= M04_ARESETN;
  M04_AXI_araddr(31 downto 0) <= m04_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M04_AXI_arvalid(0) <= m04_couplers_to_processing_system7_0_axi_periph_ARVALID(0);
  M04_AXI_awaddr(31 downto 0) <= m04_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M04_AXI_awvalid(0) <= m04_couplers_to_processing_system7_0_axi_periph_AWVALID(0);
  M04_AXI_bready(0) <= m04_couplers_to_processing_system7_0_axi_periph_BREADY(0);
  M04_AXI_rready(0) <= m04_couplers_to_processing_system7_0_axi_periph_RREADY(0);
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M04_AXI_wvalid(0) <= m04_couplers_to_processing_system7_0_axi_periph_WVALID(0);
  M05_ACLK_1 <= M05_ACLK;
  M05_ARESETN_1 <= M05_ARESETN;
  M05_AXI_araddr(31 downto 0) <= m05_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M05_AXI_arvalid(0) <= m05_couplers_to_processing_system7_0_axi_periph_ARVALID(0);
  M05_AXI_awaddr(31 downto 0) <= m05_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M05_AXI_awvalid(0) <= m05_couplers_to_processing_system7_0_axi_periph_AWVALID(0);
  M05_AXI_bready(0) <= m05_couplers_to_processing_system7_0_axi_periph_BREADY(0);
  M05_AXI_rready(0) <= m05_couplers_to_processing_system7_0_axi_periph_RREADY(0);
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M05_AXI_wvalid(0) <= m05_couplers_to_processing_system7_0_axi_periph_WVALID(0);
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= processing_system7_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= processing_system7_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= processing_system7_0_axi_periph_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= processing_system7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= processing_system7_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= processing_system7_0_axi_periph_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= processing_system7_0_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= processing_system7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= processing_system7_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= processing_system7_0_axi_periph_to_s00_couplers_WREADY;
  m00_couplers_to_processing_system7_0_axi_periph_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_processing_system7_0_axi_periph_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_processing_system7_0_axi_periph_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_processing_system7_0_axi_periph_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_processing_system7_0_axi_periph_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_processing_system7_0_axi_periph_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_processing_system7_0_axi_periph_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_processing_system7_0_axi_periph_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_processing_system7_0_axi_periph_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_processing_system7_0_axi_periph_WREADY(0) <= M01_AXI_wready(0);
  m02_couplers_to_processing_system7_0_axi_periph_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_processing_system7_0_axi_periph_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_processing_system7_0_axi_periph_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_processing_system7_0_axi_periph_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_processing_system7_0_axi_periph_WREADY(0) <= M02_AXI_wready(0);
  m03_couplers_to_processing_system7_0_axi_periph_ARREADY(0) <= M03_AXI_arready(0);
  m03_couplers_to_processing_system7_0_axi_periph_AWREADY(0) <= M03_AXI_awready(0);
  m03_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_processing_system7_0_axi_periph_BVALID(0) <= M03_AXI_bvalid(0);
  m03_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_processing_system7_0_axi_periph_RVALID(0) <= M03_AXI_rvalid(0);
  m03_couplers_to_processing_system7_0_axi_periph_WREADY(0) <= M03_AXI_wready(0);
  m04_couplers_to_processing_system7_0_axi_periph_ARREADY(0) <= M04_AXI_arready(0);
  m04_couplers_to_processing_system7_0_axi_periph_AWREADY(0) <= M04_AXI_awready(0);
  m04_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_processing_system7_0_axi_periph_BVALID(0) <= M04_AXI_bvalid(0);
  m04_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_processing_system7_0_axi_periph_RVALID(0) <= M04_AXI_rvalid(0);
  m04_couplers_to_processing_system7_0_axi_periph_WREADY(0) <= M04_AXI_wready(0);
  m05_couplers_to_processing_system7_0_axi_periph_ARREADY(0) <= M05_AXI_arready(0);
  m05_couplers_to_processing_system7_0_axi_periph_AWREADY(0) <= M05_AXI_awready(0);
  m05_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_processing_system7_0_axi_periph_BVALID(0) <= M05_AXI_bvalid(0);
  m05_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_processing_system7_0_axi_periph_RVALID(0) <= M05_AXI_rvalid(0);
  m05_couplers_to_processing_system7_0_axi_periph_WREADY(0) <= M05_AXI_wready(0);
  processing_system7_0_axi_periph_ACLK_net <= ACLK;
  processing_system7_0_axi_periph_ARESETN_net <= ARESETN;
  processing_system7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  processing_system7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  processing_system7_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  processing_system7_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  processing_system7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  processing_system7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
m00_couplers: entity work.m00_couplers_imp_1FQ8Y7U
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m00_couplers_to_processing_system7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_processing_system7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m00_couplers_to_processing_system7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_processing_system7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_processing_system7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_processing_system7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_processing_system7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_processing_system7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_processing_system7_0_axi_periph_WREADY(0),
      M_AXI_wvalid(0) => m00_couplers_to_processing_system7_0_axi_periph_WVALID(0),
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_AXBQKS
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m01_couplers_to_processing_system7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m01_couplers_to_processing_system7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m01_couplers_to_processing_system7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m01_couplers_to_processing_system7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m01_couplers_to_processing_system7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_processing_system7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m01_couplers_to_processing_system7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_processing_system7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m01_couplers_to_processing_system7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m01_couplers_to_processing_system7_0_axi_periph_WVALID(0),
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready(0) => xbar_to_m01_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready(0) => xbar_to_m01_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready(0) => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => xbar_to_m01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_P91CBB
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m02_couplers_to_processing_system7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_processing_system7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m02_couplers_to_processing_system7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m02_couplers_to_processing_system7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_processing_system7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_processing_system7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m02_couplers_to_processing_system7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_processing_system7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m02_couplers_to_processing_system7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_processing_system7_0_axi_periph_WVALID(0),
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_1IYBMJL
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN => M03_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m03_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m03_couplers_to_processing_system7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m03_couplers_to_processing_system7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m03_couplers_to_processing_system7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m03_couplers_to_processing_system7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m03_couplers_to_processing_system7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m03_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m03_couplers_to_processing_system7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m03_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m03_couplers_to_processing_system7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m03_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m03_couplers_to_processing_system7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m03_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m03_couplers_to_processing_system7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m03_couplers_to_processing_system7_0_axi_periph_WVALID(0),
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arready(0) => xbar_to_m03_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awready(0) => xbar_to_m03_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready(0) => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m03_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m03_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready(0) => xbar_to_m03_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid(0) => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_19FT0DD
     port map (
      M_ACLK => M04_ACLK_1,
      M_ARESETN => M04_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m04_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m04_couplers_to_processing_system7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m04_couplers_to_processing_system7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m04_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m04_couplers_to_processing_system7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m04_couplers_to_processing_system7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m04_couplers_to_processing_system7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m04_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m04_couplers_to_processing_system7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m04_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m04_couplers_to_processing_system7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m04_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m04_couplers_to_processing_system7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m04_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m04_couplers_to_processing_system7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m04_couplers_to_processing_system7_0_axi_periph_WVALID(0),
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arready(0) => xbar_to_m04_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awready(0) => xbar_to_m04_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready(0) => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m04_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m04_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready(0) => xbar_to_m04_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid(0) => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_HF9FTJ
     port map (
      M_ACLK => M05_ACLK_1,
      M_ARESETN => M05_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m05_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m05_couplers_to_processing_system7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m05_couplers_to_processing_system7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m05_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m05_couplers_to_processing_system7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m05_couplers_to_processing_system7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m05_couplers_to_processing_system7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m05_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m05_couplers_to_processing_system7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m05_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m05_couplers_to_processing_system7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m05_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m05_couplers_to_processing_system7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m05_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m05_couplers_to_processing_system7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m05_couplers_to_processing_system7_0_axi_periph_WVALID(0),
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arready(0) => xbar_to_m05_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awready(0) => xbar_to_m05_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready(0) => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m05_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m05_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready(0) => xbar_to_m05_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid(0) => xbar_to_m05_couplers_WVALID(5)
    );
s00_couplers: entity work.s00_couplers_imp_YMICCV
     port map (
      M_ACLK => processing_system7_0_axi_periph_ACLK_net,
      M_ARESETN => processing_system7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => processing_system7_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => processing_system7_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => processing_system7_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => processing_system7_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => processing_system7_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => processing_system7_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => processing_system7_0_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => processing_system7_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => processing_system7_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => processing_system7_0_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => processing_system7_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => processing_system7_0_axi_periph_to_s00_couplers_WVALID
    );
xbar: component zsys_xbar_0
     port map (
      aclk => processing_system7_0_axi_periph_ACLK_net,
      aresetn => processing_system7_0_axi_periph_ARESETN_net,
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(17 downto 9) => NLW_xbar_m_axi_arprot_UNCONNECTED(17 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(5 downto 0),
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY(0),
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY(0),
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY(0),
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(17 downto 9) => NLW_xbar_m_axi_awprot_UNCONNECTED(17 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(5 downto 0),
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY(0),
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY(0),
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY(0),
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID(0),
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID(0),
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID(0),
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID(0),
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID(0),
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID(0),
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY(0),
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY(0),
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY(0),
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => NLW_xbar_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity video_out_imp_VOY96P is
  port (
    CLKWIZ_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLKWIZ_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLKWIZ_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLKWIZ_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLKWIZ_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLKWIZ_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLKWIZ_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLKWIZ_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLKWIZ_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLKWIZ_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLKWIZ_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLKWIZ_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLKWIZ_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLKWIZ_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLKWIZ_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLKWIZ_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLKWIZ_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    VDMA_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    VDMA_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    VDMA_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    VDMA_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    VDMA_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    VDMA_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    VDMA_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    VDMA_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VDMA_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    VDMA_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    VDMA_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    VDMA_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VDMA_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    VDMA_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    VDMA_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    VDMA_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    VIDEO_OUT_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    VIDEO_OUT_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VIDEO_OUT_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VIDEO_OUT_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VIDEO_OUT_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VIDEO_OUT_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    VIDEO_OUT_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VIDEO_OUT_AXI_arready : in STD_LOGIC;
    VIDEO_OUT_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    VIDEO_OUT_AXI_arvalid : out STD_LOGIC;
    VIDEO_OUT_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    VIDEO_OUT_AXI_rlast : in STD_LOGIC;
    VIDEO_OUT_AXI_rready : out STD_LOGIC;
    VIDEO_OUT_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    VIDEO_OUT_AXI_rvalid : in STD_LOGIC;
    VTC_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    VTC_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    VTC_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    VTC_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    VTC_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    VTC_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    VTC_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    VTC_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VTC_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    VTC_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    VTC_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    VTC_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VTC_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    VTC_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    VTC_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    VTC_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    VTC_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_aclk : in STD_LOGIC;
    axi_int_aresetn : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_per_aresetn : in STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_clk_n : out STD_LOGIC;
    hdmi_clk_p : out STD_LOGIC;
    hdmi_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ref_clk : in STD_LOGIC;
    tx_dma_int : out STD_LOGIC
  );
end video_out_imp_VOY96P;

architecture STRUCTURE of video_out_imp_VOY96P is
  component zsys_Video_IO_2_HDMI_TMDS_0_0 is
  port (
    video_clk_in : in STD_LOGIC;
    video_clk5x_in : in STD_LOGIC;
    lock_in : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_active_video : in STD_LOGIC;
    vid_hblank : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    hdmi_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_clk_p : out STD_LOGIC;
    hdmi_clk_n : out STD_LOGIC
  );
  end component zsys_Video_IO_2_HDMI_TMDS_0_0;
  component zsys_axis_fb_conv_0_0 is
  port (
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    video_out_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    video_out_tlast : out STD_LOGIC;
    video_out_tuser : out STD_LOGIC;
    video_out_tvalid : out STD_LOGIC;
    video_out_tready : in STD_LOGIC
  );
  end component zsys_axis_fb_conv_0_0;
  component zsys_axi_vdma_0_1 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axis_mm2s_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mm2s_frame_ptr_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    mm2s_introut : out STD_LOGIC
  );
  end component zsys_axi_vdma_0_1;
  component zsys_clk_wiz_1_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_74MHz : out STD_LOGIC;
    clk_371MHz : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component zsys_clk_wiz_1_0;
  component zsys_v_axi4s_vid_out_0_0 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    fid : in STD_LOGIC;
    vid_io_out_clk : in STD_LOGIC;
    vid_io_out_ce : in STD_LOGIC;
    vid_io_out_reset : in STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_hsync : out STD_LOGIC;
    vid_vblank : out STD_LOGIC;
    vid_hblank : out STD_LOGIC;
    vid_field_id : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vtg_vsync : in STD_LOGIC;
    vtg_hsync : in STD_LOGIC;
    vtg_vblank : in STD_LOGIC;
    vtg_hblank : in STD_LOGIC;
    vtg_active_video : in STD_LOGIC;
    vtg_field_id : in STD_LOGIC;
    vtg_ce : out STD_LOGIC;
    locked : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    fifo_read_level : out STD_LOGIC_VECTOR ( 10 downto 0 );
    status : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component zsys_v_axi4s_vid_out_0_0;
  component zsys_v_tc_0_0 is
  port (
    clk : in STD_LOGIC;
    clken : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aclken : in STD_LOGIC;
    gen_clken : in STD_LOGIC;
    hsync_out : out STD_LOGIC;
    hblank_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    vblank_out : out STD_LOGIC;
    active_video_out : out STD_LOGIC;
    resetn : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    irq : out STD_LOGIC;
    fsync_in : in STD_LOGIC;
    fsync_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_v_tc_0_0;
  signal ARESETN_2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CLKWIZ_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CLKWIZ_AXI_1_ARREADY : STD_LOGIC;
  signal CLKWIZ_AXI_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CLKWIZ_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CLKWIZ_AXI_1_AWREADY : STD_LOGIC;
  signal CLKWIZ_AXI_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CLKWIZ_AXI_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CLKWIZ_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CLKWIZ_AXI_1_BVALID : STD_LOGIC;
  signal CLKWIZ_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CLKWIZ_AXI_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CLKWIZ_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CLKWIZ_AXI_1_RVALID : STD_LOGIC;
  signal CLKWIZ_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CLKWIZ_AXI_1_WREADY : STD_LOGIC;
  signal CLKWIZ_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CLKWIZ_AXI_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RLAST : STD_LOGIC;
  signal Conn1_RREADY : STD_LOGIC;
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn2_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_ARREADY : STD_LOGIC;
  signal Conn2_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_AWREADY : STD_LOGIC;
  signal Conn2_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_BVALID : STD_LOGIC;
  signal Conn2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_RVALID : STD_LOGIC;
  signal Conn2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_WREADY : STD_LOGIC;
  signal Conn2_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_ARREADY : STD_LOGIC;
  signal Conn3_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_AWREADY : STD_LOGIC;
  signal Conn3_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_BVALID : STD_LOGIC;
  signal Conn3_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_RVALID : STD_LOGIC;
  signal Conn3_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_WREADY : STD_LOGIC;
  signal Conn3_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Net : STD_LOGIC;
  signal Video_IO_2_HDMI_TMDS_0_hdmi_clk_n : STD_LOGIC;
  signal Video_IO_2_HDMI_TMDS_0_hdmi_clk_p : STD_LOGIC;
  signal Video_IO_2_HDMI_TMDS_0_hdmi_data_n : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Video_IO_2_HDMI_TMDS_0_hdmi_data_p : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal aresetn_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_vdma_0_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_0_M_AXIS_MM2S_TLAST : STD_LOGIC;
  signal axi_vdma_0_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXIS_MM2S_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_vdma_0_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_vdma_0_mm2s_introut : STD_LOGIC;
  signal axis_fb_conv_0_video_out_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal axis_fb_conv_0_video_out_TLAST : STD_LOGIC;
  signal axis_fb_conv_0_video_out_TREADY : STD_LOGIC;
  signal axis_fb_conv_0_video_out_TUSER : STD_LOGIC;
  signal axis_fb_conv_0_video_out_TVALID : STD_LOGIC;
  signal clk_wiz_1_clk_371MHz : STD_LOGIC;
  signal clk_wiz_1_locked : STD_LOGIC;
  signal ref_clk_1 : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_io_out_DATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal v_axi4s_vid_out_0_vid_io_out_HBLANK : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_io_out_HSYNC : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_io_out_VBLANK : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_io_out_VSYNC : STD_LOGIC;
  signal v_axi4s_vid_out_0_vtg_ce : STD_LOGIC;
  signal v_tc_0_vtiming_out_ACTIVE_VIDEO : STD_LOGIC;
  signal v_tc_0_vtiming_out_HBLANK : STD_LOGIC;
  signal v_tc_0_vtiming_out_HSYNC : STD_LOGIC;
  signal v_tc_0_vtiming_out_VBLANK : STD_LOGIC;
  signal v_tc_0_vtiming_out_VSYNC : STD_LOGIC;
  signal video_clk_in_1 : STD_LOGIC;
  signal NLW_axi_vdma_0_m_axis_mm2s_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_vdma_0_mm2s_frame_ptr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_v_axi4s_vid_out_0_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_field_id_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_fifo_read_level_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_v_axi4s_vid_out_0_status_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_v_tc_0_irq_UNCONNECTED : STD_LOGIC;
  signal NLW_v_tc_0_fsync_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  ARESETN_2(0) <= axi_int_aresetn(0);
  CLKWIZ_AXI_1_ARADDR(31 downto 0) <= CLKWIZ_AXI_araddr(31 downto 0);
  CLKWIZ_AXI_1_ARVALID(0) <= CLKWIZ_AXI_arvalid(0);
  CLKWIZ_AXI_1_AWADDR(31 downto 0) <= CLKWIZ_AXI_awaddr(31 downto 0);
  CLKWIZ_AXI_1_AWVALID(0) <= CLKWIZ_AXI_awvalid(0);
  CLKWIZ_AXI_1_BREADY(0) <= CLKWIZ_AXI_bready(0);
  CLKWIZ_AXI_1_RREADY(0) <= CLKWIZ_AXI_rready(0);
  CLKWIZ_AXI_1_WDATA(31 downto 0) <= CLKWIZ_AXI_wdata(31 downto 0);
  CLKWIZ_AXI_1_WSTRB(3 downto 0) <= CLKWIZ_AXI_wstrb(3 downto 0);
  CLKWIZ_AXI_1_WVALID(0) <= CLKWIZ_AXI_wvalid(0);
  CLKWIZ_AXI_arready(0) <= CLKWIZ_AXI_1_ARREADY;
  CLKWIZ_AXI_awready(0) <= CLKWIZ_AXI_1_AWREADY;
  CLKWIZ_AXI_bresp(1 downto 0) <= CLKWIZ_AXI_1_BRESP(1 downto 0);
  CLKWIZ_AXI_bvalid(0) <= CLKWIZ_AXI_1_BVALID;
  CLKWIZ_AXI_rdata(31 downto 0) <= CLKWIZ_AXI_1_RDATA(31 downto 0);
  CLKWIZ_AXI_rresp(1 downto 0) <= CLKWIZ_AXI_1_RRESP(1 downto 0);
  CLKWIZ_AXI_rvalid(0) <= CLKWIZ_AXI_1_RVALID;
  CLKWIZ_AXI_wready(0) <= CLKWIZ_AXI_1_WREADY;
  Conn1_ARREADY <= VIDEO_OUT_AXI_arready;
  Conn1_RDATA(31 downto 0) <= VIDEO_OUT_AXI_rdata(31 downto 0);
  Conn1_RLAST <= VIDEO_OUT_AXI_rlast;
  Conn1_RRESP(1 downto 0) <= VIDEO_OUT_AXI_rresp(1 downto 0);
  Conn1_RVALID <= VIDEO_OUT_AXI_rvalid;
  Conn2_ARADDR(31 downto 0) <= VDMA_AXI_araddr(31 downto 0);
  Conn2_ARVALID(0) <= VDMA_AXI_arvalid(0);
  Conn2_AWADDR(31 downto 0) <= VDMA_AXI_awaddr(31 downto 0);
  Conn2_AWVALID(0) <= VDMA_AXI_awvalid(0);
  Conn2_BREADY(0) <= VDMA_AXI_bready(0);
  Conn2_RREADY(0) <= VDMA_AXI_rready(0);
  Conn2_WDATA(31 downto 0) <= VDMA_AXI_wdata(31 downto 0);
  Conn2_WVALID(0) <= VDMA_AXI_wvalid(0);
  Conn3_ARADDR(31 downto 0) <= VTC_AXI_araddr(31 downto 0);
  Conn3_ARVALID(0) <= VTC_AXI_arvalid(0);
  Conn3_AWADDR(31 downto 0) <= VTC_AXI_awaddr(31 downto 0);
  Conn3_AWVALID(0) <= VTC_AXI_awvalid(0);
  Conn3_BREADY(0) <= VTC_AXI_bready(0);
  Conn3_RREADY(0) <= VTC_AXI_rready(0);
  Conn3_WDATA(31 downto 0) <= VTC_AXI_wdata(31 downto 0);
  Conn3_WSTRB(3 downto 0) <= VTC_AXI_wstrb(3 downto 0);
  Conn3_WVALID(0) <= VTC_AXI_wvalid(0);
  Net <= axi_aclk;
  VDMA_AXI_arready(0) <= Conn2_ARREADY;
  VDMA_AXI_awready(0) <= Conn2_AWREADY;
  VDMA_AXI_bresp(1 downto 0) <= Conn2_BRESP(1 downto 0);
  VDMA_AXI_bvalid(0) <= Conn2_BVALID;
  VDMA_AXI_rdata(31 downto 0) <= Conn2_RDATA(31 downto 0);
  VDMA_AXI_rresp(1 downto 0) <= Conn2_RRESP(1 downto 0);
  VDMA_AXI_rvalid(0) <= Conn2_RVALID;
  VDMA_AXI_wready(0) <= Conn2_WREADY;
  VIDEO_OUT_AXI_araddr(31 downto 0) <= Conn1_ARADDR(31 downto 0);
  VIDEO_OUT_AXI_arburst(1 downto 0) <= Conn1_ARBURST(1 downto 0);
  VIDEO_OUT_AXI_arcache(3 downto 0) <= Conn1_ARCACHE(3 downto 0);
  VIDEO_OUT_AXI_arlen(3 downto 0) <= Conn1_ARLEN(3 downto 0);
  VIDEO_OUT_AXI_arlock(1 downto 0) <= Conn1_ARLOCK(1 downto 0);
  VIDEO_OUT_AXI_arprot(2 downto 0) <= Conn1_ARPROT(2 downto 0);
  VIDEO_OUT_AXI_arqos(3 downto 0) <= Conn1_ARQOS(3 downto 0);
  VIDEO_OUT_AXI_arsize(2 downto 0) <= Conn1_ARSIZE(2 downto 0);
  VIDEO_OUT_AXI_arvalid <= Conn1_ARVALID;
  VIDEO_OUT_AXI_rready <= Conn1_RREADY;
  VTC_AXI_arready(0) <= Conn3_ARREADY;
  VTC_AXI_awready(0) <= Conn3_AWREADY;
  VTC_AXI_bresp(1 downto 0) <= Conn3_BRESP(1 downto 0);
  VTC_AXI_bvalid(0) <= Conn3_BVALID;
  VTC_AXI_rdata(31 downto 0) <= Conn3_RDATA(31 downto 0);
  VTC_AXI_rresp(1 downto 0) <= Conn3_RRESP(1 downto 0);
  VTC_AXI_rvalid(0) <= Conn3_RVALID;
  VTC_AXI_wready(0) <= Conn3_WREADY;
  aresetn_1(0) <= axi_per_aresetn(0);
  hdmi_clk_n <= Video_IO_2_HDMI_TMDS_0_hdmi_clk_n;
  hdmi_clk_p <= Video_IO_2_HDMI_TMDS_0_hdmi_clk_p;
  hdmi_data_n(2 downto 0) <= Video_IO_2_HDMI_TMDS_0_hdmi_data_n(2 downto 0);
  hdmi_data_p(2 downto 0) <= Video_IO_2_HDMI_TMDS_0_hdmi_data_p(2 downto 0);
  ref_clk_1 <= ref_clk;
  tx_dma_int <= axi_vdma_0_mm2s_introut;
Video_IO_2_HDMI_TMDS_0: component zsys_Video_IO_2_HDMI_TMDS_0_0
     port map (
      hdmi_clk_n => Video_IO_2_HDMI_TMDS_0_hdmi_clk_n,
      hdmi_clk_p => Video_IO_2_HDMI_TMDS_0_hdmi_clk_p,
      hdmi_data_n(2 downto 0) => Video_IO_2_HDMI_TMDS_0_hdmi_data_n(2 downto 0),
      hdmi_data_p(2 downto 0) => Video_IO_2_HDMI_TMDS_0_hdmi_data_p(2 downto 0),
      lock_in => clk_wiz_1_locked,
      vid_active_video => v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO,
      vid_data(23 downto 0) => v_axi4s_vid_out_0_vid_io_out_DATA(23 downto 0),
      vid_hblank => v_axi4s_vid_out_0_vid_io_out_HBLANK,
      vid_hsync => v_axi4s_vid_out_0_vid_io_out_HSYNC,
      vid_vblank => v_axi4s_vid_out_0_vid_io_out_VBLANK,
      vid_vsync => v_axi4s_vid_out_0_vid_io_out_VSYNC,
      video_clk5x_in => clk_wiz_1_clk_371MHz,
      video_clk_in => video_clk_in_1
    );
axi_mem_intercon: entity work.zsys_axi_mem_intercon_0
     port map (
      ACLK => Net,
      ARESETN => ARESETN_2(0),
      M00_ACLK => Net,
      M00_ARESETN => aresetn_1(0),
      M00_AXI_araddr(31 downto 0) => Conn1_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => Conn1_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => Conn1_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => Conn1_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => Conn1_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => Conn1_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => Conn1_ARQOS(3 downto 0),
      M00_AXI_arready => Conn1_ARREADY,
      M00_AXI_arsize(2 downto 0) => Conn1_ARSIZE(2 downto 0),
      M00_AXI_arvalid => Conn1_ARVALID,
      M00_AXI_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      M00_AXI_rlast => Conn1_RLAST,
      M00_AXI_rready => Conn1_RREADY,
      M00_AXI_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      M00_AXI_rvalid => Conn1_RVALID,
      S00_ACLK => Net,
      S00_ARESETN => aresetn_1(0),
      S00_AXI_araddr(31 downto 0) => axi_vdma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_vdma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_vdma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_vdma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      S00_AXI_arprot(2 downto 0) => axi_vdma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      S00_AXI_arready => axi_vdma_0_M_AXI_MM2S_ARREADY,
      S00_AXI_arsize(2 downto 0) => axi_vdma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_vdma_0_M_AXI_MM2S_ARVALID,
      S00_AXI_rdata(31 downto 0) => axi_vdma_0_M_AXI_MM2S_RDATA(31 downto 0),
      S00_AXI_rlast => axi_vdma_0_M_AXI_MM2S_RLAST,
      S00_AXI_rready => axi_vdma_0_M_AXI_MM2S_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_vdma_0_M_AXI_MM2S_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_vdma_0_M_AXI_MM2S_RVALID
    );
axi_vdma_0: component zsys_axi_vdma_0_1
     port map (
      axi_resetn => aresetn_1(0),
      m_axi_mm2s_aclk => Net,
      m_axi_mm2s_araddr(31 downto 0) => axi_vdma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_vdma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_vdma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_vdma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_vdma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_vdma_0_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_vdma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_vdma_0_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_vdma_0_M_AXI_MM2S_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_vdma_0_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_vdma_0_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_vdma_0_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_vdma_0_M_AXI_MM2S_RVALID,
      m_axis_mm2s_aclk => Net,
      m_axis_mm2s_tdata(31 downto 0) => axi_vdma_0_M_AXIS_MM2S_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => NLW_axi_vdma_0_m_axis_mm2s_tkeep_UNCONNECTED(3 downto 0),
      m_axis_mm2s_tlast => axi_vdma_0_M_AXIS_MM2S_TLAST,
      m_axis_mm2s_tready => axi_vdma_0_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tuser(0) => axi_vdma_0_M_AXIS_MM2S_TUSER(0),
      m_axis_mm2s_tvalid => axi_vdma_0_M_AXIS_MM2S_TVALID,
      mm2s_frame_ptr_out(5 downto 0) => NLW_axi_vdma_0_mm2s_frame_ptr_out_UNCONNECTED(5 downto 0),
      mm2s_introut => axi_vdma_0_mm2s_introut,
      s_axi_lite_aclk => Net,
      s_axi_lite_araddr(8 downto 0) => Conn2_ARADDR(8 downto 0),
      s_axi_lite_arready => Conn2_ARREADY,
      s_axi_lite_arvalid => Conn2_ARVALID(0),
      s_axi_lite_awaddr(8 downto 0) => Conn2_AWADDR(8 downto 0),
      s_axi_lite_awready => Conn2_AWREADY,
      s_axi_lite_awvalid => Conn2_AWVALID(0),
      s_axi_lite_bready => Conn2_BREADY(0),
      s_axi_lite_bresp(1 downto 0) => Conn2_BRESP(1 downto 0),
      s_axi_lite_bvalid => Conn2_BVALID,
      s_axi_lite_rdata(31 downto 0) => Conn2_RDATA(31 downto 0),
      s_axi_lite_rready => Conn2_RREADY(0),
      s_axi_lite_rresp(1 downto 0) => Conn2_RRESP(1 downto 0),
      s_axi_lite_rvalid => Conn2_RVALID,
      s_axi_lite_wdata(31 downto 0) => Conn2_WDATA(31 downto 0),
      s_axi_lite_wready => Conn2_WREADY,
      s_axi_lite_wvalid => Conn2_WVALID(0)
    );
axis_fb_conv_0: component zsys_axis_fb_conv_0_0
     port map (
      s_axis_aclk => Net,
      s_axis_aresetn => aresetn_1(0),
      s_axis_tdata(31 downto 0) => axi_vdma_0_M_AXIS_MM2S_TDATA(31 downto 0),
      s_axis_tlast => axi_vdma_0_M_AXIS_MM2S_TLAST,
      s_axis_tready => axi_vdma_0_M_AXIS_MM2S_TREADY,
      s_axis_tuser => axi_vdma_0_M_AXIS_MM2S_TUSER(0),
      s_axis_tvalid => axi_vdma_0_M_AXIS_MM2S_TVALID,
      video_out_tdata(23 downto 0) => axis_fb_conv_0_video_out_TDATA(23 downto 0),
      video_out_tlast => axis_fb_conv_0_video_out_TLAST,
      video_out_tready => axis_fb_conv_0_video_out_TREADY,
      video_out_tuser => axis_fb_conv_0_video_out_TUSER,
      video_out_tvalid => axis_fb_conv_0_video_out_TVALID
    );
clk_wiz_1: component zsys_clk_wiz_1_0
     port map (
      clk_371MHz => clk_wiz_1_clk_371MHz,
      clk_74MHz => video_clk_in_1,
      clk_in1 => ref_clk_1,
      locked => clk_wiz_1_locked,
      s_axi_aclk => Net,
      s_axi_araddr(10 downto 0) => CLKWIZ_AXI_1_ARADDR(10 downto 0),
      s_axi_aresetn => aresetn_1(0),
      s_axi_arready => CLKWIZ_AXI_1_ARREADY,
      s_axi_arvalid => CLKWIZ_AXI_1_ARVALID(0),
      s_axi_awaddr(10 downto 0) => CLKWIZ_AXI_1_AWADDR(10 downto 0),
      s_axi_awready => CLKWIZ_AXI_1_AWREADY,
      s_axi_awvalid => CLKWIZ_AXI_1_AWVALID(0),
      s_axi_bready => CLKWIZ_AXI_1_BREADY(0),
      s_axi_bresp(1 downto 0) => CLKWIZ_AXI_1_BRESP(1 downto 0),
      s_axi_bvalid => CLKWIZ_AXI_1_BVALID,
      s_axi_rdata(31 downto 0) => CLKWIZ_AXI_1_RDATA(31 downto 0),
      s_axi_rready => CLKWIZ_AXI_1_RREADY(0),
      s_axi_rresp(1 downto 0) => CLKWIZ_AXI_1_RRESP(1 downto 0),
      s_axi_rvalid => CLKWIZ_AXI_1_RVALID,
      s_axi_wdata(31 downto 0) => CLKWIZ_AXI_1_WDATA(31 downto 0),
      s_axi_wready => CLKWIZ_AXI_1_WREADY,
      s_axi_wstrb(3 downto 0) => CLKWIZ_AXI_1_WSTRB(3 downto 0),
      s_axi_wvalid => CLKWIZ_AXI_1_WVALID(0)
    );
v_axi4s_vid_out_0: component zsys_v_axi4s_vid_out_0_0
     port map (
      aclk => Net,
      aclken => '1',
      aresetn => aresetn_1(0),
      fid => '0',
      fifo_read_level(10 downto 0) => NLW_v_axi4s_vid_out_0_fifo_read_level_UNCONNECTED(10 downto 0),
      locked => NLW_v_axi4s_vid_out_0_locked_UNCONNECTED,
      overflow => NLW_v_axi4s_vid_out_0_overflow_UNCONNECTED,
      s_axis_video_tdata(23 downto 0) => axis_fb_conv_0_video_out_TDATA(23 downto 0),
      s_axis_video_tlast => axis_fb_conv_0_video_out_TLAST,
      s_axis_video_tready => axis_fb_conv_0_video_out_TREADY,
      s_axis_video_tuser => axis_fb_conv_0_video_out_TUSER,
      s_axis_video_tvalid => axis_fb_conv_0_video_out_TVALID,
      status(31 downto 0) => NLW_v_axi4s_vid_out_0_status_UNCONNECTED(31 downto 0),
      underflow => NLW_v_axi4s_vid_out_0_underflow_UNCONNECTED,
      vid_active_video => v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO,
      vid_data(23 downto 0) => v_axi4s_vid_out_0_vid_io_out_DATA(23 downto 0),
      vid_field_id => NLW_v_axi4s_vid_out_0_vid_field_id_UNCONNECTED,
      vid_hblank => v_axi4s_vid_out_0_vid_io_out_HBLANK,
      vid_hsync => v_axi4s_vid_out_0_vid_io_out_HSYNC,
      vid_io_out_ce => '1',
      vid_io_out_clk => video_clk_in_1,
      vid_io_out_reset => '0',
      vid_vblank => v_axi4s_vid_out_0_vid_io_out_VBLANK,
      vid_vsync => v_axi4s_vid_out_0_vid_io_out_VSYNC,
      vtg_active_video => v_tc_0_vtiming_out_ACTIVE_VIDEO,
      vtg_ce => v_axi4s_vid_out_0_vtg_ce,
      vtg_field_id => '0',
      vtg_hblank => v_tc_0_vtiming_out_HBLANK,
      vtg_hsync => v_tc_0_vtiming_out_HSYNC,
      vtg_vblank => v_tc_0_vtiming_out_VBLANK,
      vtg_vsync => v_tc_0_vtiming_out_VSYNC
    );
v_tc_0: component zsys_v_tc_0_0
     port map (
      active_video_out => v_tc_0_vtiming_out_ACTIVE_VIDEO,
      clk => video_clk_in_1,
      clken => '1',
      fsync_in => '0',
      fsync_out(0) => NLW_v_tc_0_fsync_out_UNCONNECTED(0),
      gen_clken => v_axi4s_vid_out_0_vtg_ce,
      hblank_out => v_tc_0_vtiming_out_HBLANK,
      hsync_out => v_tc_0_vtiming_out_HSYNC,
      irq => NLW_v_tc_0_irq_UNCONNECTED,
      resetn => '1',
      s_axi_aclk => Net,
      s_axi_aclken => '1',
      s_axi_araddr(8 downto 0) => Conn3_ARADDR(8 downto 0),
      s_axi_aresetn => aresetn_1(0),
      s_axi_arready => Conn3_ARREADY,
      s_axi_arvalid => Conn3_ARVALID(0),
      s_axi_awaddr(8 downto 0) => Conn3_AWADDR(8 downto 0),
      s_axi_awready => Conn3_AWREADY,
      s_axi_awvalid => Conn3_AWVALID(0),
      s_axi_bready => Conn3_BREADY(0),
      s_axi_bresp(1 downto 0) => Conn3_BRESP(1 downto 0),
      s_axi_bvalid => Conn3_BVALID,
      s_axi_rdata(31 downto 0) => Conn3_RDATA(31 downto 0),
      s_axi_rready => Conn3_RREADY(0),
      s_axi_rresp(1 downto 0) => Conn3_RRESP(1 downto 0),
      s_axi_rvalid => Conn3_RVALID,
      s_axi_wdata(31 downto 0) => Conn3_WDATA(31 downto 0),
      s_axi_wready => Conn3_WREADY,
      s_axi_wstrb(3 downto 0) => Conn3_WSTRB(3 downto 0),
      s_axi_wvalid => Conn3_WVALID(0),
      vblank_out => v_tc_0_vtiming_out_VBLANK,
      vsync_out => v_tc_0_vtiming_out_VSYNC
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    IIC_0_0_scl_i : in STD_LOGIC;
    IIC_0_0_scl_o : out STD_LOGIC;
    IIC_0_0_scl_t : out STD_LOGIC;
    IIC_0_0_sda_i : in STD_LOGIC;
    IIC_0_0_sda_o : out STD_LOGIC;
    IIC_0_0_sda_t : out STD_LOGIC;
    IIC_1_0_scl_i : in STD_LOGIC;
    IIC_1_0_scl_o : out STD_LOGIC;
    IIC_1_0_scl_t : out STD_LOGIC;
    IIC_1_0_sda_i : in STD_LOGIC;
    IIC_1_0_sda_o : out STD_LOGIC;
    IIC_1_0_sda_t : out STD_LOGIC;
    PWM_L : out STD_LOGIC;
    PWM_R : out STD_LOGIC;
    SPI0_MISO_I_0 : in STD_LOGIC;
    SPI0_MOSI_O_0 : out STD_LOGIC;
    SPI0_SCLK_O_0 : out STD_LOGIC;
    SPI0_SS1_O_0 : out STD_LOGIC;
    SPI0_SS_O_0 : out STD_LOGIC;
    Vp_Vn_v_n_0 : in STD_LOGIC;
    Vp_Vn_v_p_0 : in STD_LOGIC;
    gpio_rtl_0_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gpio_rtl_0_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gpio_rtl_0_tri_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gpio_rtl_1_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hdmi_clk_n : out STD_LOGIC;
    hdmi_clk_p : out STD_LOGIC;
    hdmi_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of zsys : entity is "zsys,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=zsys,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=33,numReposBlks=20,numNonXlnxBlks=5,numHierBlks=13,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=4,da_board_cnt=2,da_clkrst_cnt=9,da_ps7_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of zsys : entity is "zsys.hwdef";
end zsys;

architecture STRUCTURE of zsys is
  component zsys_processing_system7_0_0 is
  port (
    GPIO_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPIO_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    GPIO_T : out STD_LOGIC_VECTOR ( 31 downto 0 );
    I2C0_SDA_I : in STD_LOGIC;
    I2C0_SDA_O : out STD_LOGIC;
    I2C0_SDA_T : out STD_LOGIC;
    I2C0_SCL_I : in STD_LOGIC;
    I2C0_SCL_O : out STD_LOGIC;
    I2C0_SCL_T : out STD_LOGIC;
    I2C1_SDA_I : in STD_LOGIC;
    I2C1_SDA_O : out STD_LOGIC;
    I2C1_SDA_T : out STD_LOGIC;
    I2C1_SCL_I : in STD_LOGIC;
    I2C1_SCL_O : out STD_LOGIC;
    I2C1_SCL_T : out STD_LOGIC;
    SPI0_SCLK_I : in STD_LOGIC;
    SPI0_SCLK_O : out STD_LOGIC;
    SPI0_SCLK_T : out STD_LOGIC;
    SPI0_MOSI_I : in STD_LOGIC;
    SPI0_MOSI_O : out STD_LOGIC;
    SPI0_MOSI_T : out STD_LOGIC;
    SPI0_MISO_I : in STD_LOGIC;
    SPI0_MISO_O : out STD_LOGIC;
    SPI0_MISO_T : out STD_LOGIC;
    SPI0_SS_I : in STD_LOGIC;
    SPI0_SS_O : out STD_LOGIC;
    SPI0_SS1_O : out STD_LOGIC;
    SPI0_SS2_O : out STD_LOGIC;
    SPI0_SS_T : out STD_LOGIC;
    UART0_TX : out STD_LOGIC;
    UART0_RX : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA0_DATYPE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA0_DAVALID : out STD_LOGIC;
    DMA0_DRREADY : out STD_LOGIC;
    DMA1_DATYPE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA1_DAVALID : out STD_LOGIC;
    DMA1_DRREADY : out STD_LOGIC;
    DMA0_ACLK : in STD_LOGIC;
    DMA0_DAREADY : in STD_LOGIC;
    DMA0_DRLAST : in STD_LOGIC;
    DMA0_DRVALID : in STD_LOGIC;
    DMA1_ACLK : in STD_LOGIC;
    DMA1_DAREADY : in STD_LOGIC;
    DMA1_DRLAST : in STD_LOGIC;
    DMA1_DRVALID : in STD_LOGIC;
    DMA0_DRTYPE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA1_DRTYPE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component zsys_processing_system7_0_0;
  component zsys_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component zsys_xlconcat_0_0;
  component zsys_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component zsys_axi_gpio_0_0;
  component zsys_axi_gpio_1_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component zsys_axi_gpio_1_0;
  component zsys_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_100MHz : out STD_LOGIC;
    clk_200MHz : out STD_LOGIC;
    clk_12MHz : out STD_LOGIC
  );
  end component zsys_clk_wiz_0_0;
  component zsys_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_xlconstant_0_0;
  signal SPI0_MISO_I_0_1 : STD_LOGIC;
  signal Vp_Vn_v_n_0_1 : STD_LOGIC;
  signal Vp_Vn_v_p_0_1 : STD_LOGIC;
  signal audio_DMA_RX_REQ_TLAST : STD_LOGIC;
  signal audio_DMA_RX_REQ_TREADY : STD_LOGIC;
  signal audio_DMA_RX_REQ_TUSER : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal audio_DMA_RX_REQ_TVALID : STD_LOGIC;
  signal audio_DMA_TX_REQ_TLAST : STD_LOGIC;
  signal audio_DMA_TX_REQ_TREADY : STD_LOGIC;
  signal audio_DMA_TX_REQ_TUSER : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal audio_DMA_TX_REQ_TVALID : STD_LOGIC;
  signal audio_pwm_l_out : STD_LOGIC;
  signal audio_pwm_r_out : STD_LOGIC;
  signal axi_gpio_0_GPIO_TRI_I : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_gpio_0_GPIO_TRI_O : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_gpio_0_GPIO_TRI_T : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_gpio_0_ip2intc_irpt : STD_LOGIC;
  signal axi_gpio_1_GPIO_TRI_O : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_wiz_0_clk_12MHz : STD_LOGIC;
  signal clk_wiz_0_clk_200MHz : STD_LOGIC;
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_DMA0_ACK_TREADY : STD_LOGIC;
  signal processing_system7_0_DMA0_ACK_TUSER : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_DMA0_ACK_TVALID : STD_LOGIC;
  signal processing_system7_0_DMA1_ACK_TREADY : STD_LOGIC;
  signal processing_system7_0_DMA1_ACK_TUSER : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_DMA1_ACK_TVALID : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK1 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_IIC_0_SCL_I : STD_LOGIC;
  signal processing_system7_0_IIC_0_SCL_O : STD_LOGIC;
  signal processing_system7_0_IIC_0_SCL_T : STD_LOGIC;
  signal processing_system7_0_IIC_0_SDA_I : STD_LOGIC;
  signal processing_system7_0_IIC_0_SDA_O : STD_LOGIC;
  signal processing_system7_0_IIC_0_SDA_T : STD_LOGIC;
  signal processing_system7_0_IIC_1_SCL_I : STD_LOGIC;
  signal processing_system7_0_IIC_1_SCL_O : STD_LOGIC;
  signal processing_system7_0_IIC_1_SCL_T : STD_LOGIC;
  signal processing_system7_0_IIC_1_SDA_I : STD_LOGIC;
  signal processing_system7_0_IIC_1_SDA_O : STD_LOGIC;
  signal processing_system7_0_IIC_1_SDA_T : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal processing_system7_0_SPI0_MOSI_O : STD_LOGIC;
  signal processing_system7_0_SPI0_SCLK_O : STD_LOGIC;
  signal processing_system7_0_SPI0_SS1_O : STD_LOGIC;
  signal processing_system7_0_SPI0_SS_O : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M02_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M03_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M03_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M03_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M03_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M03_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M03_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M03_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M03_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M04_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M04_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M04_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M04_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M04_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M04_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M04_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M04_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M04_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M04_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M05_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M05_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M05_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M05_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M05_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M05_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M05_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M05_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M05_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M05_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_processing_system7_0_50M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_processing_system7_0_50M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_out_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal video_out_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal video_out_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal video_out_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal video_out_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal video_out_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_out_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal video_out_M00_AXI_ARREADY : STD_LOGIC;
  signal video_out_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_out_M00_AXI_ARVALID : STD_LOGIC;
  signal video_out_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal video_out_M00_AXI_RLAST : STD_LOGIC;
  signal video_out_M00_AXI_RREADY : STD_LOGIC;
  signal video_out_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal video_out_M00_AXI_RVALID : STD_LOGIC;
  signal video_out_hdmi_clk_n : STD_LOGIC;
  signal video_out_hdmi_clk_p : STD_LOGIC;
  signal video_out_hdmi_data_n : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_out_hdmi_data_p : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_out_mm2s_introut : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_SPI0_MISO_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_MISO_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_MOSI_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SCLK_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SS2_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SS_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_UART0_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_GPIO_O_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_GPIO_T_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of IIC_0_0_scl_i : signal is "xilinx.com:interface:iic:1.0 IIC_0_0 SCL_I";
  attribute X_INTERFACE_INFO of IIC_0_0_scl_o : signal is "xilinx.com:interface:iic:1.0 IIC_0_0 SCL_O";
  attribute X_INTERFACE_INFO of IIC_0_0_scl_t : signal is "xilinx.com:interface:iic:1.0 IIC_0_0 SCL_T";
  attribute X_INTERFACE_INFO of IIC_0_0_sda_i : signal is "xilinx.com:interface:iic:1.0 IIC_0_0 SDA_I";
  attribute X_INTERFACE_INFO of IIC_0_0_sda_o : signal is "xilinx.com:interface:iic:1.0 IIC_0_0 SDA_O";
  attribute X_INTERFACE_INFO of IIC_0_0_sda_t : signal is "xilinx.com:interface:iic:1.0 IIC_0_0 SDA_T";
  attribute X_INTERFACE_INFO of IIC_1_0_scl_i : signal is "xilinx.com:interface:iic:1.0 IIC_1_0 SCL_I";
  attribute X_INTERFACE_INFO of IIC_1_0_scl_o : signal is "xilinx.com:interface:iic:1.0 IIC_1_0 SCL_O";
  attribute X_INTERFACE_INFO of IIC_1_0_scl_t : signal is "xilinx.com:interface:iic:1.0 IIC_1_0 SCL_T";
  attribute X_INTERFACE_INFO of IIC_1_0_sda_i : signal is "xilinx.com:interface:iic:1.0 IIC_1_0 SDA_I";
  attribute X_INTERFACE_INFO of IIC_1_0_sda_o : signal is "xilinx.com:interface:iic:1.0 IIC_1_0 SDA_O";
  attribute X_INTERFACE_INFO of IIC_1_0_sda_t : signal is "xilinx.com:interface:iic:1.0 IIC_1_0 SDA_T";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
  attribute X_INTERFACE_INFO of gpio_rtl_0_tri_i : signal is "xilinx.com:interface:gpio:1.0 gpio_rtl_0 TRI_I";
  attribute X_INTERFACE_INFO of gpio_rtl_0_tri_o : signal is "xilinx.com:interface:gpio:1.0 gpio_rtl_0 TRI_O";
  attribute X_INTERFACE_INFO of gpio_rtl_0_tri_t : signal is "xilinx.com:interface:gpio:1.0 gpio_rtl_0 TRI_T";
  attribute X_INTERFACE_INFO of gpio_rtl_1_tri_o : signal is "xilinx.com:interface:gpio:1.0 gpio_rtl_1 TRI_O";
begin
  IIC_0_0_scl_o <= processing_system7_0_IIC_0_SCL_O;
  IIC_0_0_scl_t <= processing_system7_0_IIC_0_SCL_T;
  IIC_0_0_sda_o <= processing_system7_0_IIC_0_SDA_O;
  IIC_0_0_sda_t <= processing_system7_0_IIC_0_SDA_T;
  IIC_1_0_scl_o <= processing_system7_0_IIC_1_SCL_O;
  IIC_1_0_scl_t <= processing_system7_0_IIC_1_SCL_T;
  IIC_1_0_sda_o <= processing_system7_0_IIC_1_SDA_O;
  IIC_1_0_sda_t <= processing_system7_0_IIC_1_SDA_T;
  PWM_L <= audio_pwm_l_out;
  PWM_R <= audio_pwm_r_out;
  SPI0_MISO_I_0_1 <= SPI0_MISO_I_0;
  SPI0_MOSI_O_0 <= processing_system7_0_SPI0_MOSI_O;
  SPI0_SCLK_O_0 <= processing_system7_0_SPI0_SCLK_O;
  SPI0_SS1_O_0 <= processing_system7_0_SPI0_SS1_O;
  SPI0_SS_O_0 <= processing_system7_0_SPI0_SS_O;
  Vp_Vn_v_n_0_1 <= Vp_Vn_v_n_0;
  Vp_Vn_v_p_0_1 <= Vp_Vn_v_p_0;
  axi_gpio_0_GPIO_TRI_I(15 downto 0) <= gpio_rtl_0_tri_i(15 downto 0);
  gpio_rtl_0_tri_o(15 downto 0) <= axi_gpio_0_GPIO_TRI_O(15 downto 0);
  gpio_rtl_0_tri_t(15 downto 0) <= axi_gpio_0_GPIO_TRI_T(15 downto 0);
  gpio_rtl_1_tri_o(3 downto 0) <= axi_gpio_1_GPIO_TRI_O(3 downto 0);
  hdmi_clk_n <= video_out_hdmi_clk_n;
  hdmi_clk_p <= video_out_hdmi_clk_p;
  hdmi_data_n(2 downto 0) <= video_out_hdmi_data_n(2 downto 0);
  hdmi_data_p(2 downto 0) <= video_out_hdmi_data_p(2 downto 0);
  processing_system7_0_IIC_0_SCL_I <= IIC_0_0_scl_i;
  processing_system7_0_IIC_0_SDA_I <= IIC_0_0_sda_i;
  processing_system7_0_IIC_1_SCL_I <= IIC_1_0_scl_i;
  processing_system7_0_IIC_1_SDA_I <= IIC_1_0_sda_i;
audio: entity work.audio_imp_1P9NOCO
     port map (
      DMA_RX_ACK_tready => processing_system7_0_DMA1_ACK_TREADY,
      DMA_RX_ACK_tuser(1 downto 0) => processing_system7_0_DMA1_ACK_TUSER(1 downto 0),
      DMA_RX_ACK_tvalid => processing_system7_0_DMA1_ACK_TVALID,
      DMA_RX_REQ_tlast => audio_DMA_RX_REQ_TLAST,
      DMA_RX_REQ_tready => audio_DMA_RX_REQ_TREADY,
      DMA_RX_REQ_tuser(1 downto 0) => audio_DMA_RX_REQ_TUSER(1 downto 0),
      DMA_RX_REQ_tvalid => audio_DMA_RX_REQ_TVALID,
      DMA_TX_ACK_tready => processing_system7_0_DMA0_ACK_TREADY,
      DMA_TX_ACK_tuser(1 downto 0) => processing_system7_0_DMA0_ACK_TUSER(1 downto 0),
      DMA_TX_ACK_tvalid => processing_system7_0_DMA0_ACK_TVALID,
      DMA_TX_REQ_tlast => audio_DMA_TX_REQ_TLAST,
      DMA_TX_REQ_tready => audio_DMA_TX_REQ_TREADY,
      DMA_TX_REQ_tuser(1 downto 0) => audio_DMA_TX_REQ_TUSER(1 downto 0),
      DMA_TX_REQ_tvalid => audio_DMA_TX_REQ_TVALID,
      S00_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_axi_periph_M02_AXI_ARPROT(2 downto 0),
      S00_AXI_arready(0) => processing_system7_0_axi_periph_M02_AXI_ARREADY(0),
      S00_AXI_arvalid(0) => processing_system7_0_axi_periph_M02_AXI_ARVALID(0),
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_axi_periph_M02_AXI_AWPROT(2 downto 0),
      S00_AXI_awready(0) => processing_system7_0_axi_periph_M02_AXI_AWREADY(0),
      S00_AXI_awvalid(0) => processing_system7_0_axi_periph_M02_AXI_AWVALID(0),
      S00_AXI_bready(0) => processing_system7_0_axi_periph_M02_AXI_BREADY(0),
      S00_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => processing_system7_0_axi_periph_M02_AXI_BVALID(0),
      S00_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      S00_AXI_rready(0) => processing_system7_0_axi_periph_M02_AXI_RREADY(0),
      S00_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => processing_system7_0_axi_periph_M02_AXI_RVALID(0),
      S00_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      S00_AXI_wready(0) => processing_system7_0_axi_periph_M02_AXI_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => processing_system7_0_axi_periph_M02_AXI_WVALID(0),
      Vp_Vn_v_n => Vp_Vn_v_n_0_1,
      Vp_Vn_v_p => Vp_Vn_v_p_0_1,
      audio_clk => clk_wiz_0_clk_12MHz,
      axi_aclk => processing_system7_0_FCLK_CLK0,
      axi_resetn(0) => rst_processing_system7_0_50M_peripheral_aresetn(0),
      pwm_l_out => audio_pwm_l_out,
      pwm_r_out => audio_pwm_r_out
    );
axi_gpio_0: component zsys_axi_gpio_0_0
     port map (
      gpio_io_i(15 downto 0) => axi_gpio_0_GPIO_TRI_I(15 downto 0),
      gpio_io_o(15 downto 0) => axi_gpio_0_GPIO_TRI_O(15 downto 0),
      gpio_io_t(15 downto 0) => axi_gpio_0_GPIO_TRI_T(15 downto 0),
      ip2intc_irpt => axi_gpio_0_ip2intc_irpt,
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => processing_system7_0_axi_periph_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_processing_system7_0_50M_peripheral_aresetn(0),
      s_axi_arready => processing_system7_0_axi_periph_M01_AXI_ARREADY,
      s_axi_arvalid => processing_system7_0_axi_periph_M01_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => processing_system7_0_axi_periph_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => processing_system7_0_axi_periph_M01_AXI_AWREADY,
      s_axi_awvalid => processing_system7_0_axi_periph_M01_AXI_AWVALID(0),
      s_axi_bready => processing_system7_0_axi_periph_M01_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => processing_system7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => processing_system7_0_axi_periph_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => processing_system7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => processing_system7_0_axi_periph_M01_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => processing_system7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => processing_system7_0_axi_periph_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => processing_system7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => processing_system7_0_axi_periph_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => processing_system7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => processing_system7_0_axi_periph_M01_AXI_WVALID(0)
    );
axi_gpio_LED: component zsys_axi_gpio_1_0
     port map (
      gpio_io_o(3 downto 0) => axi_gpio_1_GPIO_TRI_O(3 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => processing_system7_0_axi_periph_M03_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_processing_system7_0_50M_peripheral_aresetn(0),
      s_axi_arready => processing_system7_0_axi_periph_M03_AXI_ARREADY,
      s_axi_arvalid => processing_system7_0_axi_periph_M03_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => processing_system7_0_axi_periph_M03_AXI_AWADDR(8 downto 0),
      s_axi_awready => processing_system7_0_axi_periph_M03_AXI_AWREADY,
      s_axi_awvalid => processing_system7_0_axi_periph_M03_AXI_AWVALID(0),
      s_axi_bready => processing_system7_0_axi_periph_M03_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => processing_system7_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => processing_system7_0_axi_periph_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => processing_system7_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => processing_system7_0_axi_periph_M03_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => processing_system7_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => processing_system7_0_axi_periph_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => processing_system7_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => processing_system7_0_axi_periph_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => processing_system7_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => processing_system7_0_axi_periph_M03_AXI_WVALID(0)
    );
clk_wiz_0: component zsys_clk_wiz_0_0
     port map (
      clk_100MHz => processing_system7_0_FCLK_CLK0,
      clk_12MHz => clk_wiz_0_clk_12MHz,
      clk_200MHz => clk_wiz_0_clk_200MHz,
      clk_in1 => processing_system7_0_FCLK_CLK1
    );
processing_system7_0: component zsys_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      DMA0_ACLK => processing_system7_0_FCLK_CLK0,
      DMA0_DAREADY => processing_system7_0_DMA0_ACK_TREADY,
      DMA0_DATYPE(1 downto 0) => processing_system7_0_DMA0_ACK_TUSER(1 downto 0),
      DMA0_DAVALID => processing_system7_0_DMA0_ACK_TVALID,
      DMA0_DRLAST => audio_DMA_TX_REQ_TLAST,
      DMA0_DRREADY => audio_DMA_TX_REQ_TREADY,
      DMA0_DRTYPE(1 downto 0) => audio_DMA_TX_REQ_TUSER(1 downto 0),
      DMA0_DRVALID => audio_DMA_TX_REQ_TVALID,
      DMA1_ACLK => processing_system7_0_FCLK_CLK0,
      DMA1_DAREADY => processing_system7_0_DMA1_ACK_TREADY,
      DMA1_DATYPE(1 downto 0) => processing_system7_0_DMA1_ACK_TUSER(1 downto 0),
      DMA1_DAVALID => processing_system7_0_DMA1_ACK_TVALID,
      DMA1_DRLAST => audio_DMA_RX_REQ_TLAST,
      DMA1_DRREADY => audio_DMA_RX_REQ_TREADY,
      DMA1_DRTYPE(1 downto 0) => audio_DMA_RX_REQ_TUSER(1 downto 0),
      DMA1_DRVALID => audio_DMA_RX_REQ_TVALID,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK1,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      GPIO_I(31 downto 0) => B"00000000000000000000000000000000",
      GPIO_O(31 downto 0) => NLW_processing_system7_0_GPIO_O_UNCONNECTED(31 downto 0),
      GPIO_T(31 downto 0) => NLW_processing_system7_0_GPIO_T_UNCONNECTED(31 downto 0),
      I2C0_SCL_I => processing_system7_0_IIC_0_SCL_I,
      I2C0_SCL_O => processing_system7_0_IIC_0_SCL_O,
      I2C0_SCL_T => processing_system7_0_IIC_0_SCL_T,
      I2C0_SDA_I => processing_system7_0_IIC_0_SDA_I,
      I2C0_SDA_O => processing_system7_0_IIC_0_SDA_O,
      I2C0_SDA_T => processing_system7_0_IIC_0_SDA_T,
      I2C1_SCL_I => processing_system7_0_IIC_1_SCL_I,
      I2C1_SCL_O => processing_system7_0_IIC_1_SCL_O,
      I2C1_SCL_T => processing_system7_0_IIC_1_SCL_T,
      I2C1_SDA_I => processing_system7_0_IIC_1_SDA_I,
      I2C1_SDA_O => processing_system7_0_IIC_1_SDA_O,
      I2C1_SDA_T => processing_system7_0_IIC_1_SDA_T,
      IRQ_F2P(1 downto 0) => xlconcat_0_dout(1 downto 0),
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      SPI0_MISO_I => SPI0_MISO_I_0_1,
      SPI0_MISO_O => NLW_processing_system7_0_SPI0_MISO_O_UNCONNECTED,
      SPI0_MISO_T => NLW_processing_system7_0_SPI0_MISO_T_UNCONNECTED,
      SPI0_MOSI_I => '0',
      SPI0_MOSI_O => processing_system7_0_SPI0_MOSI_O,
      SPI0_MOSI_T => NLW_processing_system7_0_SPI0_MOSI_T_UNCONNECTED,
      SPI0_SCLK_I => '0',
      SPI0_SCLK_O => processing_system7_0_SPI0_SCLK_O,
      SPI0_SCLK_T => NLW_processing_system7_0_SPI0_SCLK_T_UNCONNECTED,
      SPI0_SS1_O => processing_system7_0_SPI0_SS1_O,
      SPI0_SS2_O => NLW_processing_system7_0_SPI0_SS2_O_UNCONNECTED,
      SPI0_SS_I => xlconstant_0_dout(0),
      SPI0_SS_O => processing_system7_0_SPI0_SS_O,
      SPI0_SS_T => NLW_processing_system7_0_SPI0_SS_T_UNCONNECTED,
      S_AXI_HP0_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_HP0_ARADDR(31 downto 0) => video_out_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => video_out_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => video_out_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP0_ARID(5 downto 0) => B"000000",
      S_AXI_HP0_ARLEN(3 downto 0) => video_out_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => video_out_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => video_out_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => video_out_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => video_out_M00_AXI_ARREADY,
      S_AXI_HP0_ARSIZE(2 downto 0) => video_out_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP0_ARVALID => video_out_M00_AXI_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI_HP0_AWBURST(1 downto 0) => B"01",
      S_AXI_HP0_AWCACHE(3 downto 0) => B"0011",
      S_AXI_HP0_AWID(5 downto 0) => B"000000",
      S_AXI_HP0_AWLEN(3 downto 0) => B"0000",
      S_AXI_HP0_AWLOCK(1 downto 0) => B"00",
      S_AXI_HP0_AWPROT(2 downto 0) => B"000",
      S_AXI_HP0_AWQOS(3 downto 0) => B"0000",
      S_AXI_HP0_AWREADY => NLW_processing_system7_0_S_AXI_HP0_AWREADY_UNCONNECTED,
      S_AXI_HP0_AWSIZE(2 downto 0) => B"010",
      S_AXI_HP0_AWVALID => '0',
      S_AXI_HP0_BID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_BREADY => '0',
      S_AXI_HP0_BRESP(1 downto 0) => NLW_processing_system7_0_S_AXI_HP0_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_HP0_BVALID => NLW_processing_system7_0_S_AXI_HP0_BVALID_UNCONNECTED,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(31 downto 0) => video_out_M00_AXI_RDATA(31 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_RLAST => video_out_M00_AXI_RLAST,
      S_AXI_HP0_RREADY => video_out_M00_AXI_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => video_out_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP0_RVALID => video_out_M00_AXI_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI_HP0_WID(5 downto 0) => B"000000",
      S_AXI_HP0_WLAST => '0',
      S_AXI_HP0_WREADY => NLW_processing_system7_0_S_AXI_HP0_WREADY_UNCONNECTED,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(3 downto 0) => B"1111",
      S_AXI_HP0_WVALID => '0',
      UART0_RX => '1',
      UART0_TX => NLW_processing_system7_0_UART0_TX_UNCONNECTED
    );
processing_system7_0_axi_periph: entity work.zsys_processing_system7_0_axi_periph_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => rst_processing_system7_0_50M_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => rst_processing_system7_0_50M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready(0) => processing_system7_0_axi_periph_M00_AXI_ARREADY(0),
      M00_AXI_arvalid(0) => processing_system7_0_axi_periph_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready(0) => processing_system7_0_axi_periph_M00_AXI_AWREADY(0),
      M00_AXI_awvalid(0) => processing_system7_0_axi_periph_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => processing_system7_0_axi_periph_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => processing_system7_0_axi_periph_M00_AXI_BVALID(0),
      M00_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => processing_system7_0_axi_periph_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => processing_system7_0_axi_periph_M00_AXI_RVALID(0),
      M00_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => processing_system7_0_axi_periph_M00_AXI_WREADY(0),
      M00_AXI_wvalid(0) => processing_system7_0_axi_periph_M00_AXI_WVALID(0),
      M01_ACLK => processing_system7_0_FCLK_CLK0,
      M01_ARESETN => rst_processing_system7_0_50M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready(0) => processing_system7_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid(0) => processing_system7_0_axi_periph_M01_AXI_ARVALID(0),
      M01_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready(0) => processing_system7_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid(0) => processing_system7_0_axi_periph_M01_AXI_AWVALID(0),
      M01_AXI_bready(0) => processing_system7_0_axi_periph_M01_AXI_BREADY(0),
      M01_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => processing_system7_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready(0) => processing_system7_0_axi_periph_M01_AXI_RREADY(0),
      M01_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => processing_system7_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready(0) => processing_system7_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => processing_system7_0_axi_periph_M01_AXI_WVALID(0),
      M02_ACLK => processing_system7_0_FCLK_CLK0,
      M02_ARESETN => rst_processing_system7_0_50M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arprot(2 downto 0) => processing_system7_0_axi_periph_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arready(0) => processing_system7_0_axi_periph_M02_AXI_ARREADY(0),
      M02_AXI_arvalid(0) => processing_system7_0_axi_periph_M02_AXI_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awprot(2 downto 0) => processing_system7_0_axi_periph_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awready(0) => processing_system7_0_axi_periph_M02_AXI_AWREADY(0),
      M02_AXI_awvalid(0) => processing_system7_0_axi_periph_M02_AXI_AWVALID(0),
      M02_AXI_bready(0) => processing_system7_0_axi_periph_M02_AXI_BREADY(0),
      M02_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => processing_system7_0_axi_periph_M02_AXI_BVALID(0),
      M02_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready(0) => processing_system7_0_axi_periph_M02_AXI_RREADY(0),
      M02_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => processing_system7_0_axi_periph_M02_AXI_RVALID(0),
      M02_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready(0) => processing_system7_0_axi_periph_M02_AXI_WREADY(0),
      M02_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => processing_system7_0_axi_periph_M02_AXI_WVALID(0),
      M03_ACLK => processing_system7_0_FCLK_CLK0,
      M03_ARESETN => rst_processing_system7_0_50M_peripheral_aresetn(0),
      M03_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arready(0) => processing_system7_0_axi_periph_M03_AXI_ARREADY,
      M03_AXI_arvalid(0) => processing_system7_0_axi_periph_M03_AXI_ARVALID(0),
      M03_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awready(0) => processing_system7_0_axi_periph_M03_AXI_AWREADY,
      M03_AXI_awvalid(0) => processing_system7_0_axi_periph_M03_AXI_AWVALID(0),
      M03_AXI_bready(0) => processing_system7_0_axi_periph_M03_AXI_BREADY(0),
      M03_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid(0) => processing_system7_0_axi_periph_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready(0) => processing_system7_0_axi_periph_M03_AXI_RREADY(0),
      M03_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid(0) => processing_system7_0_axi_periph_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready(0) => processing_system7_0_axi_periph_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid(0) => processing_system7_0_axi_periph_M03_AXI_WVALID(0),
      M04_ACLK => processing_system7_0_FCLK_CLK0,
      M04_ARESETN => rst_processing_system7_0_50M_peripheral_aresetn(0),
      M04_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M04_AXI_ARADDR(31 downto 0),
      M04_AXI_arready(0) => processing_system7_0_axi_periph_M04_AXI_ARREADY(0),
      M04_AXI_arvalid(0) => processing_system7_0_axi_periph_M04_AXI_ARVALID(0),
      M04_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M04_AXI_AWADDR(31 downto 0),
      M04_AXI_awready(0) => processing_system7_0_axi_periph_M04_AXI_AWREADY(0),
      M04_AXI_awvalid(0) => processing_system7_0_axi_periph_M04_AXI_AWVALID(0),
      M04_AXI_bready(0) => processing_system7_0_axi_periph_M04_AXI_BREADY(0),
      M04_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid(0) => processing_system7_0_axi_periph_M04_AXI_BVALID(0),
      M04_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready(0) => processing_system7_0_axi_periph_M04_AXI_RREADY(0),
      M04_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid(0) => processing_system7_0_axi_periph_M04_AXI_RVALID(0),
      M04_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready(0) => processing_system7_0_axi_periph_M04_AXI_WREADY(0),
      M04_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid(0) => processing_system7_0_axi_periph_M04_AXI_WVALID(0),
      M05_ACLK => processing_system7_0_FCLK_CLK0,
      M05_ARESETN => rst_processing_system7_0_50M_peripheral_aresetn(0),
      M05_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M05_AXI_ARADDR(31 downto 0),
      M05_AXI_arready(0) => processing_system7_0_axi_periph_M05_AXI_ARREADY(0),
      M05_AXI_arvalid(0) => processing_system7_0_axi_periph_M05_AXI_ARVALID(0),
      M05_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M05_AXI_AWADDR(31 downto 0),
      M05_AXI_awready(0) => processing_system7_0_axi_periph_M05_AXI_AWREADY(0),
      M05_AXI_awvalid(0) => processing_system7_0_axi_periph_M05_AXI_AWVALID(0),
      M05_AXI_bready(0) => processing_system7_0_axi_periph_M05_AXI_BREADY(0),
      M05_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid(0) => processing_system7_0_axi_periph_M05_AXI_BVALID(0),
      M05_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready(0) => processing_system7_0_axi_periph_M05_AXI_RREADY(0),
      M05_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid(0) => processing_system7_0_axi_periph_M05_AXI_RVALID(0),
      M05_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready(0) => processing_system7_0_axi_periph_M05_AXI_WREADY(0),
      M05_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid(0) => processing_system7_0_axi_periph_M05_AXI_WVALID(0),
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => rst_processing_system7_0_50M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID
    );
resets: entity work.resets_imp_BXH7YA
     port map (
      axi_clk => processing_system7_0_FCLK_CLK0,
      axi_int_aresetn(0) => rst_processing_system7_0_50M_interconnect_aresetn(0),
      axi_per_aresetn(0) => rst_processing_system7_0_50M_peripheral_aresetn(0),
      ext_reset_in => processing_system7_0_FCLK_RESET0_N
    );
video_out: entity work.video_out_imp_VOY96P
     port map (
      CLKWIZ_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M05_AXI_ARADDR(31 downto 0),
      CLKWIZ_AXI_arready(0) => processing_system7_0_axi_periph_M05_AXI_ARREADY(0),
      CLKWIZ_AXI_arvalid(0) => processing_system7_0_axi_periph_M05_AXI_ARVALID(0),
      CLKWIZ_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M05_AXI_AWADDR(31 downto 0),
      CLKWIZ_AXI_awready(0) => processing_system7_0_axi_periph_M05_AXI_AWREADY(0),
      CLKWIZ_AXI_awvalid(0) => processing_system7_0_axi_periph_M05_AXI_AWVALID(0),
      CLKWIZ_AXI_bready(0) => processing_system7_0_axi_periph_M05_AXI_BREADY(0),
      CLKWIZ_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      CLKWIZ_AXI_bvalid(0) => processing_system7_0_axi_periph_M05_AXI_BVALID(0),
      CLKWIZ_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      CLKWIZ_AXI_rready(0) => processing_system7_0_axi_periph_M05_AXI_RREADY(0),
      CLKWIZ_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      CLKWIZ_AXI_rvalid(0) => processing_system7_0_axi_periph_M05_AXI_RVALID(0),
      CLKWIZ_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      CLKWIZ_AXI_wready(0) => processing_system7_0_axi_periph_M05_AXI_WREADY(0),
      CLKWIZ_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      CLKWIZ_AXI_wvalid(0) => processing_system7_0_axi_periph_M05_AXI_WVALID(0),
      VDMA_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      VDMA_AXI_arready(0) => processing_system7_0_axi_periph_M00_AXI_ARREADY(0),
      VDMA_AXI_arvalid(0) => processing_system7_0_axi_periph_M00_AXI_ARVALID(0),
      VDMA_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      VDMA_AXI_awready(0) => processing_system7_0_axi_periph_M00_AXI_AWREADY(0),
      VDMA_AXI_awvalid(0) => processing_system7_0_axi_periph_M00_AXI_AWVALID(0),
      VDMA_AXI_bready(0) => processing_system7_0_axi_periph_M00_AXI_BREADY(0),
      VDMA_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      VDMA_AXI_bvalid(0) => processing_system7_0_axi_periph_M00_AXI_BVALID(0),
      VDMA_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      VDMA_AXI_rready(0) => processing_system7_0_axi_periph_M00_AXI_RREADY(0),
      VDMA_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      VDMA_AXI_rvalid(0) => processing_system7_0_axi_periph_M00_AXI_RVALID(0),
      VDMA_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      VDMA_AXI_wready(0) => processing_system7_0_axi_periph_M00_AXI_WREADY(0),
      VDMA_AXI_wvalid(0) => processing_system7_0_axi_periph_M00_AXI_WVALID(0),
      VIDEO_OUT_AXI_araddr(31 downto 0) => video_out_M00_AXI_ARADDR(31 downto 0),
      VIDEO_OUT_AXI_arburst(1 downto 0) => video_out_M00_AXI_ARBURST(1 downto 0),
      VIDEO_OUT_AXI_arcache(3 downto 0) => video_out_M00_AXI_ARCACHE(3 downto 0),
      VIDEO_OUT_AXI_arlen(3 downto 0) => video_out_M00_AXI_ARLEN(3 downto 0),
      VIDEO_OUT_AXI_arlock(1 downto 0) => video_out_M00_AXI_ARLOCK(1 downto 0),
      VIDEO_OUT_AXI_arprot(2 downto 0) => video_out_M00_AXI_ARPROT(2 downto 0),
      VIDEO_OUT_AXI_arqos(3 downto 0) => video_out_M00_AXI_ARQOS(3 downto 0),
      VIDEO_OUT_AXI_arready => video_out_M00_AXI_ARREADY,
      VIDEO_OUT_AXI_arsize(2 downto 0) => video_out_M00_AXI_ARSIZE(2 downto 0),
      VIDEO_OUT_AXI_arvalid => video_out_M00_AXI_ARVALID,
      VIDEO_OUT_AXI_rdata(31 downto 0) => video_out_M00_AXI_RDATA(31 downto 0),
      VIDEO_OUT_AXI_rlast => video_out_M00_AXI_RLAST,
      VIDEO_OUT_AXI_rready => video_out_M00_AXI_RREADY,
      VIDEO_OUT_AXI_rresp(1 downto 0) => video_out_M00_AXI_RRESP(1 downto 0),
      VIDEO_OUT_AXI_rvalid => video_out_M00_AXI_RVALID,
      VTC_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M04_AXI_ARADDR(31 downto 0),
      VTC_AXI_arready(0) => processing_system7_0_axi_periph_M04_AXI_ARREADY(0),
      VTC_AXI_arvalid(0) => processing_system7_0_axi_periph_M04_AXI_ARVALID(0),
      VTC_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M04_AXI_AWADDR(31 downto 0),
      VTC_AXI_awready(0) => processing_system7_0_axi_periph_M04_AXI_AWREADY(0),
      VTC_AXI_awvalid(0) => processing_system7_0_axi_periph_M04_AXI_AWVALID(0),
      VTC_AXI_bready(0) => processing_system7_0_axi_periph_M04_AXI_BREADY(0),
      VTC_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      VTC_AXI_bvalid(0) => processing_system7_0_axi_periph_M04_AXI_BVALID(0),
      VTC_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      VTC_AXI_rready(0) => processing_system7_0_axi_periph_M04_AXI_RREADY(0),
      VTC_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      VTC_AXI_rvalid(0) => processing_system7_0_axi_periph_M04_AXI_RVALID(0),
      VTC_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      VTC_AXI_wready(0) => processing_system7_0_axi_periph_M04_AXI_WREADY(0),
      VTC_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      VTC_AXI_wvalid(0) => processing_system7_0_axi_periph_M04_AXI_WVALID(0),
      axi_aclk => processing_system7_0_FCLK_CLK0,
      axi_int_aresetn(0) => rst_processing_system7_0_50M_interconnect_aresetn(0),
      axi_per_aresetn(0) => rst_processing_system7_0_50M_peripheral_aresetn(0),
      hdmi_clk_n => video_out_hdmi_clk_n,
      hdmi_clk_p => video_out_hdmi_clk_p,
      hdmi_data_n(2 downto 0) => video_out_hdmi_data_n(2 downto 0),
      hdmi_data_p(2 downto 0) => video_out_hdmi_data_p(2 downto 0),
      ref_clk => clk_wiz_0_clk_200MHz,
      tx_dma_int => video_out_mm2s_introut
    );
xlconcat_0: component zsys_xlconcat_0_0
     port map (
      In0(0) => video_out_mm2s_introut,
      In1(0) => axi_gpio_0_ip2intc_irpt,
      dout(1 downto 0) => xlconcat_0_dout(1 downto 0)
    );
xlconstant_0: component zsys_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
end STRUCTURE;
