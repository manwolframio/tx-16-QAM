-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/XADC_FIFO/ip/XADC_FIFO_Contador_26_0_1/src/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0.vhd" \
  "../../../bd/XADC_FIFO/ipshared/cbd3/src/Contador_26.vhd" \
  "../../../bd/XADC_FIFO/ip/XADC_FIFO_Contador_26_0_1/sim/XADC_FIFO_Contador_26_0_1.vhd" \
  "../../../bd/XADC_FIFO/ipshared/db9d/src/Contador_52.vhd" \
  "../../../bd/XADC_FIFO/ip/XADC_FIFO_Contador_52_0_1/sim/XADC_FIFO_Contador_52_0_1.vhd" \
  "../../../bd/XADC_FIFO/ip/XADC_FIFO_FSM_FIFO_Entregable_0_1/src/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0.vhd" \
  "../../../bd/XADC_FIFO/ipshared/0ffb/src/FSM_FIFO_Entregable.vhd" \
  "../../../bd/XADC_FIFO/ip/XADC_FIFO_FSM_FIFO_Entregable_0_1/sim/XADC_FIFO_FSM_FIFO_Entregable_0_1.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../project_XADC_v2018_4.gen/sources_1/bd/XADC_FIFO/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../project_XADC_v2018_4.gen/sources_1/bd/XADC_FIFO/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../project_XADC_v2018_4.gen/sources_1/bd/XADC_FIFO/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/XADC_FIFO/ip/XADC_FIFO_fifo_generator_0_1/sim/XADC_FIFO_fifo_generator_0_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/XADC_FIFO/ip/XADC_FIFO_xadc_wiz_0_1/XADC_FIFO_xadc_wiz_0_1.vhd" \
  "../../../bd/XADC_FIFO/sim/XADC_FIFO.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

