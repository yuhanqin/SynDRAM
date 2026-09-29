`timescale 1ns/1ps

module syndram_timing_coverage (
  syndram_if vif
);

  import syndram_sample_pkg::*;

  `include "syndram_coverage_command.svh"
  `include "syndram_coverage_speed_grade.svh"
  `include "syndram_coverage_timing_rules.svh"
  `include "syndram_coverage_mr_values.svh"
  `include "syndram_coverage_timing_conditions.svh"
  `include "syndram_coverage_forbidden.svh"

endmodule : syndram_timing_coverage
