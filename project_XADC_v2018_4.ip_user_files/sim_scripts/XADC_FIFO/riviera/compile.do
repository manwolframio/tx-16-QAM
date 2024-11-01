vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/fifo_generator_v13_2_6

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap fifo_generator_v13_2_6 riviera/fifo_generator_v13_2_6

vlog -work xpm  -sv2k12 \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/XADC_FIFO/ip/XADC_FIFO_Contador_26_0_1/src/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0.vhd" \
"../../../bd/XADC_FIFO/ipshared/cbd3/src/Contador_26.vhd" \
"../../../bd/XADC_FIFO/ip/XADC_FIFO_Contador_26_0_1/sim/XADC_FIFO_Contador_26_0_1.vhd" \
"../../../bd/XADC_FIFO/ipshared/db9d/src/Contador_52.vhd" \
"../../../bd/XADC_FIFO/ip/XADC_FIFO_Contador_52_0_1/sim/XADC_FIFO_Contador_52_0_1.vhd" \
"../../../bd/XADC_FIFO/ip/XADC_FIFO_FSM_FIFO_Entregable_0_1/src/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0.vhd" \
"../../../bd/XADC_FIFO/ipshared/0ffb/src/FSM_FIFO_Entregable.vhd" \
"../../../bd/XADC_FIFO/ip/XADC_FIFO_FSM_FIFO_Entregable_0_1/sim/XADC_FIFO_FSM_FIFO_Entregable_0_1.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/XADC_FIFO/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6 -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/XADC_FIFO/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/XADC_FIFO/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/XADC_FIFO/ip/XADC_FIFO_fifo_generator_0_1/sim/XADC_FIFO_fifo_generator_0_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/XADC_FIFO/ip/XADC_FIFO_xadc_wiz_0_1/XADC_FIFO_xadc_wiz_0_1.vhd" \
"../../../bd/XADC_FIFO/sim/XADC_FIFO.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

