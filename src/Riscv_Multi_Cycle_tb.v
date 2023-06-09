`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO 
// Engineer:  Antonio Rangel Avila
// Description: MIPS 32bits TestBench;
// Date: 29/Nov/22
//////////////////////////////////////////////////////////////////////////////////
module Riscv_Multi_Cycle_tb ();

reg rst;
reg clk;

reg [7:0]	GPIO_in;
wire [7:0] GPIO_out;

reg uart_rx;
wire uart_tx;

Riscv_Multi_Cycle UUT ( .clk(clk), .reset(rst), .GPIO_in(GPIO_in), .GPIO_out(GPIO_out), .uart_rx(uart_rx), .uart_tx(uart_tx) );


initial
	begin
#10	rst 		= 1'b1;
	   clk 		= 1'b0;
#10   rst 		= 1'b0;
#10	rst 		= 1'b1;
	end


always
    begin
     # 10 clk = ~clk;
    end
			
endmodule