onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+DDS_MULT_ADDER -L xpm -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_17 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L dds_compiler_v6_0_21 -L xil_defaultlib -L fir_compiler_v7_2_17 -L c_reg_fd_v12_0_6 -L xbip_addsub_v3_0_6 -L c_addsub_v12_0_14 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.DDS_MULT_ADDER xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {DDS_MULT_ADDER.udo}

run -all

endsim

quit -force
