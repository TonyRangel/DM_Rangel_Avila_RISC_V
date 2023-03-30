onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/ALU_Control_w
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/ALU_Src_A_w
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/ALU_Src_B_w
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/clk
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/Funct3_w
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/Funct7_w
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/I_or_D_w
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/IR_Write_w
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/Mem_to_Reg_w
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/Mem_Write_w
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/Op_w
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/PC_En_w
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/PC_Src_w
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/Reg_Write_w
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/reset
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/Zero_w
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Pc/rst
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Pc/clk
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Pc/enable
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Pc/D
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Pc/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/clk
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/Write_Enable_i
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/Write_Data_i
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/Address_i
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/Instruction_o
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/rom_out
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/ram_out
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/MEM_OUT/I_0
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/MEM_OUT/I_1
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/MEM_OUT/Selector
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/MEM_OUT/Mux_Out
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/instr
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/opcode
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/funct3
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/funct7
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/rs1
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/rs2
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/rd
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/imm
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/shamt
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/csr
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/branch
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/jal
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/jalr
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/load
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/store
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/alu
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/mem_size
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/mem_signed
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Alu/Result
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Alu/A
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Alu/B
add wave -noupdate -radix binary /Riscv_Multi_Cycle_tb/UUT/DataPath/Alu/Control
add wave -noupdate -radix binary /Riscv_Multi_Cycle_tb/UUT/Control/Operation/ALU_Control
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Alu/Result
add wave -noupdate -radix binary /Riscv_Multi_Cycle_tb/UUT/ALU_Control_w
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {34281 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 407
configure wave -valuecolwidth 78
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
WaveRestoreZoom {0 ps} {68073 ps}
