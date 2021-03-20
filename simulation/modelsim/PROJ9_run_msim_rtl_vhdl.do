transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/UI/smt4/psd/prak/project9-newest/RAM32x4.vhd}
vcom -93 -work work {D:/UI/smt4/psd/prak/project9-newest/VM.vhd}

