//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO 
// Engineer:  Antonio Rangel Avila
// Description: FSM states definition;
// Date: 29/Nov/22
//////////////////////////////////////////////////////////////////////////////////
module Control_Signals
(
	input 			clk,
	input 			reset,
	input		[6:0]	Op,
	input 	[2:0] Funct3,
	input 	[6:0] Funct7,
		
	output  			PC_Write,
	output			I_or_D,
	output 			Mem_Write,
	output 			IR_Write,
	output 	[1:0]	Mem_to_Reg,
	output 			Reg_Write,
	output 	[1:0]	ALU_Src_A,
	output 	[1:0]	ALU_Src_B,
	output 	[1:0]	ALU_Op,
	output 	[1:0]	PC_Src,
	output			Branch_n,
	output			Branch
);

	localparam	IF 			= 6'b000000,
					ID 			= 6'b000001,
					
					EX_R        = 6'b000010,
					EX_I        = 6'b001100,
					
					JAL         = 6'b001101,
					BEQ         = 6'b001110,
					BNE         = 6'b001111,
					
					LWSW        = 6'b010000,
					LW          = 6'b100001,
					SW          = 6'b100010,
					JALR        = 6'b100100,
					
					
					/*EX_I_LW  	= 6'b010100,										 
					EX_S_SW   	= 6'b010101,									 
					EX_B_BEQ    = 6'b010110,
					EX_B_BNE  	= 6'b010111,								 
					EX_J_JAL    = 6'b011000,
					EX_I_JALR 	= 6'b011001,							 
					EX_U_LUI    = 6'b011010,*/
					EX_U_AUIPC	= 6'b011011,
					
					EX_R_MUL    = 6'b011100,
					
					WB_R 	      = 6'b011101,
					WB_I	      = 6'b011110,
					WB_J        = 6'b100011,
					
					M_WB        = 6'b011111,
				   M_WB2       = 6'b100101;
					
					
					
					
				
			      	

							
	reg	[5:0]		state ;
	reg	[5:0]		next_state;
	reg	[16:0]	control_bus;
	
	always@(posedge clk) begin
		if(!reset) state <= IF; 
		else state <= next_state;
	end
	
	always@(state or Op or Funct3 or Funct7) begin
		control_bus = 17'b0_0_0_0_00_00_0_00_00_00_00_0;
		case (state)
			IF	:	begin
						control_bus = 17'b1_0_0_1_00_0_00_01_00_00_0_0;     
						
						next_state = ID;
					end
						
			
			ID		:	begin
							//control_bus = 17'b0_0_0_0_00_0_00_10_00_00_0_0;
							  control_bus = 17'b0_0_0_0_00_0_10_10_00_00_0_0;
							
						   next_state =    					  (Op == 7'b011_0011) ? (Funct7 == 7'b000_0001) ? EX_R_MUL : EX_R : 
							                                (Op == 7'b110_0011) ? (Funct3 == 3'b000)       ? BEQ     : BNE  :
																	  (Op == 7'b001_0011) ? EX_I :
																	  (Op == 7'b110_1111) ? JAL  :
																	  (Op == 7'b010_0011) ? LWSW : 
																	  (Op == 7'b110_0111) ? JALR : 
																	  (Op == 7'b000_0011) ? LWSW :
																	  (Op == 7'b001_0111) ? EX_U_AUIPC : IF;
																	  
										  
										  
										  
										  
                     end 

//=========================================================================
			EX_R	:	begin
							control_bus = 17'b0_0_0_0_00_0_01_00_10_00_0_0; 
							next_state = WB_R;
						end
						
						
		EX_R_MUL	:	begin
							control_bus = 17'b0_0_0_0_00_0_01_00_10_00_0_0; 
							next_state = WB_R;
						end
		
//=========================================================================
			WB_R	:	begin
							control_bus = 17'b0_0_0_0_00_1_01_00_00_00_0_0;
							
							next_state = IF;
						end
						
//=========================================================================	
			EX_I	: 	begin
							control_bus = 17'b0_0_0_0_00_0_01_10_11_00_0_0 ;

							next_state = WB_I;
						end 
											
//=========================================================================				
			WB_I	:	begin
							control_bus = 17'b0_0_0_0_00_1_01_00_00_00_0_0;
							
							next_state = IF;
						end
						
//=========================================================================			
		 LW		:	begin
							//control_bus = 17'b0_1_0_0_00_0_01_00_00_00_0_0;
							  control_bus = 17'b0_1_0_0_00_0_01_10_00_00_0_0;
							
							next_state = M_WB;
						end
							
		 SW		:	begin
							control_bus = 17'b0_1_1_0_00_0_00_00_00_00_0_0;
							
							next_state = IF;
						end

//=========================================================================							
		JAL		:  begin
									 
						  control_bus = 17'b0_0_0_0_00_0_00_11_00_00_0_0;
									
						  next_state = WB_J;
									
						end

//=========================================================================
		WB_J		:	begin
							  control_bus = 17'b1_0_0_0_00_1_10_10_00_00_0_0;
							
							next_state = IF;
						end

//=========================================================================
      BEQ	   :  begin
									control_bus = 17'b0_0_0_0_00_0_01_00_01_10_0_1;
									
									next_state = IF;
								end
								
		BNE	   :  begin
									control_bus = 17'b0_0_0_0_00_0_01_00_01_10_1_0;
									
									next_state = IF;
								end

//=========================================================================
       LWSW	   :	begin
							control_bus = 17'b0_0_0_0_00_0_01_10_00_00_0_0;
							
							next_state =  (Op == 7'b010_0011) ? SW : LW ;
						end

//=========================================================================
		JALR		:	begin
							control_bus = 17'b1_0_0_0_00_0_01_00_00_00_0_0;
							
							
							next_state = IF;
						end


//=========================================================================
		 M_WB	   :	begin
							control_bus = 17'b0_1_0_0_01_1_01_00_00_00_0_0;
							
							//next_state = M_WB2;
							next_state = IF;
						end
						
/*		M_WB2	   :	begin
							control_bus = 17'b0_1_0_0_01_1_01_00_00_00_0_0;
							
							next_state = IF;
						end*/

//=========================================================================
	EX_U_AUIPC	:  begin
							control_bus = 17'b0_0_0_0_00_1_10_10_00_00_0_0;
							
							next_state = IF;
						end

//=========================================================================


//=========================================================================

						
				
			default	:	next_state = IF;
		endcase
	end
	
	assign PC_Write 		= control_bus[16];
	assign I_or_D 			= control_bus[15];
	assign Mem_Write 		= control_bus[14];
	assign IR_Write 		= control_bus[13];
	assign Mem_to_Reg 	= control_bus[12:11];
	assign Reg_Write   	= control_bus[10];
	assign ALU_Src_A 		= control_bus[9:8];
	assign ALU_Src_B 		= control_bus[7:6];
	assign ALU_Op    		= control_bus[5:4];
	assign PC_Src    		= control_bus[3:2];
	assign Branch_n 		= control_bus[1];
	assign Branch   		= control_bus[0];
	

endmodule