vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/axi_utils_v2_0_6
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/xbip_bram18k_v3_0_6
vlib activehdl/mult_gen_v12_0_17
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_dsp48_addsub_v3_0_6
vlib activehdl/xbip_dsp48_multadd_v3_0_6
vlib activehdl/dds_compiler_v6_0_21
vlib activehdl/fir_compiler_v7_2_17
vlib activehdl/c_reg_fd_v12_0_6
vlib activehdl/xbip_addsub_v3_0_6
vlib activehdl/c_addsub_v12_0_14
vlib activehdl/fifo_generator_v13_2_6

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xbip_utils_v3_0_10 activehdl/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 activehdl/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 activehdl/xbip_pipe_v3_0_6
vmap xbip_bram18k_v3_0_6 activehdl/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_17 activehdl/mult_gen_v12_0_17
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 activehdl/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 activehdl/xbip_dsp48_multadd_v3_0_6
vmap dds_compiler_v6_0_21 activehdl/dds_compiler_v6_0_21
vmap fir_compiler_v7_2_17 activehdl/fir_compiler_v7_2_17
vmap c_reg_fd_v12_0_6 activehdl/c_reg_fd_v12_0_6
vmap xbip_addsub_v3_0_6 activehdl/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 activehdl/c_addsub_v12_0_14
vmap fifo_generator_v13_2_6 activehdl/fifo_generator_v13_2_6

vlog -work xpm  -sv2k12 "+incdir+../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/CLOCKS_inst_0/ipshared/62b6" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/CLOCKS_inst_0/ipshared/62b6" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/CLOCKS_inst_0/ip/CLOCKS_inst_0_clk_wiz_0_0/CLOCKS_inst_0_clk_wiz_0_0_clk_wiz.v" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/CLOCKS_inst_0/ip/CLOCKS_inst_0_clk_wiz_0_0/CLOCKS_inst_0_clk_wiz_0_0.v" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/CLOCKS_inst_0/ip/CLOCKS_inst_0_clk_wiz_1_0/CLOCKS_inst_0_clk_wiz_1_0_clk_wiz.v" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/CLOCKS_inst_0/ip/CLOCKS_inst_0_clk_wiz_1_0/CLOCKS_inst_0_clk_wiz_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/CLOCKS_inst_0/ip/CLOCKS_inst_0_locked_checker_0_0/sim/CLOCKS_inst_0_locked_checker_0_0.vhd" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/CLOCKS_inst_0/sim/CLOCKS_inst_0.vhd" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_17 -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ipshared/dd36/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work dds_compiler_v6_0_21 -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ipshared/7e37/hdl/dds_compiler_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ip/DDS_MULT_ADDER_inst_0_dds_compiler_0_0/sim/DDS_MULT_ADDER_inst_0_dds_compiler_0_0.vhd" \

vcom -work fir_compiler_v7_2_17 -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ipshared/cf11/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ip/DDS_MULT_ADDER_inst_0_Q_RRC_0/sim/DDS_MULT_ADDER_inst_0_Q_RRC_0.vhd" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ip/DDS_MULT_ADDER_inst_0_I_RRC_0/sim/DDS_MULT_ADDER_inst_0_I_RRC_0.vhd" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ip/DDS_MULT_ADDER_inst_0_DDS_splitter_0/sim/DDS_MULT_ADDER_inst_0_DDS_splitter_0.vhd" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ip/DDS_MULT_ADDER_inst_0_Q_mult_0/sim/DDS_MULT_ADDER_inst_0_Q_mult_0.vhd" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ip/DDS_MULT_ADDER_inst_0_I_mult_0/sim/DDS_MULT_ADDER_inst_0_I_mult_0.vhd" \

vcom -work c_reg_fd_v12_0_6 -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14 -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ip/DDS_MULT_ADDER_inst_0_c_addsub_0_0/sim/DDS_MULT_ADDER_inst_0_c_addsub_0_0.vhd" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ip/DDS_MULT_ADDER_inst_0_QAM_mapper_0_0/sim/DDS_MULT_ADDER_inst_0_QAM_mapper_0_0.vhd" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/ip/DDS_MULT_ADDER_inst_0_arst_sinc_0_0/sim/DDS_MULT_ADDER_inst_0_arst_sinc_0_0.vhd" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/DDS_MULT_ADDER_inst_0/sim/DDS_MULT_ADDER_inst_0.vhd" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/XADC_FIFO_inst_0/ip/XADC_FIFO_inst_0_Contador_26_0_0/src/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0.vhd" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/XADC_FIFO_inst_0/ipshared/cbd3/src/Contador_26.vhd" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/XADC_FIFO_inst_0/ip/XADC_FIFO_inst_0_Contador_26_0_0/sim/XADC_FIFO_inst_0_Contador_26_0_0.vhd" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/XADC_FIFO_inst_0/ipshared/db9d/src/Contador_52.vhd" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/XADC_FIFO_inst_0/ip/XADC_FIFO_inst_0_Contador_52_0_0/sim/XADC_FIFO_inst_0_Contador_52_0_0.vhd" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/XADC_FIFO_inst_0/ip/XADC_FIFO_inst_0_FSM_FIFO_Entregable_0_0/src/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0.vhd" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/XADC_FIFO_inst_0/ipshared/0ffb/src/FSM_FIFO_Entregable.vhd" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/XADC_FIFO_inst_0/ip/XADC_FIFO_inst_0_FSM_FIFO_Entregable_0_0/sim/XADC_FIFO_inst_0_FSM_FIFO_Entregable_0_0.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/CLOCKS_inst_0/ipshared/62b6" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/XADC_FIFO_inst_0/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6 -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/XADC_FIFO_inst_0/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/CLOCKS_inst_0/ipshared/62b6" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/XADC_FIFO_inst_0/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/CLOCKS_inst_0/ipshared/62b6" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/XADC_FIFO_inst_0/ip/XADC_FIFO_inst_0_fifo_generator_0_0/sim/XADC_FIFO_inst_0_fifo_generator_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/XADC_FIFO_inst_0/ip/XADC_FIFO_inst_0_xadc_wiz_0_0/XADC_FIFO_inst_0_xadc_wiz_0_0.vhd" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/FULL_QAM_TX/bd/XADC_FIFO_inst_0/sim/XADC_FIFO_inst_0.vhd" \
"../../../bd/FULL_QAM_TX/sim/FULL_QAM_TX.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

