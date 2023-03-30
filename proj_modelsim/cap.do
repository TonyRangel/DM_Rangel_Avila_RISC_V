onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Riscv_Multi_Cycle_tb/clk
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/Control/clk
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/Control/reset
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/Control/State_and_Signals/state
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/Control/Op
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/MemCtrl/ADDRIn
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/MemCtrl/ADDROut
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/MemCtrl/Sel
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM/Address
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM/Instruction
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/RAM/Address
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/RAM/Write_Data
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/peripheral_mux/Selector
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/sp/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/ra/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/a2/Q
add wave -noupdate -radix binary /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/a0/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/t0/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/s0/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/s3/Q
add wave -noupdate -radix hexadecimal /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/s4/Q
add wave -noupdate -radix binary /Riscv_Multi_Cycle_tb/UUT/DataPath/Alu/Control
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Alu/A
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Alu/B
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Alu/Result
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/Control/ALU_Op
add wave -noupdate -radix binary /Riscv_Multi_Cycle_tb/UUT/Control/Operation/ALU_Op
add wave -noupdate -radix binary /Riscv_Multi_Cycle_tb/UUT/Control/Operation/ALU_Control
add wave -noupdate -radix binary /Riscv_Multi_Cycle_tb/UUT/Control/Operation/Funct3
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 10} {3480492 ps} 0} {{Cursor 11} {3328175 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 359
configure wave -valuecolwidth 121
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
WaveRestoreZoom {3469696 ps} {3576095 ps}
