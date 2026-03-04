//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Jul 31 19:14:12 2025
//Host        : HP440 running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    GPIO16_tri_io,
    HDMI_DDC_scl_io,
    HDMI_DDC_sda_io,
    MClk18,
    SPI0_MISO_I_0,
    SPI0_MOSI_O_0,
    SPI0_SCLK_O_0,
    SPI0_SS_O_0,
    TMDS_clk_n,
    TMDS_clk_p,
    TMDS_data_n,
    TMDS_data_p,
    leds,
    lrclk_out_0,
    lrclk_out_1,
    pwm_l_out_0,
    pwm_r_out_0,
    sclk_out_0,
    sclk_out_1,
    sdata_0_in_0,
    sdata_0_out_0,
    uart_midi_rxd,
    uart_midi_txd);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  inout [15:0]GPIO16_tri_io;
  inout HDMI_DDC_scl_io;
  inout HDMI_DDC_sda_io;
  output MClk18;
  input SPI0_MISO_I_0;
  output SPI0_MOSI_O_0;
  output SPI0_SCLK_O_0;
  output SPI0_SS_O_0;
  output TMDS_clk_n;
  output TMDS_clk_p;
  output [2:0]TMDS_data_n;
  output [2:0]TMDS_data_p;
  output [3:0]leds;
  output lrclk_out_0;
  output lrclk_out_1;
  output pwm_l_out_0;
  output pwm_r_out_0;
  output sclk_out_0;
  output sclk_out_1;
  input sdata_0_in_0;
  output sdata_0_out_0;
  input uart_midi_rxd;
  output uart_midi_txd;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [0:0]GPIO16_tri_i_0;
  wire [1:1]GPIO16_tri_i_1;
  wire [10:10]GPIO16_tri_i_10;
  wire [11:11]GPIO16_tri_i_11;
  wire [12:12]GPIO16_tri_i_12;
  wire [13:13]GPIO16_tri_i_13;
  wire [14:14]GPIO16_tri_i_14;
  wire [15:15]GPIO16_tri_i_15;
  wire [2:2]GPIO16_tri_i_2;
  wire [3:3]GPIO16_tri_i_3;
  wire [4:4]GPIO16_tri_i_4;
  wire [5:5]GPIO16_tri_i_5;
  wire [6:6]GPIO16_tri_i_6;
  wire [7:7]GPIO16_tri_i_7;
  wire [8:8]GPIO16_tri_i_8;
  wire [9:9]GPIO16_tri_i_9;
  wire [0:0]GPIO16_tri_io_0;
  wire [1:1]GPIO16_tri_io_1;
  wire [10:10]GPIO16_tri_io_10;
  wire [11:11]GPIO16_tri_io_11;
  wire [12:12]GPIO16_tri_io_12;
  wire [13:13]GPIO16_tri_io_13;
  wire [14:14]GPIO16_tri_io_14;
  wire [15:15]GPIO16_tri_io_15;
  wire [2:2]GPIO16_tri_io_2;
  wire [3:3]GPIO16_tri_io_3;
  wire [4:4]GPIO16_tri_io_4;
  wire [5:5]GPIO16_tri_io_5;
  wire [6:6]GPIO16_tri_io_6;
  wire [7:7]GPIO16_tri_io_7;
  wire [8:8]GPIO16_tri_io_8;
  wire [9:9]GPIO16_tri_io_9;
  wire [0:0]GPIO16_tri_o_0;
  wire [1:1]GPIO16_tri_o_1;
  wire [10:10]GPIO16_tri_o_10;
  wire [11:11]GPIO16_tri_o_11;
  wire [12:12]GPIO16_tri_o_12;
  wire [13:13]GPIO16_tri_o_13;
  wire [14:14]GPIO16_tri_o_14;
  wire [15:15]GPIO16_tri_o_15;
  wire [2:2]GPIO16_tri_o_2;
  wire [3:3]GPIO16_tri_o_3;
  wire [4:4]GPIO16_tri_o_4;
  wire [5:5]GPIO16_tri_o_5;
  wire [6:6]GPIO16_tri_o_6;
  wire [7:7]GPIO16_tri_o_7;
  wire [8:8]GPIO16_tri_o_8;
  wire [9:9]GPIO16_tri_o_9;
  wire [0:0]GPIO16_tri_t_0;
  wire [1:1]GPIO16_tri_t_1;
  wire [10:10]GPIO16_tri_t_10;
  wire [11:11]GPIO16_tri_t_11;
  wire [12:12]GPIO16_tri_t_12;
  wire [13:13]GPIO16_tri_t_13;
  wire [14:14]GPIO16_tri_t_14;
  wire [15:15]GPIO16_tri_t_15;
  wire [2:2]GPIO16_tri_t_2;
  wire [3:3]GPIO16_tri_t_3;
  wire [4:4]GPIO16_tri_t_4;
  wire [5:5]GPIO16_tri_t_5;
  wire [6:6]GPIO16_tri_t_6;
  wire [7:7]GPIO16_tri_t_7;
  wire [8:8]GPIO16_tri_t_8;
  wire [9:9]GPIO16_tri_t_9;
  wire HDMI_DDC_scl_i;
  wire HDMI_DDC_scl_io;
  wire HDMI_DDC_scl_o;
  wire HDMI_DDC_scl_t;
  wire HDMI_DDC_sda_i;
  wire HDMI_DDC_sda_io;
  wire HDMI_DDC_sda_o;
  wire HDMI_DDC_sda_t;
  wire MClk18;
  wire SPI0_MISO_I_0;
  wire SPI0_MOSI_O_0;
  wire SPI0_SCLK_O_0;
  wire SPI0_SS_O_0;
  wire TMDS_clk_n;
  wire TMDS_clk_p;
  wire [2:0]TMDS_data_n;
  wire [2:0]TMDS_data_p;
  wire [3:0]leds;
  wire lrclk_out_0;
  wire lrclk_out_1;
  wire pwm_l_out_0;
  wire pwm_r_out_0;
  wire sclk_out_0;
  wire sclk_out_1;
  wire sdata_0_in_0;
  wire sdata_0_out_0;
  wire uart_midi_rxd;
  wire uart_midi_txd;

  IOBUF GPIO16_tri_iobuf_0
       (.I(GPIO16_tri_o_0),
        .IO(GPIO16_tri_io[0]),
        .O(GPIO16_tri_i_0),
        .T(GPIO16_tri_t_0));
  IOBUF GPIO16_tri_iobuf_1
       (.I(GPIO16_tri_o_1),
        .IO(GPIO16_tri_io[1]),
        .O(GPIO16_tri_i_1),
        .T(GPIO16_tri_t_1));
  IOBUF GPIO16_tri_iobuf_10
       (.I(GPIO16_tri_o_10),
        .IO(GPIO16_tri_io[10]),
        .O(GPIO16_tri_i_10),
        .T(GPIO16_tri_t_10));
  IOBUF GPIO16_tri_iobuf_11
       (.I(GPIO16_tri_o_11),
        .IO(GPIO16_tri_io[11]),
        .O(GPIO16_tri_i_11),
        .T(GPIO16_tri_t_11));
  IOBUF GPIO16_tri_iobuf_12
       (.I(GPIO16_tri_o_12),
        .IO(GPIO16_tri_io[12]),
        .O(GPIO16_tri_i_12),
        .T(GPIO16_tri_t_12));
  IOBUF GPIO16_tri_iobuf_13
       (.I(GPIO16_tri_o_13),
        .IO(GPIO16_tri_io[13]),
        .O(GPIO16_tri_i_13),
        .T(GPIO16_tri_t_13));
  IOBUF GPIO16_tri_iobuf_14
       (.I(GPIO16_tri_o_14),
        .IO(GPIO16_tri_io[14]),
        .O(GPIO16_tri_i_14),
        .T(GPIO16_tri_t_14));
  IOBUF GPIO16_tri_iobuf_15
       (.I(GPIO16_tri_o_15),
        .IO(GPIO16_tri_io[15]),
        .O(GPIO16_tri_i_15),
        .T(GPIO16_tri_t_15));
  IOBUF GPIO16_tri_iobuf_2
       (.I(GPIO16_tri_o_2),
        .IO(GPIO16_tri_io[2]),
        .O(GPIO16_tri_i_2),
        .T(GPIO16_tri_t_2));
  IOBUF GPIO16_tri_iobuf_3
       (.I(GPIO16_tri_o_3),
        .IO(GPIO16_tri_io[3]),
        .O(GPIO16_tri_i_3),
        .T(GPIO16_tri_t_3));
  IOBUF GPIO16_tri_iobuf_4
       (.I(GPIO16_tri_o_4),
        .IO(GPIO16_tri_io[4]),
        .O(GPIO16_tri_i_4),
        .T(GPIO16_tri_t_4));
  IOBUF GPIO16_tri_iobuf_5
       (.I(GPIO16_tri_o_5),
        .IO(GPIO16_tri_io[5]),
        .O(GPIO16_tri_i_5),
        .T(GPIO16_tri_t_5));
  IOBUF GPIO16_tri_iobuf_6
       (.I(GPIO16_tri_o_6),
        .IO(GPIO16_tri_io[6]),
        .O(GPIO16_tri_i_6),
        .T(GPIO16_tri_t_6));
  IOBUF GPIO16_tri_iobuf_7
       (.I(GPIO16_tri_o_7),
        .IO(GPIO16_tri_io[7]),
        .O(GPIO16_tri_i_7),
        .T(GPIO16_tri_t_7));
  IOBUF GPIO16_tri_iobuf_8
       (.I(GPIO16_tri_o_8),
        .IO(GPIO16_tri_io[8]),
        .O(GPIO16_tri_i_8),
        .T(GPIO16_tri_t_8));
  IOBUF GPIO16_tri_iobuf_9
       (.I(GPIO16_tri_o_9),
        .IO(GPIO16_tri_io[9]),
        .O(GPIO16_tri_i_9),
        .T(GPIO16_tri_t_9));
  IOBUF HDMI_DDC_scl_iobuf
       (.I(HDMI_DDC_scl_o),
        .IO(HDMI_DDC_scl_io),
        .O(HDMI_DDC_scl_i),
        .T(HDMI_DDC_scl_t));
  IOBUF HDMI_DDC_sda_iobuf
       (.I(HDMI_DDC_sda_o),
        .IO(HDMI_DDC_sda_io),
        .O(HDMI_DDC_sda_i),
        .T(HDMI_DDC_sda_t));
  system system_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .GPIO16_tri_i({GPIO16_tri_i_15,GPIO16_tri_i_14,GPIO16_tri_i_13,GPIO16_tri_i_12,GPIO16_tri_i_11,GPIO16_tri_i_10,GPIO16_tri_i_9,GPIO16_tri_i_8,GPIO16_tri_i_7,GPIO16_tri_i_6,GPIO16_tri_i_5,GPIO16_tri_i_4,GPIO16_tri_i_3,GPIO16_tri_i_2,GPIO16_tri_i_1,GPIO16_tri_i_0}),
        .GPIO16_tri_o({GPIO16_tri_o_15,GPIO16_tri_o_14,GPIO16_tri_o_13,GPIO16_tri_o_12,GPIO16_tri_o_11,GPIO16_tri_o_10,GPIO16_tri_o_9,GPIO16_tri_o_8,GPIO16_tri_o_7,GPIO16_tri_o_6,GPIO16_tri_o_5,GPIO16_tri_o_4,GPIO16_tri_o_3,GPIO16_tri_o_2,GPIO16_tri_o_1,GPIO16_tri_o_0}),
        .GPIO16_tri_t({GPIO16_tri_t_15,GPIO16_tri_t_14,GPIO16_tri_t_13,GPIO16_tri_t_12,GPIO16_tri_t_11,GPIO16_tri_t_10,GPIO16_tri_t_9,GPIO16_tri_t_8,GPIO16_tri_t_7,GPIO16_tri_t_6,GPIO16_tri_t_5,GPIO16_tri_t_4,GPIO16_tri_t_3,GPIO16_tri_t_2,GPIO16_tri_t_1,GPIO16_tri_t_0}),
        .HDMI_DDC_scl_i(HDMI_DDC_scl_i),
        .HDMI_DDC_scl_o(HDMI_DDC_scl_o),
        .HDMI_DDC_scl_t(HDMI_DDC_scl_t),
        .HDMI_DDC_sda_i(HDMI_DDC_sda_i),
        .HDMI_DDC_sda_o(HDMI_DDC_sda_o),
        .HDMI_DDC_sda_t(HDMI_DDC_sda_t),
        .MClk18(MClk18),
        .SPI0_MISO_I_0(SPI0_MISO_I_0),
        .SPI0_MOSI_O_0(SPI0_MOSI_O_0),
        .SPI0_SCLK_O_0(SPI0_SCLK_O_0),
        .SPI0_SS_O_0(SPI0_SS_O_0),
        .TMDS_clk_n(TMDS_clk_n),
        .TMDS_clk_p(TMDS_clk_p),
        .TMDS_data_n(TMDS_data_n),
        .TMDS_data_p(TMDS_data_p),
        .leds(leds),
        .lrclk_out_0(lrclk_out_0),
        .lrclk_out_1(lrclk_out_1),
        .pwm_l_out_0(pwm_l_out_0),
        .pwm_r_out_0(pwm_r_out_0),
        .sclk_out_0(sclk_out_0),
        .sclk_out_1(sclk_out_1),
        .sdata_0_in_0(sdata_0_in_0),
        .sdata_0_out_0(sdata_0_out_0),
        .uart_midi_rxd(uart_midi_rxd),
        .uart_midi_txd(uart_midi_txd));
endmodule
