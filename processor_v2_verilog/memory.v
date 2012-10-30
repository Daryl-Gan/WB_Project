// Copyright (C) 1991-2011 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 32-bit"
// VERSION		"Version 11.1 Build 259 01/25/2012 Service Pack 2 SJ Web Edition"
// CREATED		"Tue Oct 30 12:04:43 2012"

module memory(
	wren,
	clock,
	MemRead,
	address,
	data,
	q
);


input wire	wren;
input wire	clock;
input wire	MemRead;
input wire	[7:0] address;
input wire	[7:0] data;
output wire	[7:0] q;

wire	SYNTHESIZED_WIRE_0;
wire	[0:7] SYNTHESIZED_WIRE_1;
wire	[7:0] SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_1 = 0;




DataMemory	b2v_inst(
	.wren(wren),
	.clock(SYNTHESIZED_WIRE_0),
	.address(address),
	.data(data),
	.q(SYNTHESIZED_WIRE_2));

assign	SYNTHESIZED_WIRE_0 =  ~clock;


mux2to1	b2v_inst3(
	.sel(MemRead),
	.data0x(SYNTHESIZED_WIRE_1),
	.data1x(SYNTHESIZED_WIRE_2),
	.result(q));



endmodule
