onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib DDS_MULT_ADDER_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {DDS_MULT_ADDER.udo}

run -all

quit -force
