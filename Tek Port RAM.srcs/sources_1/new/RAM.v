`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2023 21:36:11
// Design Name: 
// Module Name: RAM
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RAM(
 input clk, // clock input
  input [3:0] addr_a, // address input for port A
  input [3:0] addr_b, // address input for port B
  input [15:0] data_a, // data input for port A
  input [15:0] data_b, // data input for port B
  input we_a, // write enable for port A
  input we_b, // write enable for port B
  output reg [15:0] q_a, // data output for port A
  output reg [15:0] q_b // data output for port B
);

reg [15:0] ram [0:15]; // internal memory array

always @(posedge clk) begin
  if (we_a) ram[addr_a] <= data_a; // write data to port A address if write enable is high
  if (we_b) ram[addr_b] <= data_b; // write data to port B address if write enable is high
  q_a <= ram[addr_a]; // read data from port A address and output it
  q_b <= ram[addr_b]; // read data from port B address and output it
end

endmodule
