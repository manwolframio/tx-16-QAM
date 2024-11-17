-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_10 \
  "../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_6 \
  "../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_6 \
  "../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_6 \
  "../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_17 \
  "../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/dd36/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_6 \
  "../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_multadd_v3_0_6 \
  "../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/dds_compiler_v6_0_21 \
  "../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/7e37/hdl/dds_compiler_v6_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DDS_MULT_ADDER/ip/DDS_MULT_ADDER_dds_compiler_0_0/sim/DDS_MULT_ADDER_dds_compiler_0_0.vhd" \
-endlib
-makelib xcelium_lib/fir_compiler_v7_2_17 \
  "../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/cf11/hdl/fir_compiler_v7_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DDS_MULT_ADDER/ip/DDS_MULT_ADDER_fir_compiler_0_0/sim/DDS_MULT_ADDER_fir_compiler_0_0.vhd" \
  "../../../bd/DDS_MULT_ADDER/ip/DDS_MULT_ADDER_fir_compiler_0_1/sim/DDS_MULT_ADDER_fir_compiler_0_1.vhd" \
  "../../../bd/DDS_MULT_ADDER/ip/DDS_MULT_ADDER_DDS_splitter_0_0/sim/DDS_MULT_ADDER_DDS_splitter_0_0.vhd" \
  "../../../bd/DDS_MULT_ADDER/ip/DDS_MULT_ADDER_mult_gen_0_0/sim/DDS_MULT_ADDER_mult_gen_0_0.vhd" \
  "../../../bd/DDS_MULT_ADDER/ip/DDS_MULT_ADDER_mult_gen_0_1/sim/DDS_MULT_ADDER_mult_gen_0_1.vhd" \
-endlib
-makelib xcelium_lib/c_reg_fd_v12_0_6 \
  "../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_addsub_v3_0_6 \
  "../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_addsub_v12_0_14 \
  "../../../../project_XADC_v2018_4.gen/sources_1/bd/DDS_MULT_ADDER/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DDS_MULT_ADDER/ip/DDS_MULT_ADDER_c_addsub_0_0/sim/DDS_MULT_ADDER_c_addsub_0_0.vhd" \
  "../../../bd/DDS_MULT_ADDER/ip/DDS_MULT_ADDER_QAM_mapper_0_0/sim/DDS_MULT_ADDER_QAM_mapper_0_0.vhd" \
  "../../../bd/DDS_MULT_ADDER/ip/DDS_MULT_ADDER_arst_sinc_0_0/sim/DDS_MULT_ADDER_arst_sinc_0_0.vhd" \
  "../../../bd/DDS_MULT_ADDER/sim/DDS_MULT_ADDER.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

