vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu -sv "+incdir+../../../../project_XADC_v2018_4.gen/sources_1/bd/CLOCKS/ipshared/62b6" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_XADC_v2018_4.gen/sources_1/bd/CLOCKS/ipshared/62b6" \
"../../../bd/CLOCKS/ip/CLOCKS_clk_wiz_0_0/CLOCKS_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/CLOCKS/ip/CLOCKS_clk_wiz_0_0/CLOCKS_clk_wiz_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/CLOCKS/sim/CLOCKS.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

