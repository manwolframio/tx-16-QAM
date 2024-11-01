onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+design_1 -L xpm -L xil_defaultlib -L fifo_generator_v13_2_6 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_1 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {design_1.udo}

run -all

endsim

quit -force
