######################################################################
##
## Filename: spec_si57x_tb.fdo
## Created on: Sat May 31 17:57:57 BST 2014
##
##  Auto generated by Project Navigator for Behavioral Simulation
##
##  ---------------------DO NOT EDIT THIS FILE-------------------------
##  You may want to add additional commands to control the simulation
##  in the user specific do file (<module>.udo) which is automatically
##  generated in the project directory and will not be removed on
##  subsequent simulation flows run from Project Navigator.
##  ---------------------DO NOT EDIT THIS FILE-------------------------
##
######################################################################
#
# Create work library
#
vlib work
#
# Compile sources
#
vcom -explicit  -93 "../../../rtl/spec_si57x/vhdl/i2c_master_bit_ctrl.vhd"
vcom -explicit  -93 "../../../rtl/spec_si57x/vhdl/pulse2pulse.vhd"
vcom -explicit  -93 "../../../rtl/spec_si57x/vhdl/i2c_master_byte_ctrl.vhd"
vcom -explicit  -93 "../../../rtl/spec_si57x/vhdl/i2c_master_top.vhd"
vcom -explicit  -93 "../../../rtl/spec_si57x/vhdl/i2c_master_stellar_cmd.vhd"
vcom -explicit  -93 "../../../rtl/spec_si57x/vhdl/i2c_master.vhd"
vcom -explicit  -93 "../../../rtl/spec_si57x/vhdl/spec_si57x.vhd"
vcom -explicit  -93 "../bench/i2c_slave_model.vhd"
vcom -explicit  -93 "../bench/spec_si57x_tb.vhd"
#
# Call vsim to invoke simulator
#
vsim -voptargs="+acc" -novopt -t 1ps  -lib work work.spec_si57x_tb
#
# Source the wave do file
#
#
# Set the window types
#
view wave
view structure
view signals
#
# Source the user do file
#

add wave -group "UUT" sim:/spec_si57x_tb/uut/*
add wave -group "I2C Master" sim:/spec_si57x_tb/uut/i2c_master_inst/*
add wave -group "CMD" sim:/spec_si57x_tb/uut/i2c_master_inst/i2c_master_stellar_cmd_inst/*


#
# Run simulation for this time
#
run 1000us
#
# End
#
