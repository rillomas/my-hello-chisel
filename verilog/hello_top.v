/* Minimal top level for the Chisel Hello World.
  Wire reset to 0. */

module hello_top(
  input clk,
  input sw1,
  output led);

  wire h_io_led;
  wire res;
  wire sw;

  assign led = h_io_led;
  assign sw = sw1;
  assign res = 1'h0;
  Hello h(
    .clock(clk),
    .reset(res),
    .io_switch1(sw),
    .io_led(h_io_led));
endmodule
