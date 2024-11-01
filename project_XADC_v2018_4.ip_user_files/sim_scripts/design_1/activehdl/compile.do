vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/fifo_generator_v13_2_6

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap fifo_generator_v13_2_6 activehdl/fifo_generator_v13_2_6

vlog -work xpm  -sv2k12 "+incdir+../../../../project_XADC_v2018_4.gen/sources_1/bd/design_1/ipshared/62b6" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../project_XADC_v2018_4.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/design_1/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6 -93 \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/design_1/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../project_XADC_v2018_4.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../../project_XADC_v2018_4.gen/sources_1/bd/design_1/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_XADC_v2018_4.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../bd/design_1/ip/design_1_fifo_generator_0_0/sim/design_1_fifo_generator_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_Contador_26_0_0/src/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0.vhd" \
"../../../bd/design_1/ipshared/cbd3/src/Contador_26.vhd" \
"../../../bd/design_1/ip/design_1_Contador_26_0_0/sim/design_1_Contador_26_0_0.vhd" \
"../../../bd/design_1/ipshared/db9d/src/Contador_52.vhd" \
"../../../bd/design_1/ip/design_1_Contador_52_0_0/sim/design_1_Contador_52_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_XADC_v2018_4.gen/sources_1/bd/design_1/ipshared/62b6" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/sim/design_1.vhd" \
"../../../bd/design_1/ipshared/0ffb/src/FSM_FIFO_Entregable.vhd" \
"../../../bd/design_1/ip/design_1_FSM_FIFO_Entregable_0_2/sim/design_1_FSM_FIFO_Entregable_0_2.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

