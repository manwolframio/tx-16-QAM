vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xbip_utils_v3_0_10
vlib questa_lib/msim/axi_utils_v2_0_6
vlib questa_lib/msim/xbip_pipe_v3_0_6
vlib questa_lib/msim/xbip_bram18k_v3_0_6
vlib questa_lib/msim/mult_gen_v12_0_17
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib questa_lib/msim/xbip_dsp48_multadd_v3_0_6
vlib questa_lib/msim/dds_compiler_v6_0_21
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/fir_compiler_v7_2_17
vlib questa_lib/msim/c_reg_fd_v12_0_6
vlib questa_lib/msim/xbip_addsub_v3_0_6
vlib questa_lib/msim/c_addsub_v12_0_14

vmap xpm questa_lib/msim/xpm
vmap xbip_utils_v3_0_10 questa_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 questa_lib/msim/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 questa_lib/msim/xbip_pipe_v3_0_6
vmap xbip_bram18k_v3_0_6 questa_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_17 questa_lib/msim/mult_gen_v12_0_17
vmap xbip_dsp48_wrapper_v3_0_4 questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 questa_lib/msim/xbip_dsp48_multadd_v3_0_6
vmap dds_compiler_v6_0_21 questa_lib/msim/dds_compiler_v6_0_21
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap fir_compiler_v7_2_17 questa_lib/msim/fir_compiler_v7_2_17
vmap c_reg_fd_v12_0_6 questa_lib/msim/c_reg_fd_v12_0_6
vmap xbip_addsub_v3_0_6 questa_lib/msim/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 questa_lib/msim/c_addsub_v12_0_14

vlog -work xpm  -incr -mfcu -sv \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_10  -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6  -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6  -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6  -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_17  -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/dd36/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4  -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6  -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6  -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work dds_compiler_v6_0_21  -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/7e37/hdl/dds_compiler_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/DDS_MULT_ADDER/ip/DDS_MULT_ADDER_dds_compiler_0_0/sim/DDS_MULT_ADDER_dds_compiler_0_0.vhd" \

vcom -work fir_compiler_v7_2_17  -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/cf11/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/DDS_MULT_ADDER/ip/DDS_MULT_ADDER_fir_compiler_0_0/sim/DDS_MULT_ADDER_fir_compiler_0_0.vhd" \
"../../../bd/DDS_MULT_ADDER/ip/DDS_MULT_ADDER_fir_compiler_0_1/sim/DDS_MULT_ADDER_fir_compiler_0_1.vhd" \
"../../../bd/DDS_MULT_ADDER/ip/DDS_MULT_ADDER_DDS_splitter_0_0/sim/DDS_MULT_ADDER_DDS_splitter_0_0.vhd" \
"../../../bd/DDS_MULT_ADDER/ip/DDS_MULT_ADDER_mult_gen_0_0/sim/DDS_MULT_ADDER_mult_gen_0_0.vhd" \
"../../../bd/DDS_MULT_ADDER/ip/DDS_MULT_ADDER_mult_gen_0_1/sim/DDS_MULT_ADDER_mult_gen_0_1.vhd" \

vcom -work c_reg_fd_v12_0_6  -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6  -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14  -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/DDS_MULT_ADDER/ip/DDS_MULT_ADDER_c_addsub_0_0/sim/DDS_MULT_ADDER_c_addsub_0_0.vhd" \
"../../../bd/DDS_MULT_ADDER/ip/DDS_MULT_ADDER_QAM_mapper_0_0/sim/DDS_MULT_ADDER_QAM_mapper_0_0.vhd" \
"../../../bd/DDS_MULT_ADDER/ip/DDS_MULT_ADDER_arst_sinc_0_0/sim/DDS_MULT_ADDER_arst_sinc_0_0.vhd" \
"../../../bd/DDS_MULT_ADDER/sim/DDS_MULT_ADDER.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

