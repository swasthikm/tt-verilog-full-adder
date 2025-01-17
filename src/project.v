/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none
//

module tt_um_full_adder (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  // All output pins must be assigned. If not used, assign to 0.
 // Assign IO directions
assign uio_oe = 8'b00001111;  // Enable lower 4 bits as output, upper 4 bits as input

// Wires for inputs and outputs of the full adder
wire a = ui_in[0];     // Input A (bit 0 of ui_in)
wire b = ui_in[1];     // Input B (bit 1 of ui_in)
wire cin = ui_in[2];   // Carry-in (bit 2 of ui_in)

wire sum;              // Sum output
wire cout;             // Carry-out output

// Full Adder Logic
assign sum = a ^ b ^ cin;       // Sum = A XOR B XOR Cin
assign cout = (a & b) | (b & cin) | (a & cin); // Cout = (A AND B) OR (B AND Cin) OR (A AND Cin)

// Map outputs to uo_out
assign uo_out[0] = sum;  // Output sum on bit 0 of uo_out
assign uo_out[1] = cout; // Output carry-out on bit 1 of uo_out

// Map remaining outputs to zero
assign uo_out[7:2] = 6'b0;

// Unused IOs
assign uio_out = 8'b0;
// List all unsed inputs here to prevent warnings
wire _unused = &{ena, clk, rst_n, uio_in[7:0], ui_in[7:3], 1'b0};


endmodule
