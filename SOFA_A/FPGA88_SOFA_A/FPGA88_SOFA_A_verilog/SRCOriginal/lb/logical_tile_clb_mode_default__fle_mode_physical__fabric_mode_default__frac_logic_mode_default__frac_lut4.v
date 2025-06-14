//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for primitive pb_type: frac_lut4
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype none

// ----- Verilog module for logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut4 -----
module logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut4(prog_reset,
                                                                                                                 prog_clk,
                                                                                                                 frac_lut4_in,
                                                                                                                 ccff_head,
                                                                                                                 frac_lut4_lut2_out,
                                                                                                                 frac_lut4_lut3_out,
                                                                                                                 frac_lut4_lut4_out,
                                                                                                                 ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] prog_reset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:3] frac_lut4_in;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:1] frac_lut4_lut2_out;
//----- OUTPUT PORTS -----
output [0:1] frac_lut4_lut3_out;
//----- OUTPUT PORTS -----
output [0:0] frac_lut4_lut4_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
wire [0:3] frac_lut4_in;
wire [0:1] frac_lut4_lut2_out;
wire [0:1] frac_lut4_lut3_out;
wire [0:0] frac_lut4_lut4_out;
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] frac_lut4_0__undriven_mode_inv;
wire [0:15] frac_lut4_0__undriven_sram_inv;
wire [0:0] frac_lut4_0_mode;
wire [0:15] frac_lut4_0_sram;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	frac_lut4 frac_lut4_0_ (
		.in(frac_lut4_in[0:3]),
		.sram(frac_lut4_0_sram[0:15]),
		.sram_inv(frac_lut4_0__undriven_sram_inv[0:15]),
		.mode(frac_lut4_0_mode),
		.mode_inv(frac_lut4_0__undriven_mode_inv),
		.lut2_out(frac_lut4_lut2_out[0:1]),
		.lut3_out(frac_lut4_lut3_out[0:1]),
		.lut4_out(frac_lut4_lut4_out));

	frac_lut4_sky130_fd_sc_hd__dfrtp_1_mem frac_lut4_sky130_fd_sc_hd__dfrtp_1_mem (
		.prog_reset(prog_reset),
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(ccff_tail),
		.mem_out({frac_lut4_0_sram[0:15], frac_lut4_0_mode}));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut4 -----

//----- Default net type -----
`default_nettype none



