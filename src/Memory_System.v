//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO 
// Engineer:  Antonio Rangel Avila
// Description: ROM + RAM integration 
// Date: 29/Nov/22
//////////////////////////////////////////////////////////////////////////////////
module Memory_System
#
(
	parameter 	MEMORY_DEPTH = 64,
	parameter 	DATA_WIDTH = 32
)
(
	input									clk,
	input 								Write_Enable_i,
	input 	[(DATA_WIDTH-1):0] 	Write_Data_i,
	input 	[(DATA_WIDTH-1):0] 	Address_i,
	
	output 	[(DATA_WIDTH-1):0] 	Instruction_o
);

	wire	[(DATA_WIDTH-1):0]	rom_out;
	wire 	[(DATA_WIDTH-1):0]	ram_out;
	
	Mux2x1	MEM_OUT	(
								.Selector	(Address_i>=32'h1_001_0000),
								.I_0			(rom_out),
								.I_1			(ram_out),
								.Mux_Out		(Instruction_o)
							);
	
	Program_Memory	ROM	(
									.Address			((Address_i-32'h400_000)>>2),
									.Instruction	(rom_out)
								);
	
	Data_Memory		RAM 	(
									.clk				(clk),
									.Write_Enable	(Write_Enable_i),
									.Write_Data		(Write_Data_i),						
									.Address       (((Address_i-32'h7fff_eefc)>>2)-1),
									.Read_Data		(ram_out)
								);
endmodule