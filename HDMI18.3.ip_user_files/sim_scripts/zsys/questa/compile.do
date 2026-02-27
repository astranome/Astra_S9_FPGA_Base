vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_4
vlib questa_lib/msim/processing_system7_vip_v1_0_6
vlib questa_lib/msim/xlconcat_v2_1_1
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/fifo_generator_v13_2_3
vlib questa_lib/msim/lib_fifo_v1_0_12
vlib questa_lib/msim/blk_mem_gen_v8_4_2
vlib questa_lib/msim/lib_bmg_v1_0_11
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_datamover_v5_1_20
vlib questa_lib/msim/axi_vdma_v6_3_6
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/v_tc_v6_1_13
vlib questa_lib/msim/v_vid_in_axi4s_v4_0_9
vlib questa_lib/msim/v_axi4s_vid_out_v4_0_10
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/axi_i2s_adi_v1_00_a
vlib questa_lib/msim/adi_common_v1_00_a
vlib questa_lib/msim/xlconstant_v1_1_5
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_20
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_18
vlib questa_lib/msim/axi_data_fifo_v2_1_17
vlib questa_lib/msim/axi_crossbar_v2_1_19
vlib questa_lib/msim/axi_protocol_converter_v2_1_18

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 questa_lib/msim/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 questa_lib/msim/processing_system7_vip_v1_0_6
vmap xlconcat_v2_1_1 questa_lib/msim/xlconcat_v2_1_1
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_3 questa_lib/msim/fifo_generator_v13_2_3
vmap lib_fifo_v1_0_12 questa_lib/msim/lib_fifo_v1_0_12
vmap blk_mem_gen_v8_4_2 questa_lib/msim/blk_mem_gen_v8_4_2
vmap lib_bmg_v1_0_11 questa_lib/msim/lib_bmg_v1_0_11
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_20 questa_lib/msim/axi_datamover_v5_1_20
vmap axi_vdma_v6_3_6 questa_lib/msim/axi_vdma_v6_3_6
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap v_tc_v6_1_13 questa_lib/msim/v_tc_v6_1_13
vmap v_vid_in_axi4s_v4_0_9 questa_lib/msim/v_vid_in_axi4s_v4_0_9
vmap v_axi4s_vid_out_v4_0_10 questa_lib/msim/v_axi4s_vid_out_v4_0_10
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap axi_i2s_adi_v1_00_a questa_lib/msim/axi_i2s_adi_v1_00_a
vmap adi_common_v1_00_a questa_lib/msim/adi_common_v1_00_a
vmap xlconstant_v1_1_5 questa_lib/msim/xlconstant_v1_1_5
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_20 questa_lib/msim/axi_gpio_v2_0_20
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_18 questa_lib/msim/axi_register_slice_v2_1_18
vmap axi_data_fifo_v2_1_17 questa_lib/msim/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 questa_lib/msim/axi_crossbar_v2_1_19
vmap axi_protocol_converter_v2_1_18 questa_lib/msim/axi_protocol_converter_v2_1_18

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4 -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6 -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/zsys/ip/zsys_processing_system7_0_0/sim/zsys_processing_system7_0_0.v" \

vlog -work xlconcat_v2_1_1 -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/zsys/ip/zsys_xlconcat_0_0/sim/zsys_xlconcat_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/be66/hdl/tmds_encoder.vhd" \
"../../../bd/zsys/ipshared/be66/src/serdes_ddr.vhd" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/be66/hdl/dvi_encoder.vhd" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/be66/hdl/clock_system.vhd" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/be66/hdl/Video_IO_2_HDMI_TMDS_v1_0.vhd" \
"../../../bd/zsys/ip/zsys_Video_IO_2_HDMI_TMDS_0_0/sim/zsys_Video_IO_2_HDMI_TMDS_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_12 -64 -93 \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_2 -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_11 -64 -93 \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/556c/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_20 -64 -93 \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/dfb3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_6 -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_6 -64 -93 \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/zsys/ip/zsys_axi_vdma_0_1/sim/zsys_axi_vdma_0_1.vhd" \
"../../../bd/zsys/ipshared/83c4/src/axis_fb_conv_v1_0.vhd" \
"../../../bd/zsys/ip/zsys_axis_fb_conv_0_0/sim/zsys_axis_fb_conv_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/zsys/ip/zsys_clk_wiz_1_0/zsys_clk_wiz_1_0_mmcm_pll_drp.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/zsys/ip/zsys_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/zsys_clk_wiz_1_0_conv_funs_pkg.vhd" \
"../../../bd/zsys/ip/zsys_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/zsys_clk_wiz_1_0_proc_common_pkg.vhd" \
"../../../bd/zsys/ip/zsys_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/zsys_clk_wiz_1_0_ipif_pkg.vhd" \
"../../../bd/zsys/ip/zsys_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/zsys_clk_wiz_1_0_family_support.vhd" \
"../../../bd/zsys/ip/zsys_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/zsys_clk_wiz_1_0_family.vhd" \
"../../../bd/zsys/ip/zsys_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/zsys_clk_wiz_1_0_soft_reset.vhd" \
"../../../bd/zsys/ip/zsys_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/zsys_clk_wiz_1_0_pselect_f.vhd" \
"../../../bd/zsys/ip/zsys_clk_wiz_1_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/zsys_clk_wiz_1_0_address_decoder.vhd" \
"../../../bd/zsys/ip/zsys_clk_wiz_1_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/zsys_clk_wiz_1_0_slave_attachment.vhd" \
"../../../bd/zsys/ip/zsys_clk_wiz_1_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/zsys_clk_wiz_1_0_axi_lite_ipif.vhd" \
"../../../bd/zsys/ip/zsys_clk_wiz_1_0/zsys_clk_wiz_1_0_clk_wiz_drp.vhd" \
"../../../bd/zsys/ip/zsys_clk_wiz_1_0/zsys_clk_wiz_1_0_axi_clk_config.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/zsys/ip/zsys_clk_wiz_1_0/zsys_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/zsys/ip/zsys_clk_wiz_1_0/zsys_clk_wiz_1_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_1_13 -64 -93 \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/a92c/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_9 -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_10 -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/a87e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/zsys/ip/zsys_v_axi4s_vid_out_0_0/sim/zsys_v_axi4s_vid_out_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/zsys/ip/zsys_v_tc_0_0/sim/zsys_v_tc_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/zsys/ip/zsys_rst_processing_system7_0_50M_0/sim/zsys_rst_processing_system7_0_50M_0.vhd" \
"../../../bd/zsys/ipshared/596e/hdl/axi_i2s_adi_v1_2.vhd" \

vcom -work axi_i2s_adi_v1_00_a -64 -93 \
"../../../bd/zsys/ipshared/596e/hdl/i2s_rx.vhd" \
"../../../bd/zsys/ipshared/596e/hdl/i2s_tx.vhd" \
"../../../bd/zsys/ipshared/596e/hdl/i2s_clkgen.vhd" \
"../../../bd/zsys/ipshared/596e/hdl/fifo_synchronizer.vhd" \
"../../../bd/zsys/ipshared/596e/hdl/i2s_controller.vhd" \

vcom -work adi_common_v1_00_a -64 -93 \
"../../../bd/zsys/ipshared/596e/hdl/adi_common/axi_ctrlif.vhd" \
"../../../bd/zsys/ipshared/596e/hdl/adi_common/axi_streaming_dma_rx_fifo.vhd" \
"../../../bd/zsys/ipshared/596e/hdl/adi_common/pl330_dma_fifo.vhd" \
"../../../bd/zsys/ipshared/596e/hdl/adi_common/axi_streaming_dma_tx_fifo.vhd" \
"../../../bd/zsys/ipshared/596e/hdl/adi_common/dma_fifo.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/zsys/ipshared/596e/hdl/axi_i2s_adi_S_AXI.vhd" \
"../../../bd/zsys/ip/zsys_axi_i2s_adi_0_0/sim/zsys_axi_i2s_adi_0_0.vhd" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/44c1/hdl/axis_to_i2s.vhd" \
"../../../bd/zsys/ip/zsys_axis_to_i2s_0_0/sim/zsys_axis_to_i2s_0_0.vhd" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/206f/hdl/i2s_to_pwm.vhd" \
"../../../bd/zsys/ip/zsys_i2s_to_pwm_0_0/sim/zsys_i2s_to_pwm_0_0.vhd" \
"../../../bd/zsys/ip/zsys_xadc_wiz_0_0/zsys_xadc_wiz_0_0_drp_to_axi_stream.vhd" \
"../../../bd/zsys/ip/zsys_xadc_wiz_0_0/zsys_xadc_wiz_0_0_xadc_core_drp.vhd" \
"../../../bd/zsys/ip/zsys_xadc_wiz_0_0/zsys_xadc_wiz_0_0_axi_xadc.vhd" \
"../../../bd/zsys/ip/zsys_xadc_wiz_0_0/zsys_xadc_wiz_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/zsys/ip/zsys_clk_wiz_0_0/zsys_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/zsys/ip/zsys_clk_wiz_0_0/zsys_clk_wiz_0_0.v" \

vlog -work xlconstant_v1_1_5 -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/zsys/ip/zsys_xlconstant_0_0/sim/zsys_xlconstant_0_0.v" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_20 -64 -93 \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/zsys/ip/zsys_axi_gpio_0_0/sim/zsys_axi_gpio_0_0.vhd" \
"../../../bd/zsys/ip/zsys_axi_gpio_1_0/sim/zsys_axi_gpio_1_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18 -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_17 -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19 -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/zsys/ip/zsys_xbar_0/sim/zsys_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_18 -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/70cf/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/58e2/hdl" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ipshared/85a3" "+incdir+../../../../HDMI18.3.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/zsys/ip/zsys_auto_pc_0/sim/zsys_auto_pc_0.v" \
"../../../bd/zsys/ip/zsys_auto_pc_1/sim/zsys_auto_pc_1.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/zsys/sim/zsys.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

