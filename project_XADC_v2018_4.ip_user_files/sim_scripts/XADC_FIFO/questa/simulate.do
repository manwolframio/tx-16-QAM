onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib XADC_FIFO_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {XADC_FIFO.udo}

run -all

quit -force
