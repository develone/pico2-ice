module top(
  input clk_12p0,
  // RGB LED
  output ICE_39,
  output ICE_40,
  output ICE_41,
  // UART
  output ICE_11,
  input ICE_9
);

  pipelinec_top pipelinec_inst(
    .clk_12p0(clk_12p0),
    // RGB LED
    .ice_39_return_output(ICE_39),
    .ice_40_return_output(ICE_40),
    .ice_41_return_output(ICE_41),
    // UART
    .ice_11_return_output(ICE_11),
    .ice_9_val_input(ICE_9)
  );

endmodule
