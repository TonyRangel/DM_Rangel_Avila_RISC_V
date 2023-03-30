onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary /Riscv_Multi_Cycle_tb/UUT/Control/ALU_Op
add wave -noupdate -radix binary -childformat {{{/Riscv_Multi_Cycle_tb/UUT/ALU_Control_w[3]} -radix binary} {{/Riscv_Multi_Cycle_tb/UUT/ALU_Control_w[2]} -radix binary} {{/Riscv_Multi_Cycle_tb/UUT/ALU_Control_w[1]} -radix binary} {{/Riscv_Multi_Cycle_tb/UUT/ALU_Control_w[0]} -radix binary}} -subitemconfig {{/Riscv_Multi_Cycle_tb/UUT/ALU_Control_w[3]} {-height 15 -radix binary} {/Riscv_Multi_Cycle_tb/UUT/ALU_Control_w[2]} {-height 15 -radix binary} {/Riscv_Multi_Cycle_tb/UUT/ALU_Control_w[1]} {-height 15 -radix binary} {/Riscv_Multi_Cycle_tb/UUT/ALU_Control_w[0]} {-height 15 -radix binary}} /Riscv_Multi_Cycle_tb/UUT/ALU_Control_w
add wave -noupdate -radix binary /Riscv_Multi_Cycle_tb/UUT/Control/Operation/Funct3
add wave -noupdate -radix binary /Riscv_Multi_Cycle_tb/UUT/ALU_Src_A_w
add wave -noupdate -radix binary /Riscv_Multi_Cycle_tb/UUT/ALU_Src_B_w
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
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/Write_Enable_i
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/Address_i
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/Instruction_o
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/rom_out
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/ram_out
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/instr
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/opcode
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/funct3
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/funct7
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/rs1
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/rs2
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/rd
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Decoder_rv32I/imm
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/IR_opcode/D
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/IR_opcode/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/IR_rd/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/IR_funct3/D
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/IR_funct3/enable
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/IR_funct3/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/old_PC/D
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/old_PC/enable
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/old_PC/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Alu/Result
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Alu/A
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Alu/B
add wave -noupdate -radix binary /Riscv_Multi_Cycle_tb/UUT/DataPath/Alu/Control
add wave -noupdate -radix binary /Riscv_Multi_Cycle_tb/UUT/Control/Operation/ALU_Control
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Alu/Result
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Result_register/Q
add wave -noupdate -radix binary /Riscv_Multi_Cycle_tb/UUT/ALU_Control_w
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/Control/Operation/ALU_Op
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/B_Register/rst
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/B_Register/clk
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/B_Register/enable
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/B_Register/D
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/B_Register/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/A1
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/A2
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/A3
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/RD1
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/RD2
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/Control/State_and_Signals/next_state
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/imm_gen/imm
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/imm_gen/opcode
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/imm_gen/funct3
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ALUResult
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ALUOut
add wave -noupdate -radix hexadecimal /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/a2/D
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/a2/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/a2/enable
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/t0/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/t4/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/a0/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/a2/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/ra/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/s0/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/s1/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/s2/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/s3/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/s4/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/Reg_file/s5/Q
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/imm_gen/opcode
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/imm_gen/funct3
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/imm_gen/funct7
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/imm_gen/rs1
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/imm_gen/rs2
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/imm_gen/imm_in
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/imm_gen/imm
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/RAM/ram
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/Address_i
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/Write_Data_i
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/RAM/Address
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/RAM/Read_Data
add wave -noupdate /Riscv_Multi_Cycle_tb/UUT/DataPath/ROM_RAM/RAM/Write_Data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {2179233 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 413
configure wave -valuecolwidth 138
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
WaveRestoreZoom {2087262 ps} {2235124 ps}
