vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_checker_v2_0_1
vlib activehdl/axi_vip_v1_1_1
vlib activehdl/processing_system7_vip_v1_0_3

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_1 activehdl/axi_protocol_checker_v2_0_1
vmap axi_vip_v1_1_1 activehdl/axi_vip_v1_1_1
vmap processing_system7_vip_v1_0_3 activehdl/processing_system7_vip_v1_0_3

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_1  -sv2k12 "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_1  -sv2k12 "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_3  -sv2k12 "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/1313/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../GPIO.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/zynq/ip/zynq_processing_system7_0_0/sim/zynq_processing_system7_0_0.v" \
"../../../bd/zynq/sim/zynq.v" \

vlog -work xil_defaultlib \
"glbl.v"

