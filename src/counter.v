/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module counter(
    input  wire       clk,      // clock
    input  wire       rst_n,     // reset_n - low to reset
	output reg [7:0] count_value
);
  always@(posedge clk) begin 
	if (!rst_n) begin
		count_value<=0;
	end begin
		count_value<=count_value+1;
	end 
  end 
endmodule
