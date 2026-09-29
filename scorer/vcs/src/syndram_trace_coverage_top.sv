`timescale 1ps/1ps

module syndram_coverage_top;
  import syndram_sample_pkg::*;

  logic CK0_t, CK0_c, CS0, WCK0_t, WCK0_c;
  logic CK1_t, CK1_c, CS1, WCK1_t, WCK1_c;
  logic [3:0] CA0, CA1;
  logic [11:0] DQ0, DQ1;
  wire [1:0][11:0] DQ = {DQ1, DQ0};
  wire [1:0] CK_t = {CK1_t, CK0_t};
  wire [1:0] CK_c = {CK1_c, CK0_c};
  wire [1:0] CS = {CS1, CS0};
  wire [1:0][3:0] CA = {CA1, CA0};
  wire [1:0] WCK_t = {WCK1_t, WCK0_t};
  wire [1:0] WCK_c = {WCK1_c, WCK0_c};

  logic RESET_n;
  logic [1:0] check_even = '0;
  logic [1:0] is_cbt;
  logic [1:0][127:0] internal_cmd_hint;
  wire eff_cntl_internal;

  initial begin
    RESET_n = 1'b0;
    #0 RESET_n = 1'b1;
  end

  // The first CK rising edge after trace initialization is R1. Commands use
  // two CK cycles, so this pin-derived phase bit alternates on every edge.
  always @(posedge CK0_t or negedge RESET_n)
    if (!RESET_n) check_even[0] <= 1'b0; else check_even[0] <= ~check_even[0];
  always @(posedge CK1_t or negedge RESET_n)
    if (!RESET_n) check_even[1] <= 1'b0; else check_even[1] <= ~check_even[1];

  syndram_trace_driver driver (
    CK0_t, CK0_c, CS0, CA0, WCK0_t, WCK0_c, DQ0,
    CK1_t, CK1_c, CS1, CA1, WCK1_t, WCK1_c, DQ1
  );

  syndram_if vif (
    .CK_t, .CK_c, .RESET_n, .CS, .CA, .DQ, .WCK_t, .WCK_c,
    .RDQS_t('0), .RDQS_c('0), .ALERT(1'b0), .check_even,
    .pamm_hit('0), .mrr_valid('0), .mrr_ma('0), .mrr_op('0),
    .eff_status(1'b0), .eff_cntl(eff_cntl_internal),
    .mr0_density(4'b0010), .rank('0), .is_dft('0), .is_cbt,
    .tb_cmd_string(internal_cmd_hint)
  );

  assign is_cbt[0] = vif.state_state_cbt_mode_active[0].active;
  assign is_cbt[1] = vif.state_state_cbt_mode_active[1].active;
  assign eff_cntl_internal = vif.mr_storage[0][1][6];
  always_comb begin
    internal_cmd_hint[0] = vif.power_down_active[0] ? "0_pdx" : "";
    internal_cmd_hint[1] = vif.power_down_active[1] ? "1_pdx" : "";
  end

  syndram_timing_coverage coverage (.vif(vif));
  syndram_terminal_coverage terminal_coverage (.vif(vif));
  syndram_clock_odt_monitor clock_monitor(vif);
  syndram_deff_exit_monitor deff_monitor(vif);
  syndram_refdb_monitor refdb_monitor(vif);
  syndram_cbt_pin_binding cbt_monitor(CK_t, WCK_t, CS, is_cbt, CA, DQ);
  syndram_window_monitor window_monitor(vif);

  // Let monitors observe a missing or changed terminal CK edge, then finalize
  // history/window observations. This drain is outside submitted trace time.
  initial begin : finish_trace
    realtime submitted_ps, drain_ps;
    wait(driver.done);
    #0;
    submitted_ps = $realtime;
    drain_ps = 2.0;
    for (int sc = 0; sc < 2; sc++)
      if (clock_monitor.expected_half[sc] * 1000.0 + 2.0 > drain_ps)
        drain_ps = clock_monitor.expected_half[sc] * 1000.0 + 2.0;
    drain_ps = $ceil(drain_ps);
    #(drain_ps);
    window_monitor.finish_observations(longint'(submitted_ps));
    $display("SYNDRAM_RUN_COMPLETE submitted_ps=%0.0f drain_ps=%0.0f elapsed_ps=%0.0f",
      submitted_ps, $realtime - submitted_ps, $realtime);
    $finish;
  end
endmodule
