onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color White /cpu_tb/ck
add wave -noupdate -color White /cpu_tb/rst
add wave -noupdate -divider sinais
add wave -noupdate /cpu_tb/Dadress
add wave -noupdate /cpu_tb/Ddata
add wave -noupdate /cpu_tb/Iadress
add wave -noupdate /cpu_tb/Idata
add wave -noupdate /cpu_tb/i_cpu_address
add wave -noupdate /cpu_tb/d_cpu_address
add wave -noupdate /cpu_tb/data_cpu
add wave -noupdate /cpu_tb/tb_add
add wave -noupdate /cpu_tb/tb_data
add wave -noupdate /cpu_tb/hold_d
add wave -noupdate /cpu_tb/hold_i
add wave -noupdate /cpu_tb/Dce_n
add wave -noupdate /cpu_tb/Dwe_n
add wave -noupdate /cpu_tb/Doe_n
add wave -noupdate /cpu_tb/Ice_n
add wave -noupdate /cpu_tb/Iwe_n
add wave -noupdate /cpu_tb/Ioe_n
add wave -noupdate /cpu_tb/rstCPU
add wave -noupdate /cpu_tb/hold
add wave -noupdate /cpu_tb/readInst
add wave -noupdate /cpu_tb/cpu/uins.i
add wave -noupdate /cpu_tb/go_i
add wave -noupdate /cpu_tb/go_d
add wave -noupdate /cpu_tb/ce
add wave -noupdate /cpu_tb/rw
add wave -noupdate /cpu_tb/bw
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4999999201 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {4999999050 ps} {4999999813 ps}
