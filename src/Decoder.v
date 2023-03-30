module Decoder(
    input [31:0] instr,
    output [6:0] opcode,
    output [2:0] funct3,
    output [6:0] funct7,
    output [4:0] rs1,
    output [4:0] rs2,
    output [4:0] rd,
    output [11:0] imm
/*    output [3:0] shamt,
    output [6:0] csr,
    output branch,
    output jal,
    output jalr,
    output load,
    output store,
    output alu,
    output [1:0] mem_size,
    output [1:0] mem_signed*/
);

assign opcode = instr[6:0];
assign funct3 = instr[14:12];
assign funct7 = instr[31:25];
assign rs1 = instr[19:15];
assign rs2 = instr[24:20];
assign rd = instr[11:7];

assign imm = { {20{instr[31]}}, instr[31:20] };
//assign shamt = instr[24:20];
//assign csr = instr[31:20];

//assign branch = (opcode == 7'h63);
//assign jal = (opcode == 7'h6f);
//assign jalr = (opcode == 7'h67);
//assign load = ((opcode == 7'h03) || (opcode == 7'h00));
//assign store = (opcode == 7'h23);

//assign alu = ((opcode != 7'h03) && (opcode != 7'h23) && (opcode != 7'h67) && (opcode != 7'h6f));

//assign mem_size = 2'b00;
//assign mem_signed = 2'b00;

endmodule