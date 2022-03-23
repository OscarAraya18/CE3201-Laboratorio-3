transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3 {C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3/CompuertaAND.sv}
vlog -sv -work work +incdir+C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3 {C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3/Sumador.sv}
vlog -sv -work work +incdir+C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3 {C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3/ALU.sv}
vlog -sv -work work +incdir+C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3 {C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3/Restador.sv}
vlog -sv -work work +incdir+C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3 {C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3/CompuertaOR.sv}
vlog -sv -work work +incdir+C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3 {C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3/ShiftLeft.sv}
vlog -sv -work work +incdir+C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3 {C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3/ShiftRight.sv}
vlog -sv -work work +incdir+C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3 {C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3/Multiplexor.sv}
vlog -sv -work work +incdir+C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3 {C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3/CompuertaXOR.sv}
vlog -sv -work work +incdir+C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3 {C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3/Multiplicador.sv}
vlog -sv -work work +incdir+C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3 {C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3/Divisor.sv}
vlog -sv -work work +incdir+C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3 {C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3/Modulador.sv}
vlog -sv -work work +incdir+C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3 {C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3/ControladorBanderas.sv}

vlog -sv -work work +incdir+C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3 {C:/Users/J_Sol/Desktop/Lab3/CE3201-Laboratorio-3/ALU_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  testeo

add wave *
view structure
view signals
run -all
