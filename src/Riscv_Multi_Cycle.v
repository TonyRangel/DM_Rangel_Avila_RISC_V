//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO 
// Engineer:  Antonio Rangel Avila
// Description: Data Path + Control unit integration
// Date: 15/Mar/23
//////////////////////////////////////////////////////////////////////////////////
module Riscv_Multi_Cycle
(
	input 			clk,
	input 			reset,
	
	output clk_out,
	
	input		[7:0]	GPIO_in,    //GPIO Ports
	output	[7:0]	GPIO_out,

   input uart_rx, 				//UART Ports
   output uart_tx
);

	wire	[6:0]	Op_w;
	wire	[2:0] Funct3_w;
	wire	[6:0] Funct7_w;
	wire			Zero_w;
	
	wire 			PC_En_w;
	wire 			I_or_D_w;
	wire 			Mem_Write_w;
	wire 			IR_Write_w;
	wire 	[1:0]	Mem_to_Reg_w;
	wire 			Reg_Write_w;
	wire 	[1:0]	ALU_Src_A_w;
	wire	[1:0]	ALU_Src_B_w;
	wire 	[3:0]	ALU_Control_w;
	wire 	[1:0]	PC_Src_w;
	assign clk_out = clk;
	
	
	Control_Unit	Control	(
										.clk				(clk),
										.reset			(reset),
										.Op				(Op_w),
										.Funct3			(Funct3_w),
										.Funct7			(Funct7_w),
										.Zero				(Zero_w),
										.PC_En			(PC_En_w),
										.I_or_D			(I_or_D_w),
										.Mem_Write		(Mem_Write_w),
										.IR_Write		(IR_Write_w),
										.Mem_to_Reg		(Mem_to_Reg_w),
										.Reg_Write		(Reg_Write_w),
										.ALU_Src_A		(ALU_Src_A_w),
										.ALU_Src_B		(ALU_Src_B_w),
										.ALU_Control	(ALU_Control_w),
										.PC_Src			(PC_Src_w)
									);
									
	
	Data_Path	#
					(
						.DATA_WIDTH(32)
					)
					DataPath	(
									.clk				(clk),
									.reset			(reset),
									.PCEn			   (PC_En_w),
									.IorD			   (I_or_D_w),
									.MemWrite		(Mem_Write_w),
									.IRWrite		   (IR_Write_w),
									.MemtoReg		(Mem_to_Reg_w),
									.RegWrite		(Reg_Write_w),
									.ALUSrcA		   (ALU_Src_A_w),
									.ALUSrcB		   (ALU_Src_B_w),
									.ALUControl	   (ALU_Control_w),
									.PCSrc			(PC_Src_w),
									.Zero				(Zero_w),
									.Op				(Op_w),
									.Funct3			(Funct3_w),
									.Funct7			(Funct7_w),
									.gpio_port_in  (GPIO_in),
									.gpio_port_out (GPIO_out),
									.uart_rx       (uart_rx), 
									.uart_tx       (uart_tx)  
									
									
									
								);


endmodule