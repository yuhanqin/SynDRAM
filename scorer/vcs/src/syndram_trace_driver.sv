`timescale 1ps/1ps

// Mechanical driver for one validated restricted trace.
module syndram_trace_driver (
  output logic pin_CK0_t, output logic pin_CK0_c, output logic pin_CS0,
  output logic [3:0] pin_CA0, output logic pin_WCK0_t, output logic pin_WCK0_c,
  output logic [11:0] pin_DQ0,
  output logic pin_CK1_t, output logic pin_CK1_c, output logic pin_CS1,
  output logic [3:0] pin_CA1, output logic pin_WCK1_t, output logic pin_WCK1_c,
  output logic [11:0] pin_DQ1
);
  // A trace block updates these staging variables. The zero-delay commit runs
  // in the inactive region after that block yields. Clocks are committed last,
  // so samplers always observe the complete snapshot regardless of assignment
  // order in the submitted source text.
  logic CK0_t, CK0_c, CS0, WCK0_t, WCK0_c;
  logic [3:0] CA0;
  logic [11:0] DQ0;
  logic CK1_t, CK1_c, CS1, WCK1_t, WCK1_c;
  logic [3:0] CA1;
  logic [11:0] DQ1;

  always @(*) begin
    #0;
    pin_CS0 = CS0;
    pin_CA0 = CA0;
    pin_WCK0_t = WCK0_t;
    pin_WCK0_c = WCK0_c;
    pin_DQ0 = DQ0;
    pin_CS1 = CS1;
    pin_CA1 = CA1;
    pin_WCK1_t = WCK1_t;
    pin_WCK1_c = WCK1_c;
    pin_DQ1 = DQ1;
    pin_CK0_t = CK0_t;
    pin_CK0_c = CK0_c;
    pin_CK1_t = CK1_t;
    pin_CK1_c = CK1_c;
  end

  bit done = 0;

`ifdef SYNDRAM_TRACE_FILE
  initial begin
`include `SYNDRAM_TRACE_FILE
    done = 1;
  end
`else
  initial $fatal(1, "SYNDRAM_TRACE_FILE is not defined");
`endif
endmodule
