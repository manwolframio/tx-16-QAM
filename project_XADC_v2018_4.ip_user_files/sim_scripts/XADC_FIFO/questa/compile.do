vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/fifo_generator_v13_2_6

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap fifo_generator_v13_2_6 questa_lib/msim/fifo_generator_v13_2_6

vlog -work xpm  -incr -mfcu -sv \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/XADC_FIFO/ip/XADC_FIFO_Contador_26_0_1/src/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0.vhd" \
"../../../bd/XADC_FIFO/ipshared/cbd3/src/Contador_26.vhd" \
"../../../bd/XADC_FIFO/ip/XADC_FIFO_Contador_26_0_1/sim/XADC_FIFO_Contador_26_0_1.vhd" \
"../../../bd/XADC_FIFO/ipshared/db9d/src/Contador_52.vhd" \
"../../../bd/XADC_FIFO/ip/XADC_FIFO_Contador_52_0_1/sim/XADC_FIFO_Contador_52_0_1.vhd" \
"../../../bd/XADC_FIFO/ip/XADC_FIFO_FSM_FIFO_Entregable_0_1/src/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0.vhd" \
"../../../bd/XADC_FIFO/ipshared/0ffb/src/FSM_FIFO_Entregable.vhd" \
"../../../bd/XADC_FIFO/ip/XADC_FIFO_FSM_FIFO_Entregable_0_1/sim/XADC_FIFO_FSM_FIFO_Entregable_0_1.vhd" \

vlog -work fifo_generator_v13_2_6  -incr -mfcu \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/XADC_FIFO/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6  -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/XADC_FIFO/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -incr -mfcu \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/XADC_FIFO/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu \
"../../../bd/XADC_FIFO/ip/XADC_FIFO_fifo_generator_0_1/sim/XADC_FIFO_fifo_generator_0_1.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/XADC_FIFO/ip/XADC_FIFO_xadc_wiz_0_1/XADC_FIFO_xadc_wiz_0_1.vhd" \
"../../../bd/XADC_FIFO/sim/XADC_FIFO.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

