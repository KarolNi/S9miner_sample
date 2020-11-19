onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+zynq -L xil_defaultlib -L xpm -L axi_infrastructure_v1_1_0 -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.zynq xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {zynq.udo}

run -all

endsim

quit -force
