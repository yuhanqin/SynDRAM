  covergroup cg_rule_interval_table383_active_to_read_sc0 @(vif.rule_interval_table383_active_to_read_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_active_to_read.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_active_to_read[0].pass iff (vif.rule_interval_table383_active_to_read[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_active_to_read[0].observed_interval, vif.rule_interval_table383_active_to_read[0].expected_interval), 0.001) iff (vif.rule_interval_table383_active_to_read[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_active_to_read[0].observed_interval, vif.rule_interval_table383_active_to_read[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table383_active_to_read[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_active_to_read[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_active_to_read_sc0

  cg_rule_interval_table383_active_to_read_sc0 cg_rule_interval_table383_active_to_read_sc0_inst = new();

  covergroup cg_rule_interval_table383_active_to_read_sc1 @(vif.rule_interval_table383_active_to_read_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_active_to_read.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_active_to_read[1].pass iff (vif.rule_interval_table383_active_to_read[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_active_to_read[1].observed_interval, vif.rule_interval_table383_active_to_read[1].expected_interval), 0.001) iff (vif.rule_interval_table383_active_to_read[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_active_to_read[1].observed_interval, vif.rule_interval_table383_active_to_read[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table383_active_to_read[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_active_to_read[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_active_to_read_sc1

  cg_rule_interval_table383_active_to_read_sc1 cg_rule_interval_table383_active_to_read_sc1_inst = new();

  covergroup cg_rule_interval_table383_active_to_write_sc0 @(vif.rule_interval_table383_active_to_write_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_active_to_write.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_active_to_write[0].pass iff (vif.rule_interval_table383_active_to_write[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_active_to_write[0].observed_interval, vif.rule_interval_table383_active_to_write[0].expected_interval), 0.001) iff (vif.rule_interval_table383_active_to_write[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_active_to_write[0].observed_interval, vif.rule_interval_table383_active_to_write[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table383_active_to_write[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_active_to_write[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_active_to_write_sc0

  cg_rule_interval_table383_active_to_write_sc0 cg_rule_interval_table383_active_to_write_sc0_inst = new();

  covergroup cg_rule_interval_table383_active_to_write_sc1 @(vif.rule_interval_table383_active_to_write_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_active_to_write.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_active_to_write[1].pass iff (vif.rule_interval_table383_active_to_write[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_active_to_write[1].observed_interval, vif.rule_interval_table383_active_to_write[1].expected_interval), 0.001) iff (vif.rule_interval_table383_active_to_write[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_active_to_write[1].observed_interval, vif.rule_interval_table383_active_to_write[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table383_active_to_write[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_active_to_write[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_active_to_write_sc1

  cg_rule_interval_table383_active_to_write_sc1 cg_rule_interval_table383_active_to_write_sc1_inst = new();

  covergroup cg_rule_interval_table383_active_to_precharge_sc0 @(vif.rule_interval_table383_active_to_precharge_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_active_to_precharge.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_active_to_precharge[0].pass iff (vif.rule_interval_table383_active_to_precharge[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_active_to_precharge[0].observed_interval, vif.rule_interval_table383_active_to_precharge[0].expected_interval), 0.001) iff (vif.rule_interval_table383_active_to_precharge[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_active_to_precharge[0].observed_interval, vif.rule_interval_table383_active_to_precharge[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table383_active_to_precharge[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_active_to_precharge[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_active_to_precharge_sc0

  cg_rule_interval_table383_active_to_precharge_sc0 cg_rule_interval_table383_active_to_precharge_sc0_inst = new();

  covergroup cg_rule_interval_table383_active_to_precharge_sc1 @(vif.rule_interval_table383_active_to_precharge_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_active_to_precharge.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_active_to_precharge[1].pass iff (vif.rule_interval_table383_active_to_precharge[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_active_to_precharge[1].observed_interval, vif.rule_interval_table383_active_to_precharge[1].expected_interval), 0.001) iff (vif.rule_interval_table383_active_to_precharge[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_active_to_precharge[1].observed_interval, vif.rule_interval_table383_active_to_precharge[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table383_active_to_precharge[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_active_to_precharge[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_active_to_precharge_sc1

  cg_rule_interval_table383_active_to_precharge_sc1 cg_rule_interval_table383_active_to_precharge_sc1_inst = new();

  covergroup cg_rule_interval_table383_read_bl24_or_bl48_to_read_sc0 @(vif.rule_interval_table383_read_bl24_or_bl48_to_read_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_read_bl24_or_bl48_to_read.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_read_bl24_or_bl48_to_read[0].pass iff (vif.rule_interval_table383_read_bl24_or_bl48_to_read[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_read_bl24_or_bl48_to_read[0].observed_interval, vif.rule_interval_table383_read_bl24_or_bl48_to_read[0].expected_interval), 0.001) iff (vif.rule_interval_table383_read_bl24_or_bl48_to_read[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_read_bl24_or_bl48_to_read[0].observed_interval, vif.rule_interval_table383_read_bl24_or_bl48_to_read[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table383_read_bl24_or_bl48_to_read[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_read_bl24_or_bl48_to_read[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_read_bl24_or_bl48_to_read_sc0

  cg_rule_interval_table383_read_bl24_or_bl48_to_read_sc0 cg_rule_interval_table383_read_bl24_or_bl48_to_read_sc0_inst = new();

  covergroup cg_rule_interval_table383_read_bl24_or_bl48_to_read_sc1 @(vif.rule_interval_table383_read_bl24_or_bl48_to_read_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_read_bl24_or_bl48_to_read.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_read_bl24_or_bl48_to_read[1].pass iff (vif.rule_interval_table383_read_bl24_or_bl48_to_read[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_read_bl24_or_bl48_to_read[1].observed_interval, vif.rule_interval_table383_read_bl24_or_bl48_to_read[1].expected_interval), 0.001) iff (vif.rule_interval_table383_read_bl24_or_bl48_to_read[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_read_bl24_or_bl48_to_read[1].observed_interval, vif.rule_interval_table383_read_bl24_or_bl48_to_read[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table383_read_bl24_or_bl48_to_read[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_read_bl24_or_bl48_to_read[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_read_bl24_or_bl48_to_read_sc1

  cg_rule_interval_table383_read_bl24_or_bl48_to_read_sc1 cg_rule_interval_table383_read_bl24_or_bl48_to_read_sc1_inst = new();

  covergroup cg_rule_interval_table386_read_bl24_or_bl48_to_read_sc0 @(vif.rule_interval_table386_read_bl24_or_bl48_to_read_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table386_read_bl24_or_bl48_to_read.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table386_read_bl24_or_bl48_to_read[0].pass iff (vif.rule_interval_table386_read_bl24_or_bl48_to_read[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table386_read_bl24_or_bl48_to_read[0].observed_interval, vif.rule_interval_table386_read_bl24_or_bl48_to_read[0].expected_interval), 0.001) iff (vif.rule_interval_table386_read_bl24_or_bl48_to_read[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table386_read_bl24_or_bl48_to_read[0].observed_interval, vif.rule_interval_table386_read_bl24_or_bl48_to_read[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table386_read_bl24_or_bl48_to_read[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table386_read_bl24_or_bl48_to_read[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table386_read_bl24_or_bl48_to_read_sc0

  cg_rule_interval_table386_read_bl24_or_bl48_to_read_sc0 cg_rule_interval_table386_read_bl24_or_bl48_to_read_sc0_inst = new();

  covergroup cg_rule_interval_table386_read_bl24_or_bl48_to_read_sc1 @(vif.rule_interval_table386_read_bl24_or_bl48_to_read_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table386_read_bl24_or_bl48_to_read.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table386_read_bl24_or_bl48_to_read[1].pass iff (vif.rule_interval_table386_read_bl24_or_bl48_to_read[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table386_read_bl24_or_bl48_to_read[1].observed_interval, vif.rule_interval_table386_read_bl24_or_bl48_to_read[1].expected_interval), 0.001) iff (vif.rule_interval_table386_read_bl24_or_bl48_to_read[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table386_read_bl24_or_bl48_to_read[1].observed_interval, vif.rule_interval_table386_read_bl24_or_bl48_to_read[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table386_read_bl24_or_bl48_to_read[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table386_read_bl24_or_bl48_to_read[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table386_read_bl24_or_bl48_to_read_sc1

  cg_rule_interval_table386_read_bl24_or_bl48_to_read_sc1 cg_rule_interval_table386_read_bl24_or_bl48_to_read_sc1_inst = new();

  covergroup cg_rule_interval_table383_read_bl24_or_bl48_to_write_nt_off_sc0 @(vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_read_bl24_or_bl48_to_write_nt_off.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off[0].pass iff (vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off[0].observed_interval, vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off[0].expected_interval), 0.001) iff (vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off[0].observed_interval, vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_read_bl24_or_bl48_to_write_nt_off_sc0

  cg_rule_interval_table383_read_bl24_or_bl48_to_write_nt_off_sc0 cg_rule_interval_table383_read_bl24_or_bl48_to_write_nt_off_sc0_inst = new();

  covergroup cg_rule_interval_table383_read_bl24_or_bl48_to_write_nt_off_sc1 @(vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_read_bl24_or_bl48_to_write_nt_off.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off[1].pass iff (vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off[1].observed_interval, vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off[1].expected_interval), 0.001) iff (vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off[1].observed_interval, vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_off[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_read_bl24_or_bl48_to_write_nt_off_sc1

  cg_rule_interval_table383_read_bl24_or_bl48_to_write_nt_off_sc1 cg_rule_interval_table383_read_bl24_or_bl48_to_write_nt_off_sc1_inst = new();

  covergroup cg_rule_interval_table383_read_bl24_or_bl48_to_write_nt_on_sc0 @(vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_read_bl24_or_bl48_to_write_nt_on.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on[0].pass iff (vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on[0].observed_interval, vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on[0].expected_interval), 0.001) iff (vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on[0].observed_interval, vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_read_bl24_or_bl48_to_write_nt_on_sc0

  cg_rule_interval_table383_read_bl24_or_bl48_to_write_nt_on_sc0 cg_rule_interval_table383_read_bl24_or_bl48_to_write_nt_on_sc0_inst = new();

  covergroup cg_rule_interval_table383_read_bl24_or_bl48_to_write_nt_on_sc1 @(vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_read_bl24_or_bl48_to_write_nt_on.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on[1].pass iff (vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on[1].observed_interval, vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on[1].expected_interval), 0.001) iff (vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on[1].observed_interval, vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_read_bl24_or_bl48_to_write_nt_on[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_read_bl24_or_bl48_to_write_nt_on_sc1

  cg_rule_interval_table383_read_bl24_or_bl48_to_write_nt_on_sc1 cg_rule_interval_table383_read_bl24_or_bl48_to_write_nt_on_sc1_inst = new();

  covergroup cg_rule_interval_table386_read_bl24_or_bl48_to_write_nt_off_sc0 @(vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table386_read_bl24_or_bl48_to_write_nt_off.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off[0].pass iff (vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off[0].observed_interval, vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off[0].expected_interval), 0.001) iff (vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off[0].observed_interval, vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table386_read_bl24_or_bl48_to_write_nt_off_sc0

  cg_rule_interval_table386_read_bl24_or_bl48_to_write_nt_off_sc0 cg_rule_interval_table386_read_bl24_or_bl48_to_write_nt_off_sc0_inst = new();

  covergroup cg_rule_interval_table386_read_bl24_or_bl48_to_write_nt_off_sc1 @(vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table386_read_bl24_or_bl48_to_write_nt_off.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off[1].pass iff (vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off[1].observed_interval, vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off[1].expected_interval), 0.001) iff (vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off[1].observed_interval, vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_off[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table386_read_bl24_or_bl48_to_write_nt_off_sc1

  cg_rule_interval_table386_read_bl24_or_bl48_to_write_nt_off_sc1 cg_rule_interval_table386_read_bl24_or_bl48_to_write_nt_off_sc1_inst = new();

  covergroup cg_rule_interval_table386_read_bl24_or_bl48_to_write_nt_on_sc0 @(vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table386_read_bl24_or_bl48_to_write_nt_on.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on[0].pass iff (vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on[0].observed_interval, vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on[0].expected_interval), 0.001) iff (vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on[0].observed_interval, vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table386_read_bl24_or_bl48_to_write_nt_on_sc0

  cg_rule_interval_table386_read_bl24_or_bl48_to_write_nt_on_sc0 cg_rule_interval_table386_read_bl24_or_bl48_to_write_nt_on_sc0_inst = new();

  covergroup cg_rule_interval_table386_read_bl24_or_bl48_to_write_nt_on_sc1 @(vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table386_read_bl24_or_bl48_to_write_nt_on.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on[1].pass iff (vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on[1].observed_interval, vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on[1].expected_interval), 0.001) iff (vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on[1].observed_interval, vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table386_read_bl24_or_bl48_to_write_nt_on[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table386_read_bl24_or_bl48_to_write_nt_on_sc1

  cg_rule_interval_table386_read_bl24_or_bl48_to_write_nt_on_sc1 cg_rule_interval_table386_read_bl24_or_bl48_to_write_nt_on_sc1_inst = new();

  covergroup cg_rule_interval_table383_read_bl24_or_bl48_to_precharge_sc0 @(vif.rule_interval_table383_read_bl24_or_bl48_to_precharge_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_read_bl24_or_bl48_to_precharge.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_read_bl24_or_bl48_to_precharge[0].pass iff (vif.rule_interval_table383_read_bl24_or_bl48_to_precharge[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_read_bl24_or_bl48_to_precharge[0].observed_interval, vif.rule_interval_table383_read_bl24_or_bl48_to_precharge[0].expected_interval), 0.001) iff (vif.rule_interval_table383_read_bl24_or_bl48_to_precharge[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_read_bl24_or_bl48_to_precharge[0].observed_interval, vif.rule_interval_table383_read_bl24_or_bl48_to_precharge[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table383_read_bl24_or_bl48_to_precharge[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_read_bl24_or_bl48_to_precharge[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_read_bl24_or_bl48_to_precharge_sc0

  cg_rule_interval_table383_read_bl24_or_bl48_to_precharge_sc0 cg_rule_interval_table383_read_bl24_or_bl48_to_precharge_sc0_inst = new();

  covergroup cg_rule_interval_table383_read_bl24_or_bl48_to_precharge_sc1 @(vif.rule_interval_table383_read_bl24_or_bl48_to_precharge_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_read_bl24_or_bl48_to_precharge.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_read_bl24_or_bl48_to_precharge[1].pass iff (vif.rule_interval_table383_read_bl24_or_bl48_to_precharge[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_read_bl24_or_bl48_to_precharge[1].observed_interval, vif.rule_interval_table383_read_bl24_or_bl48_to_precharge[1].expected_interval), 0.001) iff (vif.rule_interval_table383_read_bl24_or_bl48_to_precharge[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_read_bl24_or_bl48_to_precharge[1].observed_interval, vif.rule_interval_table383_read_bl24_or_bl48_to_precharge[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table383_read_bl24_or_bl48_to_precharge[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_read_bl24_or_bl48_to_precharge[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_read_bl24_or_bl48_to_precharge_sc1

  cg_rule_interval_table383_read_bl24_or_bl48_to_precharge_sc1 cg_rule_interval_table383_read_bl24_or_bl48_to_precharge_sc1_inst = new();

  covergroup cg_rule_interval_table386_read_bl24_or_bl48_to_precharge_sc0 @(vif.rule_interval_table386_read_bl24_or_bl48_to_precharge_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table386_read_bl24_or_bl48_to_precharge.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table386_read_bl24_or_bl48_to_precharge[0].pass iff (vif.rule_interval_table386_read_bl24_or_bl48_to_precharge[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table386_read_bl24_or_bl48_to_precharge[0].observed_interval, vif.rule_interval_table386_read_bl24_or_bl48_to_precharge[0].expected_interval), 0.001) iff (vif.rule_interval_table386_read_bl24_or_bl48_to_precharge[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table386_read_bl24_or_bl48_to_precharge[0].observed_interval, vif.rule_interval_table386_read_bl24_or_bl48_to_precharge[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table386_read_bl24_or_bl48_to_precharge[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table386_read_bl24_or_bl48_to_precharge[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table386_read_bl24_or_bl48_to_precharge_sc0

  cg_rule_interval_table386_read_bl24_or_bl48_to_precharge_sc0 cg_rule_interval_table386_read_bl24_or_bl48_to_precharge_sc0_inst = new();

  covergroup cg_rule_interval_table386_read_bl24_or_bl48_to_precharge_sc1 @(vif.rule_interval_table386_read_bl24_or_bl48_to_precharge_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table386_read_bl24_or_bl48_to_precharge.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table386_read_bl24_or_bl48_to_precharge[1].pass iff (vif.rule_interval_table386_read_bl24_or_bl48_to_precharge[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table386_read_bl24_or_bl48_to_precharge[1].observed_interval, vif.rule_interval_table386_read_bl24_or_bl48_to_precharge[1].expected_interval), 0.001) iff (vif.rule_interval_table386_read_bl24_or_bl48_to_precharge[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table386_read_bl24_or_bl48_to_precharge[1].observed_interval, vif.rule_interval_table386_read_bl24_or_bl48_to_precharge[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table386_read_bl24_or_bl48_to_precharge[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table386_read_bl24_or_bl48_to_precharge[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table386_read_bl24_or_bl48_to_precharge_sc1

  cg_rule_interval_table386_read_bl24_or_bl48_to_precharge_sc1 cg_rule_interval_table386_read_bl24_or_bl48_to_precharge_sc1_inst = new();

  covergroup cg_rule_interval_table383_write_bl24_or_bl48_to_read_sc0 @(vif.rule_interval_table383_write_bl24_or_bl48_to_read_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_write_bl24_or_bl48_to_read.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_write_bl24_or_bl48_to_read[0].pass iff (vif.rule_interval_table383_write_bl24_or_bl48_to_read[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_write_bl24_or_bl48_to_read[0].observed_interval, vif.rule_interval_table383_write_bl24_or_bl48_to_read[0].expected_interval), 0.001) iff (vif.rule_interval_table383_write_bl24_or_bl48_to_read[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_write_bl24_or_bl48_to_read[0].observed_interval, vif.rule_interval_table383_write_bl24_or_bl48_to_read[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table383_write_bl24_or_bl48_to_read[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_write_bl24_or_bl48_to_read[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_write_bl24_or_bl48_to_read_sc0

  cg_rule_interval_table383_write_bl24_or_bl48_to_read_sc0 cg_rule_interval_table383_write_bl24_or_bl48_to_read_sc0_inst = new();

  covergroup cg_rule_interval_table383_write_bl24_or_bl48_to_read_sc1 @(vif.rule_interval_table383_write_bl24_or_bl48_to_read_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_write_bl24_or_bl48_to_read.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_write_bl24_or_bl48_to_read[1].pass iff (vif.rule_interval_table383_write_bl24_or_bl48_to_read[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_write_bl24_or_bl48_to_read[1].observed_interval, vif.rule_interval_table383_write_bl24_or_bl48_to_read[1].expected_interval), 0.001) iff (vif.rule_interval_table383_write_bl24_or_bl48_to_read[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_write_bl24_or_bl48_to_read[1].observed_interval, vif.rule_interval_table383_write_bl24_or_bl48_to_read[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table383_write_bl24_or_bl48_to_read[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_write_bl24_or_bl48_to_read[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_write_bl24_or_bl48_to_read_sc1

  cg_rule_interval_table383_write_bl24_or_bl48_to_read_sc1 cg_rule_interval_table383_write_bl24_or_bl48_to_read_sc1_inst = new();

  covergroup cg_rule_interval_table383_write_bl24_or_bl48_to_write_sc0 @(vif.rule_interval_table383_write_bl24_or_bl48_to_write_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_write_bl24_or_bl48_to_write.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_write_bl24_or_bl48_to_write[0].pass iff (vif.rule_interval_table383_write_bl24_or_bl48_to_write[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_write_bl24_or_bl48_to_write[0].observed_interval, vif.rule_interval_table383_write_bl24_or_bl48_to_write[0].expected_interval), 0.001) iff (vif.rule_interval_table383_write_bl24_or_bl48_to_write[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_write_bl24_or_bl48_to_write[0].observed_interval, vif.rule_interval_table383_write_bl24_or_bl48_to_write[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table383_write_bl24_or_bl48_to_write[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_write_bl24_or_bl48_to_write[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_write_bl24_or_bl48_to_write_sc0

  cg_rule_interval_table383_write_bl24_or_bl48_to_write_sc0 cg_rule_interval_table383_write_bl24_or_bl48_to_write_sc0_inst = new();

  covergroup cg_rule_interval_table383_write_bl24_or_bl48_to_write_sc1 @(vif.rule_interval_table383_write_bl24_or_bl48_to_write_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_write_bl24_or_bl48_to_write.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_write_bl24_or_bl48_to_write[1].pass iff (vif.rule_interval_table383_write_bl24_or_bl48_to_write[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_write_bl24_or_bl48_to_write[1].observed_interval, vif.rule_interval_table383_write_bl24_or_bl48_to_write[1].expected_interval), 0.001) iff (vif.rule_interval_table383_write_bl24_or_bl48_to_write[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_write_bl24_or_bl48_to_write[1].observed_interval, vif.rule_interval_table383_write_bl24_or_bl48_to_write[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table383_write_bl24_or_bl48_to_write[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_write_bl24_or_bl48_to_write[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_write_bl24_or_bl48_to_write_sc1

  cg_rule_interval_table383_write_bl24_or_bl48_to_write_sc1 cg_rule_interval_table383_write_bl24_or_bl48_to_write_sc1_inst = new();

  covergroup cg_rule_interval_table383_write_bl24_or_bl48_to_precharge_sc0 @(vif.rule_interval_table383_write_bl24_or_bl48_to_precharge_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_write_bl24_or_bl48_to_precharge.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_write_bl24_or_bl48_to_precharge[0].pass iff (vif.rule_interval_table383_write_bl24_or_bl48_to_precharge[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_write_bl24_or_bl48_to_precharge[0].observed_interval, vif.rule_interval_table383_write_bl24_or_bl48_to_precharge[0].expected_interval), 0.001) iff (vif.rule_interval_table383_write_bl24_or_bl48_to_precharge[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_write_bl24_or_bl48_to_precharge[0].observed_interval, vif.rule_interval_table383_write_bl24_or_bl48_to_precharge[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table383_write_bl24_or_bl48_to_precharge[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_write_bl24_or_bl48_to_precharge[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_write_bl24_or_bl48_to_precharge_sc0

  cg_rule_interval_table383_write_bl24_or_bl48_to_precharge_sc0 cg_rule_interval_table383_write_bl24_or_bl48_to_precharge_sc0_inst = new();

  covergroup cg_rule_interval_table383_write_bl24_or_bl48_to_precharge_sc1 @(vif.rule_interval_table383_write_bl24_or_bl48_to_precharge_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_write_bl24_or_bl48_to_precharge.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_write_bl24_or_bl48_to_precharge[1].pass iff (vif.rule_interval_table383_write_bl24_or_bl48_to_precharge[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_write_bl24_or_bl48_to_precharge[1].observed_interval, vif.rule_interval_table383_write_bl24_or_bl48_to_precharge[1].expected_interval), 0.001) iff (vif.rule_interval_table383_write_bl24_or_bl48_to_precharge[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_write_bl24_or_bl48_to_precharge[1].observed_interval, vif.rule_interval_table383_write_bl24_or_bl48_to_precharge[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table383_write_bl24_or_bl48_to_precharge[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_write_bl24_or_bl48_to_precharge[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_write_bl24_or_bl48_to_precharge_sc1

  cg_rule_interval_table383_write_bl24_or_bl48_to_precharge_sc1 cg_rule_interval_table383_write_bl24_or_bl48_to_precharge_sc1_inst = new();

  covergroup cg_rule_interval_table383_precharge_to_active_sc0 @(vif.rule_interval_table383_precharge_to_active_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_precharge_to_active.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_precharge_to_active[0].pass iff (vif.rule_interval_table383_precharge_to_active[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_precharge_to_active[0].observed_interval, vif.rule_interval_table383_precharge_to_active[0].expected_interval), 0.001) iff (vif.rule_interval_table383_precharge_to_active[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_precharge_to_active[0].observed_interval, vif.rule_interval_table383_precharge_to_active[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table383_precharge_to_active[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_precharge_to_active[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_precharge_to_active_sc0

  cg_rule_interval_table383_precharge_to_active_sc0 cg_rule_interval_table383_precharge_to_active_sc0_inst = new();

  covergroup cg_rule_interval_table383_precharge_to_active_sc1 @(vif.rule_interval_table383_precharge_to_active_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table383_precharge_to_active.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table383_precharge_to_active[1].pass iff (vif.rule_interval_table383_precharge_to_active[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_precharge_to_active[1].observed_interval, vif.rule_interval_table383_precharge_to_active[1].expected_interval), 0.001) iff (vif.rule_interval_table383_precharge_to_active[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table383_precharge_to_active[1].observed_interval, vif.rule_interval_table383_precharge_to_active[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table383_precharge_to_active[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table383_precharge_to_active[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table383_precharge_to_active_sc1

  cg_rule_interval_table383_precharge_to_active_sc1 cg_rule_interval_table383_precharge_to_active_sc1_inst = new();

  covergroup cg_rule_interval_table384_active_to_active_sc0 @(vif.rule_interval_table384_active_to_active_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table384_active_to_active.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table384_active_to_active[0].pass iff (vif.rule_interval_table384_active_to_active[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_active_to_active[0].observed_interval, vif.rule_interval_table384_active_to_active[0].expected_interval), 0.001) iff (vif.rule_interval_table384_active_to_active[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_active_to_active[0].observed_interval, vif.rule_interval_table384_active_to_active[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table384_active_to_active[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table384_active_to_active[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table384_active_to_active_sc0

  cg_rule_interval_table384_active_to_active_sc0 cg_rule_interval_table384_active_to_active_sc0_inst = new();

  covergroup cg_rule_interval_table384_active_to_active_sc1 @(vif.rule_interval_table384_active_to_active_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table384_active_to_active.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table384_active_to_active[1].pass iff (vif.rule_interval_table384_active_to_active[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_active_to_active[1].observed_interval, vif.rule_interval_table384_active_to_active[1].expected_interval), 0.001) iff (vif.rule_interval_table384_active_to_active[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_active_to_active[1].observed_interval, vif.rule_interval_table384_active_to_active[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table384_active_to_active[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table384_active_to_active[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table384_active_to_active_sc1

  cg_rule_interval_table384_active_to_active_sc1 cg_rule_interval_table384_active_to_active_sc1_inst = new();

  covergroup cg_rule_interval_table384_read_bl24_or_bl48_to_read_sc0 @(vif.rule_interval_table384_read_bl24_or_bl48_to_read_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table384_read_bl24_or_bl48_to_read.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table384_read_bl24_or_bl48_to_read[0].pass iff (vif.rule_interval_table384_read_bl24_or_bl48_to_read[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_read_bl24_or_bl48_to_read[0].observed_interval, vif.rule_interval_table384_read_bl24_or_bl48_to_read[0].expected_interval), 0.001) iff (vif.rule_interval_table384_read_bl24_or_bl48_to_read[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_read_bl24_or_bl48_to_read[0].observed_interval, vif.rule_interval_table384_read_bl24_or_bl48_to_read[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table384_read_bl24_or_bl48_to_read[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table384_read_bl24_or_bl48_to_read[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table384_read_bl24_or_bl48_to_read_sc0

  cg_rule_interval_table384_read_bl24_or_bl48_to_read_sc0 cg_rule_interval_table384_read_bl24_or_bl48_to_read_sc0_inst = new();

  covergroup cg_rule_interval_table384_read_bl24_or_bl48_to_read_sc1 @(vif.rule_interval_table384_read_bl24_or_bl48_to_read_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table384_read_bl24_or_bl48_to_read.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table384_read_bl24_or_bl48_to_read[1].pass iff (vif.rule_interval_table384_read_bl24_or_bl48_to_read[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_read_bl24_or_bl48_to_read[1].observed_interval, vif.rule_interval_table384_read_bl24_or_bl48_to_read[1].expected_interval), 0.001) iff (vif.rule_interval_table384_read_bl24_or_bl48_to_read[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_read_bl24_or_bl48_to_read[1].observed_interval, vif.rule_interval_table384_read_bl24_or_bl48_to_read[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table384_read_bl24_or_bl48_to_read[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table384_read_bl24_or_bl48_to_read[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table384_read_bl24_or_bl48_to_read_sc1

  cg_rule_interval_table384_read_bl24_or_bl48_to_read_sc1 cg_rule_interval_table384_read_bl24_or_bl48_to_read_sc1_inst = new();

  covergroup cg_rule_interval_table387_read_bl24_or_bl48_to_read_sc0 @(vif.rule_interval_table387_read_bl24_or_bl48_to_read_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table387_read_bl24_or_bl48_to_read.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table387_read_bl24_or_bl48_to_read[0].pass iff (vif.rule_interval_table387_read_bl24_or_bl48_to_read[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table387_read_bl24_or_bl48_to_read[0].observed_interval, vif.rule_interval_table387_read_bl24_or_bl48_to_read[0].expected_interval), 0.001) iff (vif.rule_interval_table387_read_bl24_or_bl48_to_read[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table387_read_bl24_or_bl48_to_read[0].observed_interval, vif.rule_interval_table387_read_bl24_or_bl48_to_read[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table387_read_bl24_or_bl48_to_read[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table387_read_bl24_or_bl48_to_read[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table387_read_bl24_or_bl48_to_read_sc0

  cg_rule_interval_table387_read_bl24_or_bl48_to_read_sc0 cg_rule_interval_table387_read_bl24_or_bl48_to_read_sc0_inst = new();

  covergroup cg_rule_interval_table387_read_bl24_or_bl48_to_read_sc1 @(vif.rule_interval_table387_read_bl24_or_bl48_to_read_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table387_read_bl24_or_bl48_to_read.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table387_read_bl24_or_bl48_to_read[1].pass iff (vif.rule_interval_table387_read_bl24_or_bl48_to_read[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table387_read_bl24_or_bl48_to_read[1].observed_interval, vif.rule_interval_table387_read_bl24_or_bl48_to_read[1].expected_interval), 0.001) iff (vif.rule_interval_table387_read_bl24_or_bl48_to_read[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table387_read_bl24_or_bl48_to_read[1].observed_interval, vif.rule_interval_table387_read_bl24_or_bl48_to_read[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table387_read_bl24_or_bl48_to_read[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table387_read_bl24_or_bl48_to_read[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table387_read_bl24_or_bl48_to_read_sc1

  cg_rule_interval_table387_read_bl24_or_bl48_to_read_sc1 cg_rule_interval_table387_read_bl24_or_bl48_to_read_sc1_inst = new();

  covergroup cg_rule_interval_table384_read_bl24_or_bl48_to_write_nt_off_sc0 @(vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table384_read_bl24_or_bl48_to_write_nt_off.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off[0].pass iff (vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off[0].observed_interval, vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off[0].expected_interval), 0.001) iff (vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off[0].observed_interval, vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table384_read_bl24_or_bl48_to_write_nt_off_sc0

  cg_rule_interval_table384_read_bl24_or_bl48_to_write_nt_off_sc0 cg_rule_interval_table384_read_bl24_or_bl48_to_write_nt_off_sc0_inst = new();

  covergroup cg_rule_interval_table384_read_bl24_or_bl48_to_write_nt_off_sc1 @(vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table384_read_bl24_or_bl48_to_write_nt_off.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off[1].pass iff (vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off[1].observed_interval, vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off[1].expected_interval), 0.001) iff (vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off[1].observed_interval, vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_off[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table384_read_bl24_or_bl48_to_write_nt_off_sc1

  cg_rule_interval_table384_read_bl24_or_bl48_to_write_nt_off_sc1 cg_rule_interval_table384_read_bl24_or_bl48_to_write_nt_off_sc1_inst = new();

  covergroup cg_rule_interval_table384_read_bl24_or_bl48_to_write_nt_on_sc0 @(vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table384_read_bl24_or_bl48_to_write_nt_on.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on[0].pass iff (vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on[0].observed_interval, vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on[0].expected_interval), 0.001) iff (vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on[0].observed_interval, vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table384_read_bl24_or_bl48_to_write_nt_on_sc0

  cg_rule_interval_table384_read_bl24_or_bl48_to_write_nt_on_sc0 cg_rule_interval_table384_read_bl24_or_bl48_to_write_nt_on_sc0_inst = new();

  covergroup cg_rule_interval_table384_read_bl24_or_bl48_to_write_nt_on_sc1 @(vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table384_read_bl24_or_bl48_to_write_nt_on.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on[1].pass iff (vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on[1].observed_interval, vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on[1].expected_interval), 0.001) iff (vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on[1].observed_interval, vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table384_read_bl24_or_bl48_to_write_nt_on[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table384_read_bl24_or_bl48_to_write_nt_on_sc1

  cg_rule_interval_table384_read_bl24_or_bl48_to_write_nt_on_sc1 cg_rule_interval_table384_read_bl24_or_bl48_to_write_nt_on_sc1_inst = new();

  covergroup cg_rule_interval_table387_read_bl24_or_bl48_to_write_nt_off_sc0 @(vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table387_read_bl24_or_bl48_to_write_nt_off.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off[0].pass iff (vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off[0].observed_interval, vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off[0].expected_interval), 0.001) iff (vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off[0].observed_interval, vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table387_read_bl24_or_bl48_to_write_nt_off_sc0

  cg_rule_interval_table387_read_bl24_or_bl48_to_write_nt_off_sc0 cg_rule_interval_table387_read_bl24_or_bl48_to_write_nt_off_sc0_inst = new();

  covergroup cg_rule_interval_table387_read_bl24_or_bl48_to_write_nt_off_sc1 @(vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table387_read_bl24_or_bl48_to_write_nt_off.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off[1].pass iff (vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off[1].observed_interval, vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off[1].expected_interval), 0.001) iff (vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off[1].observed_interval, vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_off[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table387_read_bl24_or_bl48_to_write_nt_off_sc1

  cg_rule_interval_table387_read_bl24_or_bl48_to_write_nt_off_sc1 cg_rule_interval_table387_read_bl24_or_bl48_to_write_nt_off_sc1_inst = new();

  covergroup cg_rule_interval_table387_read_bl24_or_bl48_to_write_nt_on_sc0 @(vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table387_read_bl24_or_bl48_to_write_nt_on.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on[0].pass iff (vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on[0].observed_interval, vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on[0].expected_interval), 0.001) iff (vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on[0].observed_interval, vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table387_read_bl24_or_bl48_to_write_nt_on_sc0

  cg_rule_interval_table387_read_bl24_or_bl48_to_write_nt_on_sc0 cg_rule_interval_table387_read_bl24_or_bl48_to_write_nt_on_sc0_inst = new();

  covergroup cg_rule_interval_table387_read_bl24_or_bl48_to_write_nt_on_sc1 @(vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table387_read_bl24_or_bl48_to_write_nt_on.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on[1].pass iff (vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on[1].observed_interval, vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on[1].expected_interval), 0.001) iff (vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on[1].observed_interval, vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table387_read_bl24_or_bl48_to_write_nt_on[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table387_read_bl24_or_bl48_to_write_nt_on_sc1

  cg_rule_interval_table387_read_bl24_or_bl48_to_write_nt_on_sc1 cg_rule_interval_table387_read_bl24_or_bl48_to_write_nt_on_sc1_inst = new();

  covergroup cg_rule_interval_table384_write_bl24_or_bl48_to_read_sc0 @(vif.rule_interval_table384_write_bl24_or_bl48_to_read_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table384_write_bl24_or_bl48_to_read.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table384_write_bl24_or_bl48_to_read[0].pass iff (vif.rule_interval_table384_write_bl24_or_bl48_to_read[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_write_bl24_or_bl48_to_read[0].observed_interval, vif.rule_interval_table384_write_bl24_or_bl48_to_read[0].expected_interval), 0.001) iff (vif.rule_interval_table384_write_bl24_or_bl48_to_read[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_write_bl24_or_bl48_to_read[0].observed_interval, vif.rule_interval_table384_write_bl24_or_bl48_to_read[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table384_write_bl24_or_bl48_to_read[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table384_write_bl24_or_bl48_to_read[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table384_write_bl24_or_bl48_to_read_sc0

  cg_rule_interval_table384_write_bl24_or_bl48_to_read_sc0 cg_rule_interval_table384_write_bl24_or_bl48_to_read_sc0_inst = new();

  covergroup cg_rule_interval_table384_write_bl24_or_bl48_to_read_sc1 @(vif.rule_interval_table384_write_bl24_or_bl48_to_read_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table384_write_bl24_or_bl48_to_read.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table384_write_bl24_or_bl48_to_read[1].pass iff (vif.rule_interval_table384_write_bl24_or_bl48_to_read[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_write_bl24_or_bl48_to_read[1].observed_interval, vif.rule_interval_table384_write_bl24_or_bl48_to_read[1].expected_interval), 0.001) iff (vif.rule_interval_table384_write_bl24_or_bl48_to_read[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_write_bl24_or_bl48_to_read[1].observed_interval, vif.rule_interval_table384_write_bl24_or_bl48_to_read[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table384_write_bl24_or_bl48_to_read[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table384_write_bl24_or_bl48_to_read[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table384_write_bl24_or_bl48_to_read_sc1

  cg_rule_interval_table384_write_bl24_or_bl48_to_read_sc1 cg_rule_interval_table384_write_bl24_or_bl48_to_read_sc1_inst = new();

  covergroup cg_rule_interval_table384_write_bl24_or_bl48_to_write_sc0 @(vif.rule_interval_table384_write_bl24_or_bl48_to_write_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table384_write_bl24_or_bl48_to_write.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table384_write_bl24_or_bl48_to_write[0].pass iff (vif.rule_interval_table384_write_bl24_or_bl48_to_write[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_write_bl24_or_bl48_to_write[0].observed_interval, vif.rule_interval_table384_write_bl24_or_bl48_to_write[0].expected_interval), 0.001) iff (vif.rule_interval_table384_write_bl24_or_bl48_to_write[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_write_bl24_or_bl48_to_write[0].observed_interval, vif.rule_interval_table384_write_bl24_or_bl48_to_write[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table384_write_bl24_or_bl48_to_write[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table384_write_bl24_or_bl48_to_write[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table384_write_bl24_or_bl48_to_write_sc0

  cg_rule_interval_table384_write_bl24_or_bl48_to_write_sc0 cg_rule_interval_table384_write_bl24_or_bl48_to_write_sc0_inst = new();

  covergroup cg_rule_interval_table384_write_bl24_or_bl48_to_write_sc1 @(vif.rule_interval_table384_write_bl24_or_bl48_to_write_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table384_write_bl24_or_bl48_to_write.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table384_write_bl24_or_bl48_to_write[1].pass iff (vif.rule_interval_table384_write_bl24_or_bl48_to_write[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_write_bl24_or_bl48_to_write[1].observed_interval, vif.rule_interval_table384_write_bl24_or_bl48_to_write[1].expected_interval), 0.001) iff (vif.rule_interval_table384_write_bl24_or_bl48_to_write[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table384_write_bl24_or_bl48_to_write[1].observed_interval, vif.rule_interval_table384_write_bl24_or_bl48_to_write[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table384_write_bl24_or_bl48_to_write[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table384_write_bl24_or_bl48_to_write[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table384_write_bl24_or_bl48_to_write_sc1

  cg_rule_interval_table384_write_bl24_or_bl48_to_write_sc1 cg_rule_interval_table384_write_bl24_or_bl48_to_write_sc1_inst = new();

  covergroup cg_rule_interval_table385_active_to_active_sc0 @(vif.rule_interval_table385_active_to_active_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table385_active_to_active.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table385_active_to_active[0].pass iff (vif.rule_interval_table385_active_to_active[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_active_to_active[0].observed_interval, vif.rule_interval_table385_active_to_active[0].expected_interval), 0.001) iff (vif.rule_interval_table385_active_to_active[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_active_to_active[0].observed_interval, vif.rule_interval_table385_active_to_active[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table385_active_to_active[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table385_active_to_active[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table385_active_to_active_sc0

  cg_rule_interval_table385_active_to_active_sc0 cg_rule_interval_table385_active_to_active_sc0_inst = new();

  covergroup cg_rule_interval_table385_active_to_active_sc1 @(vif.rule_interval_table385_active_to_active_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table385_active_to_active.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table385_active_to_active[1].pass iff (vif.rule_interval_table385_active_to_active[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_active_to_active[1].observed_interval, vif.rule_interval_table385_active_to_active[1].expected_interval), 0.001) iff (vif.rule_interval_table385_active_to_active[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_active_to_active[1].observed_interval, vif.rule_interval_table385_active_to_active[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table385_active_to_active[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table385_active_to_active[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table385_active_to_active_sc1

  cg_rule_interval_table385_active_to_active_sc1 cg_rule_interval_table385_active_to_active_sc1_inst = new();

  covergroup cg_rule_interval_table385_read_bl24_or_bl48_to_read_sc0 @(vif.rule_interval_table385_read_bl24_or_bl48_to_read_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table385_read_bl24_or_bl48_to_read.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table385_read_bl24_or_bl48_to_read[0].pass iff (vif.rule_interval_table385_read_bl24_or_bl48_to_read[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_read_bl24_or_bl48_to_read[0].observed_interval, vif.rule_interval_table385_read_bl24_or_bl48_to_read[0].expected_interval), 0.001) iff (vif.rule_interval_table385_read_bl24_or_bl48_to_read[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_read_bl24_or_bl48_to_read[0].observed_interval, vif.rule_interval_table385_read_bl24_or_bl48_to_read[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table385_read_bl24_or_bl48_to_read[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table385_read_bl24_or_bl48_to_read[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table385_read_bl24_or_bl48_to_read_sc0

  cg_rule_interval_table385_read_bl24_or_bl48_to_read_sc0 cg_rule_interval_table385_read_bl24_or_bl48_to_read_sc0_inst = new();

  covergroup cg_rule_interval_table385_read_bl24_or_bl48_to_read_sc1 @(vif.rule_interval_table385_read_bl24_or_bl48_to_read_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table385_read_bl24_or_bl48_to_read.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table385_read_bl24_or_bl48_to_read[1].pass iff (vif.rule_interval_table385_read_bl24_or_bl48_to_read[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_read_bl24_or_bl48_to_read[1].observed_interval, vif.rule_interval_table385_read_bl24_or_bl48_to_read[1].expected_interval), 0.001) iff (vif.rule_interval_table385_read_bl24_or_bl48_to_read[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_read_bl24_or_bl48_to_read[1].observed_interval, vif.rule_interval_table385_read_bl24_or_bl48_to_read[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table385_read_bl24_or_bl48_to_read[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table385_read_bl24_or_bl48_to_read[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table385_read_bl24_or_bl48_to_read_sc1

  cg_rule_interval_table385_read_bl24_or_bl48_to_read_sc1 cg_rule_interval_table385_read_bl24_or_bl48_to_read_sc1_inst = new();

  covergroup cg_rule_interval_table388_read_bl24_or_bl48_to_read_sc0 @(vif.rule_interval_table388_read_bl24_or_bl48_to_read_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table388_read_bl24_or_bl48_to_read.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table388_read_bl24_or_bl48_to_read[0].pass iff (vif.rule_interval_table388_read_bl24_or_bl48_to_read[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table388_read_bl24_or_bl48_to_read[0].observed_interval, vif.rule_interval_table388_read_bl24_or_bl48_to_read[0].expected_interval), 0.001) iff (vif.rule_interval_table388_read_bl24_or_bl48_to_read[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table388_read_bl24_or_bl48_to_read[0].observed_interval, vif.rule_interval_table388_read_bl24_or_bl48_to_read[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table388_read_bl24_or_bl48_to_read[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table388_read_bl24_or_bl48_to_read[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table388_read_bl24_or_bl48_to_read_sc0

  cg_rule_interval_table388_read_bl24_or_bl48_to_read_sc0 cg_rule_interval_table388_read_bl24_or_bl48_to_read_sc0_inst = new();

  covergroup cg_rule_interval_table388_read_bl24_or_bl48_to_read_sc1 @(vif.rule_interval_table388_read_bl24_or_bl48_to_read_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table388_read_bl24_or_bl48_to_read.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table388_read_bl24_or_bl48_to_read[1].pass iff (vif.rule_interval_table388_read_bl24_or_bl48_to_read[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table388_read_bl24_or_bl48_to_read[1].observed_interval, vif.rule_interval_table388_read_bl24_or_bl48_to_read[1].expected_interval), 0.001) iff (vif.rule_interval_table388_read_bl24_or_bl48_to_read[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table388_read_bl24_or_bl48_to_read[1].observed_interval, vif.rule_interval_table388_read_bl24_or_bl48_to_read[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table388_read_bl24_or_bl48_to_read[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table388_read_bl24_or_bl48_to_read[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table388_read_bl24_or_bl48_to_read_sc1

  cg_rule_interval_table388_read_bl24_or_bl48_to_read_sc1 cg_rule_interval_table388_read_bl24_or_bl48_to_read_sc1_inst = new();

  covergroup cg_rule_interval_table385_read_bl24_or_bl48_to_write_nt_off_sc0 @(vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table385_read_bl24_or_bl48_to_write_nt_off.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off[0].pass iff (vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off[0].observed_interval, vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off[0].expected_interval), 0.001) iff (vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off[0].observed_interval, vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table385_read_bl24_or_bl48_to_write_nt_off_sc0

  cg_rule_interval_table385_read_bl24_or_bl48_to_write_nt_off_sc0 cg_rule_interval_table385_read_bl24_or_bl48_to_write_nt_off_sc0_inst = new();

  covergroup cg_rule_interval_table385_read_bl24_or_bl48_to_write_nt_off_sc1 @(vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table385_read_bl24_or_bl48_to_write_nt_off.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off[1].pass iff (vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off[1].observed_interval, vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off[1].expected_interval), 0.001) iff (vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off[1].observed_interval, vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_off[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table385_read_bl24_or_bl48_to_write_nt_off_sc1

  cg_rule_interval_table385_read_bl24_or_bl48_to_write_nt_off_sc1 cg_rule_interval_table385_read_bl24_or_bl48_to_write_nt_off_sc1_inst = new();

  covergroup cg_rule_interval_table385_read_bl24_or_bl48_to_write_nt_on_sc0 @(vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table385_read_bl24_or_bl48_to_write_nt_on.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on[0].pass iff (vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on[0].observed_interval, vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on[0].expected_interval), 0.001) iff (vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on[0].observed_interval, vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table385_read_bl24_or_bl48_to_write_nt_on_sc0

  cg_rule_interval_table385_read_bl24_or_bl48_to_write_nt_on_sc0 cg_rule_interval_table385_read_bl24_or_bl48_to_write_nt_on_sc0_inst = new();

  covergroup cg_rule_interval_table385_read_bl24_or_bl48_to_write_nt_on_sc1 @(vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table385_read_bl24_or_bl48_to_write_nt_on.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on[1].pass iff (vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on[1].observed_interval, vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on[1].expected_interval), 0.001) iff (vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on[1].observed_interval, vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table385_read_bl24_or_bl48_to_write_nt_on[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table385_read_bl24_or_bl48_to_write_nt_on_sc1

  cg_rule_interval_table385_read_bl24_or_bl48_to_write_nt_on_sc1 cg_rule_interval_table385_read_bl24_or_bl48_to_write_nt_on_sc1_inst = new();

  covergroup cg_rule_interval_table388_read_bl24_or_bl48_to_write_nt_off_sc0 @(vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table388_read_bl24_or_bl48_to_write_nt_off.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off[0].pass iff (vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off[0].observed_interval, vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off[0].expected_interval), 0.001) iff (vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off[0].observed_interval, vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table388_read_bl24_or_bl48_to_write_nt_off_sc0

  cg_rule_interval_table388_read_bl24_or_bl48_to_write_nt_off_sc0 cg_rule_interval_table388_read_bl24_or_bl48_to_write_nt_off_sc0_inst = new();

  covergroup cg_rule_interval_table388_read_bl24_or_bl48_to_write_nt_off_sc1 @(vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table388_read_bl24_or_bl48_to_write_nt_off.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off[1].pass iff (vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off[1].observed_interval, vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off[1].expected_interval), 0.001) iff (vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off[1].observed_interval, vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_off[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table388_read_bl24_or_bl48_to_write_nt_off_sc1

  cg_rule_interval_table388_read_bl24_or_bl48_to_write_nt_off_sc1 cg_rule_interval_table388_read_bl24_or_bl48_to_write_nt_off_sc1_inst = new();

  covergroup cg_rule_interval_table388_read_bl24_or_bl48_to_write_nt_on_sc0 @(vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table388_read_bl24_or_bl48_to_write_nt_on.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on[0].pass iff (vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on[0].observed_interval, vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on[0].expected_interval), 0.001) iff (vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on[0].observed_interval, vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table388_read_bl24_or_bl48_to_write_nt_on_sc0

  cg_rule_interval_table388_read_bl24_or_bl48_to_write_nt_on_sc0 cg_rule_interval_table388_read_bl24_or_bl48_to_write_nt_on_sc0_inst = new();

  covergroup cg_rule_interval_table388_read_bl24_or_bl48_to_write_nt_on_sc1 @(vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table388_read_bl24_or_bl48_to_write_nt_on.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on[1].pass iff (vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on[1].observed_interval, vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on[1].expected_interval), 0.001) iff (vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on[1].observed_interval, vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table388_read_bl24_or_bl48_to_write_nt_on[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table388_read_bl24_or_bl48_to_write_nt_on_sc1

  cg_rule_interval_table388_read_bl24_or_bl48_to_write_nt_on_sc1 cg_rule_interval_table388_read_bl24_or_bl48_to_write_nt_on_sc1_inst = new();

  covergroup cg_rule_interval_table385_write_bl24_or_bl48_to_read_sc0 @(vif.rule_interval_table385_write_bl24_or_bl48_to_read_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table385_write_bl24_or_bl48_to_read.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table385_write_bl24_or_bl48_to_read[0].pass iff (vif.rule_interval_table385_write_bl24_or_bl48_to_read[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_write_bl24_or_bl48_to_read[0].observed_interval, vif.rule_interval_table385_write_bl24_or_bl48_to_read[0].expected_interval), 0.001) iff (vif.rule_interval_table385_write_bl24_or_bl48_to_read[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_write_bl24_or_bl48_to_read[0].observed_interval, vif.rule_interval_table385_write_bl24_or_bl48_to_read[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table385_write_bl24_or_bl48_to_read[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table385_write_bl24_or_bl48_to_read[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table385_write_bl24_or_bl48_to_read_sc0

  cg_rule_interval_table385_write_bl24_or_bl48_to_read_sc0 cg_rule_interval_table385_write_bl24_or_bl48_to_read_sc0_inst = new();

  covergroup cg_rule_interval_table385_write_bl24_or_bl48_to_read_sc1 @(vif.rule_interval_table385_write_bl24_or_bl48_to_read_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table385_write_bl24_or_bl48_to_read.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table385_write_bl24_or_bl48_to_read[1].pass iff (vif.rule_interval_table385_write_bl24_or_bl48_to_read[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_write_bl24_or_bl48_to_read[1].observed_interval, vif.rule_interval_table385_write_bl24_or_bl48_to_read[1].expected_interval), 0.001) iff (vif.rule_interval_table385_write_bl24_or_bl48_to_read[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_write_bl24_or_bl48_to_read[1].observed_interval, vif.rule_interval_table385_write_bl24_or_bl48_to_read[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table385_write_bl24_or_bl48_to_read[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table385_write_bl24_or_bl48_to_read[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table385_write_bl24_or_bl48_to_read_sc1

  cg_rule_interval_table385_write_bl24_or_bl48_to_read_sc1 cg_rule_interval_table385_write_bl24_or_bl48_to_read_sc1_inst = new();

  covergroup cg_rule_interval_table385_write_bl24_or_bl48_to_write_sc0 @(vif.rule_interval_table385_write_bl24_or_bl48_to_write_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table385_write_bl24_or_bl48_to_write.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table385_write_bl24_or_bl48_to_write[0].pass iff (vif.rule_interval_table385_write_bl24_or_bl48_to_write[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_write_bl24_or_bl48_to_write[0].observed_interval, vif.rule_interval_table385_write_bl24_or_bl48_to_write[0].expected_interval), 0.001) iff (vif.rule_interval_table385_write_bl24_or_bl48_to_write[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_write_bl24_or_bl48_to_write[0].observed_interval, vif.rule_interval_table385_write_bl24_or_bl48_to_write[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table385_write_bl24_or_bl48_to_write[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table385_write_bl24_or_bl48_to_write[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table385_write_bl24_or_bl48_to_write_sc0

  cg_rule_interval_table385_write_bl24_or_bl48_to_write_sc0 cg_rule_interval_table385_write_bl24_or_bl48_to_write_sc0_inst = new();

  covergroup cg_rule_interval_table385_write_bl24_or_bl48_to_write_sc1 @(vif.rule_interval_table385_write_bl24_or_bl48_to_write_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table385_write_bl24_or_bl48_to_write.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table385_write_bl24_or_bl48_to_write[1].pass iff (vif.rule_interval_table385_write_bl24_or_bl48_to_write[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_write_bl24_or_bl48_to_write[1].observed_interval, vif.rule_interval_table385_write_bl24_or_bl48_to_write[1].expected_interval), 0.001) iff (vif.rule_interval_table385_write_bl24_or_bl48_to_write[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table385_write_bl24_or_bl48_to_write[1].observed_interval, vif.rule_interval_table385_write_bl24_or_bl48_to_write[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table385_write_bl24_or_bl48_to_write[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table385_write_bl24_or_bl48_to_write[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table385_write_bl24_or_bl48_to_write_sc1

  cg_rule_interval_table385_write_bl24_or_bl48_to_write_sc1 cg_rule_interval_table385_write_bl24_or_bl48_to_write_sc1_inst = new();

  covergroup cg_rule_interval_table391_read_with_ap_bl24_or_bl48_to_active_sc0 @(vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table391_read_with_ap_bl24_or_bl48_to_active.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active[0].pass iff (vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active[0].observed_interval, vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active[0].expected_interval), 0.001) iff (vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active[0].observed_interval, vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table391_read_with_ap_bl24_or_bl48_to_active_sc0

  cg_rule_interval_table391_read_with_ap_bl24_or_bl48_to_active_sc0 cg_rule_interval_table391_read_with_ap_bl24_or_bl48_to_active_sc0_inst = new();

  covergroup cg_rule_interval_table391_read_with_ap_bl24_or_bl48_to_active_sc1 @(vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table391_read_with_ap_bl24_or_bl48_to_active.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active[1].pass iff (vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active[1].observed_interval, vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active[1].expected_interval), 0.001) iff (vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active[1].observed_interval, vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_active[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table391_read_with_ap_bl24_or_bl48_to_active_sc1

  cg_rule_interval_table391_read_with_ap_bl24_or_bl48_to_active_sc1 cg_rule_interval_table391_read_with_ap_bl24_or_bl48_to_active_sc1_inst = new();

  covergroup cg_rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all_sc0 @(vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all[0].pass iff (vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all[0].observed_interval, vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all[0].expected_interval), 0.001) iff (vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all[0].observed_interval, vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all_sc0

  cg_rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all_sc0 cg_rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all_sc0_inst = new();

  covergroup cg_rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all_sc1 @(vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all[1].pass iff (vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all[1].observed_interval, vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all[1].expected_interval), 0.001) iff (vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all[1].observed_interval, vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all_sc1

  cg_rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all_sc1 cg_rule_interval_table391_read_with_ap_bl24_or_bl48_to_precharge_all_sc1_inst = new();

  covergroup cg_rule_interval_table391_write_with_ap_bl24_or_bl48_to_active_sc0 @(vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table391_write_with_ap_bl24_or_bl48_to_active.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active[0].pass iff (vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active[0].observed_interval, vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active[0].expected_interval), 0.001) iff (vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active[0].observed_interval, vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table391_write_with_ap_bl24_or_bl48_to_active_sc0

  cg_rule_interval_table391_write_with_ap_bl24_or_bl48_to_active_sc0 cg_rule_interval_table391_write_with_ap_bl24_or_bl48_to_active_sc0_inst = new();

  covergroup cg_rule_interval_table391_write_with_ap_bl24_or_bl48_to_active_sc1 @(vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table391_write_with_ap_bl24_or_bl48_to_active.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active[1].pass iff (vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active[1].observed_interval, vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active[1].expected_interval), 0.001) iff (vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active[1].observed_interval, vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_active[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table391_write_with_ap_bl24_or_bl48_to_active_sc1

  cg_rule_interval_table391_write_with_ap_bl24_or_bl48_to_active_sc1 cg_rule_interval_table391_write_with_ap_bl24_or_bl48_to_active_sc1_inst = new();

  covergroup cg_rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all_sc0 @(vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all[0].pass iff (vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all[0].observed_interval, vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all[0].expected_interval), 0.001) iff (vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all[0].observed_interval, vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all_sc0

  cg_rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all_sc0 cg_rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all_sc0_inst = new();

  covergroup cg_rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all_sc1 @(vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all[1].pass iff (vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all[1].observed_interval, vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all[1].expected_interval), 0.001) iff (vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all[1].observed_interval, vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all_sc1

  cg_rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all_sc1 cg_rule_interval_table391_write_with_ap_bl24_or_bl48_to_precharge_all_sc1_inst = new();

  covergroup cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc0 @(vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].pass iff (vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].observed_interval, vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].expected_interval), 0.001) iff (vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].observed_interval, vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc0

  cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc0 cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc0_inst = new();

  covergroup cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc1 @(vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].pass iff (vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].observed_interval, vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].expected_interval), 0.001) iff (vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].observed_interval, vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc1

  cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc1 cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc1_inst = new();

  covergroup cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc0 @(vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].pass iff (vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].observed_interval, vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].expected_interval), 0.001) iff (vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].observed_interval, vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc0

  cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc0 cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc0_inst = new();

  covergroup cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc1 @(vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].pass iff (vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].observed_interval, vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].expected_interval), 0.001) iff (vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].observed_interval, vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc1

  cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc1 cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc1_inst = new();

  covergroup cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all_sc0 @(vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all[0].pass iff (vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all[0].observed_interval, vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all[0].expected_interval), 0.001) iff (vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all[0].observed_interval, vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all_sc0

  cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all_sc0 cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all_sc0_inst = new();

  covergroup cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all_sc1 @(vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all[1].pass iff (vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all[1].observed_interval, vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all[1].expected_interval), 0.001) iff (vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all[1].observed_interval, vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all_sc1

  cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all_sc1 cg_rule_interval_table392_read_with_ap_bl24_or_bl48_to_precharge_all_sc1_inst = new();

  covergroup cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc0 @(vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].pass iff (vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].observed_interval, vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].expected_interval), 0.001) iff (vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].observed_interval, vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc0

  cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc0 cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc0_inst = new();

  covergroup cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc1 @(vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].pass iff (vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].observed_interval, vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].expected_interval), 0.001) iff (vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].observed_interval, vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc1

  cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc1 cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc1_inst = new();

  covergroup cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc0 @(vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].pass iff (vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].observed_interval, vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].expected_interval), 0.001) iff (vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].observed_interval, vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc0

  cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc0 cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc0_inst = new();

  covergroup cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc1 @(vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].pass iff (vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].observed_interval, vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].expected_interval), 0.001) iff (vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].observed_interval, vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc1

  cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc1 cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc1_inst = new();

  covergroup cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all_sc0 @(vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all[0].pass iff (vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all[0].observed_interval, vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all[0].expected_interval), 0.001) iff (vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all[0].observed_interval, vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all_sc0

  cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all_sc0 cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all_sc0_inst = new();

  covergroup cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all_sc1 @(vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all[1].pass iff (vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all[1].observed_interval, vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all[1].expected_interval), 0.001) iff (vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all[1].observed_interval, vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all_sc1

  cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all_sc1 cg_rule_interval_table392_write_with_ap_bl24_or_bl48_to_precharge_all_sc1_inst = new();

  covergroup cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc0 @(vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].pass iff (vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].observed_interval, vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].expected_interval), 0.001) iff (vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].observed_interval, vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc0

  cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc0 cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc0_inst = new();

  covergroup cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc1 @(vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].pass iff (vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].observed_interval, vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].expected_interval), 0.001) iff (vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].observed_interval, vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc1

  cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc1 cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc1_inst = new();

  covergroup cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc0 @(vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].pass iff (vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].observed_interval, vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].expected_interval), 0.001) iff (vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].observed_interval, vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc0

  cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc0 cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc0_inst = new();

  covergroup cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc1 @(vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].pass iff (vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].observed_interval, vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].expected_interval), 0.001) iff (vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].observed_interval, vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc1

  cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc1 cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc1_inst = new();

  covergroup cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all_sc0 @(vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all[0].pass iff (vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all[0].observed_interval, vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all[0].expected_interval), 0.001) iff (vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all[0].observed_interval, vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all_sc0

  cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all_sc0 cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all_sc0_inst = new();

  covergroup cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all_sc1 @(vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all[1].pass iff (vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all[1].observed_interval, vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all[1].expected_interval), 0.001) iff (vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all[1].observed_interval, vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all_sc1

  cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all_sc1 cg_rule_interval_table393_read_with_ap_bl24_or_bl48_to_precharge_all_sc1_inst = new();

  covergroup cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc0 @(vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].pass iff (vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].observed_interval, vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].expected_interval), 0.001) iff (vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].observed_interval, vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc0

  cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc0 cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc0_inst = new();

  covergroup cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc1 @(vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].pass iff (vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].observed_interval, vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].expected_interval), 0.001) iff (vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].observed_interval, vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc1

  cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc1 cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_sc1_inst = new();

  covergroup cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc0 @(vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].pass iff (vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].observed_interval, vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].expected_interval), 0.001) iff (vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].observed_interval, vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc0

  cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc0 cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc0_inst = new();

  covergroup cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc1 @(vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].pass iff (vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].observed_interval, vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].expected_interval), 0.001) iff (vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].observed_interval, vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc1

  cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc1 cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_sc1_inst = new();

  covergroup cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all_sc0 @(vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all[0].pass iff (vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all[0].observed_interval, vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all[0].expected_interval), 0.001) iff (vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all[0].observed_interval, vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all_sc0

  cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all_sc0 cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all_sc0_inst = new();

  covergroup cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all_sc1 @(vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all[1].pass iff (vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all[1].observed_interval, vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all[1].expected_interval), 0.001) iff (vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all[1].observed_interval, vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all_sc1

  cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all_sc1 cg_rule_interval_table393_write_with_ap_bl24_or_bl48_to_precharge_all_sc1_inst = new();

  covergroup cg_rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1_sc0 @(vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1[0].pass iff (vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1[0].observed_interval, vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1[0].expected_interval), 0.001) iff (vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1[0].observed_interval, vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1_sc0

  cg_rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1_sc0 cg_rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1_sc0_inst = new();

  covergroup cg_rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1_sc1 @(vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1[1].pass iff (vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1[1].observed_interval, vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1[1].expected_interval), 0.001) iff (vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1[1].observed_interval, vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1_sc1

  cg_rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1_sc1 cg_rule_interval_table394_cas_ws_1_ws_off_0_to_cas_ws_0_ws_off_1_sc1_inst = new();

  covergroup cg_rule_interval_table399_mrr_to_mrr_sc0 @(vif.rule_interval_table399_mrr_to_mrr_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table399_mrr_to_mrr.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table399_mrr_to_mrr[0].pass iff (vif.rule_interval_table399_mrr_to_mrr[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrr_to_mrr[0].observed_interval, vif.rule_interval_table399_mrr_to_mrr[0].expected_interval), 0.001) iff (vif.rule_interval_table399_mrr_to_mrr[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrr_to_mrr[0].observed_interval, vif.rule_interval_table399_mrr_to_mrr[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table399_mrr_to_mrr[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table399_mrr_to_mrr[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table399_mrr_to_mrr_sc0

  cg_rule_interval_table399_mrr_to_mrr_sc0 cg_rule_interval_table399_mrr_to_mrr_sc0_inst = new();

  covergroup cg_rule_interval_table399_mrr_to_mrr_sc1 @(vif.rule_interval_table399_mrr_to_mrr_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table399_mrr_to_mrr.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table399_mrr_to_mrr[1].pass iff (vif.rule_interval_table399_mrr_to_mrr[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrr_to_mrr[1].observed_interval, vif.rule_interval_table399_mrr_to_mrr[1].expected_interval), 0.001) iff (vif.rule_interval_table399_mrr_to_mrr[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrr_to_mrr[1].observed_interval, vif.rule_interval_table399_mrr_to_mrr[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table399_mrr_to_mrr[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table399_mrr_to_mrr[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table399_mrr_to_mrr_sc1

  cg_rule_interval_table399_mrr_to_mrr_sc1 cg_rule_interval_table399_mrr_to_mrr_sc1_inst = new();

  covergroup cg_rule_interval_table399_mrr_to_mrw_unaffected_sc0 @(vif.rule_interval_table399_mrr_to_mrw_unaffected_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table399_mrr_to_mrw_unaffected.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table399_mrr_to_mrw_unaffected[0].pass iff (vif.rule_interval_table399_mrr_to_mrw_unaffected[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrr_to_mrw_unaffected[0].observed_interval, vif.rule_interval_table399_mrr_to_mrw_unaffected[0].expected_interval), 0.001) iff (vif.rule_interval_table399_mrr_to_mrw_unaffected[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrr_to_mrw_unaffected[0].observed_interval, vif.rule_interval_table399_mrr_to_mrw_unaffected[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table399_mrr_to_mrw_unaffected[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table399_mrr_to_mrw_unaffected[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table399_mrr_to_mrw_unaffected_sc0

  cg_rule_interval_table399_mrr_to_mrw_unaffected_sc0 cg_rule_interval_table399_mrr_to_mrw_unaffected_sc0_inst = new();

  covergroup cg_rule_interval_table399_mrr_to_mrw_unaffected_sc1 @(vif.rule_interval_table399_mrr_to_mrw_unaffected_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table399_mrr_to_mrw_unaffected.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table399_mrr_to_mrw_unaffected[1].pass iff (vif.rule_interval_table399_mrr_to_mrw_unaffected[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrr_to_mrw_unaffected[1].observed_interval, vif.rule_interval_table399_mrr_to_mrw_unaffected[1].expected_interval), 0.001) iff (vif.rule_interval_table399_mrr_to_mrw_unaffected[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrr_to_mrw_unaffected[1].observed_interval, vif.rule_interval_table399_mrr_to_mrw_unaffected[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table399_mrr_to_mrw_unaffected[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table399_mrr_to_mrw_unaffected[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table399_mrr_to_mrw_unaffected_sc1

  cg_rule_interval_table399_mrr_to_mrw_unaffected_sc1 cg_rule_interval_table399_mrr_to_mrw_unaffected_sc1_inst = new();

  covergroup cg_rule_interval_table399_rd_to_mrr_sc0 @(vif.rule_interval_table399_rd_to_mrr_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table399_rd_to_mrr.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table399_rd_to_mrr[0].pass iff (vif.rule_interval_table399_rd_to_mrr[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_rd_to_mrr[0].observed_interval, vif.rule_interval_table399_rd_to_mrr[0].expected_interval), 0.001) iff (vif.rule_interval_table399_rd_to_mrr[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_rd_to_mrr[0].observed_interval, vif.rule_interval_table399_rd_to_mrr[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table399_rd_to_mrr[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table399_rd_to_mrr[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table399_rd_to_mrr_sc0

  cg_rule_interval_table399_rd_to_mrr_sc0 cg_rule_interval_table399_rd_to_mrr_sc0_inst = new();

  covergroup cg_rule_interval_table399_rd_to_mrr_sc1 @(vif.rule_interval_table399_rd_to_mrr_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table399_rd_to_mrr.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table399_rd_to_mrr[1].pass iff (vif.rule_interval_table399_rd_to_mrr[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_rd_to_mrr[1].observed_interval, vif.rule_interval_table399_rd_to_mrr[1].expected_interval), 0.001) iff (vif.rule_interval_table399_rd_to_mrr[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_rd_to_mrr[1].observed_interval, vif.rule_interval_table399_rd_to_mrr[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table399_rd_to_mrr[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table399_rd_to_mrr[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table399_rd_to_mrr_sc1

  cg_rule_interval_table399_rd_to_mrr_sc1 cg_rule_interval_table399_rd_to_mrr_sc1_inst = new();

  covergroup cg_rule_interval_table399_wr_to_mrr_sc0 @(vif.rule_interval_table399_wr_to_mrr_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table399_wr_to_mrr.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table399_wr_to_mrr[0].pass iff (vif.rule_interval_table399_wr_to_mrr[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_wr_to_mrr[0].observed_interval, vif.rule_interval_table399_wr_to_mrr[0].expected_interval), 0.001) iff (vif.rule_interval_table399_wr_to_mrr[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_wr_to_mrr[0].observed_interval, vif.rule_interval_table399_wr_to_mrr[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table399_wr_to_mrr[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table399_wr_to_mrr[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table399_wr_to_mrr_sc0

  cg_rule_interval_table399_wr_to_mrr_sc0 cg_rule_interval_table399_wr_to_mrr_sc0_inst = new();

  covergroup cg_rule_interval_table399_wr_to_mrr_sc1 @(vif.rule_interval_table399_wr_to_mrr_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table399_wr_to_mrr.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table399_wr_to_mrr[1].pass iff (vif.rule_interval_table399_wr_to_mrr[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_wr_to_mrr[1].observed_interval, vif.rule_interval_table399_wr_to_mrr[1].expected_interval), 0.001) iff (vif.rule_interval_table399_wr_to_mrr[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_wr_to_mrr[1].observed_interval, vif.rule_interval_table399_wr_to_mrr[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table399_wr_to_mrr[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table399_wr_to_mrr[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table399_wr_to_mrr_sc1

  cg_rule_interval_table399_wr_to_mrr_sc1 cg_rule_interval_table399_wr_to_mrr_sc1_inst = new();

  covergroup cg_rule_interval_table399_mrw_to_mrr_sc0 @(vif.rule_interval_table399_mrw_to_mrr_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table399_mrw_to_mrr.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table399_mrw_to_mrr[0].pass iff (vif.rule_interval_table399_mrw_to_mrr[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrw_to_mrr[0].observed_interval, vif.rule_interval_table399_mrw_to_mrr[0].expected_interval), 0.001) iff (vif.rule_interval_table399_mrw_to_mrr[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrw_to_mrr[0].observed_interval, vif.rule_interval_table399_mrw_to_mrr[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table399_mrw_to_mrr[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table399_mrw_to_mrr[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table399_mrw_to_mrr_sc0

  cg_rule_interval_table399_mrw_to_mrr_sc0 cg_rule_interval_table399_mrw_to_mrr_sc0_inst = new();

  covergroup cg_rule_interval_table399_mrw_to_mrr_sc1 @(vif.rule_interval_table399_mrw_to_mrr_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table399_mrw_to_mrr.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table399_mrw_to_mrr[1].pass iff (vif.rule_interval_table399_mrw_to_mrr[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrw_to_mrr[1].observed_interval, vif.rule_interval_table399_mrw_to_mrr[1].expected_interval), 0.001) iff (vif.rule_interval_table399_mrw_to_mrr[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrw_to_mrr[1].observed_interval, vif.rule_interval_table399_mrw_to_mrr[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table399_mrw_to_mrr[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table399_mrw_to_mrr[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table399_mrw_to_mrr_sc1

  cg_rule_interval_table399_mrw_to_mrr_sc1 cg_rule_interval_table399_mrw_to_mrr_sc1_inst = new();

  covergroup cg_rule_interval_table399_mrw_to_mrw_sc0 @(vif.rule_interval_table399_mrw_to_mrw_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table399_mrw_to_mrw.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table399_mrw_to_mrw[0].pass iff (vif.rule_interval_table399_mrw_to_mrw[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrw_to_mrw[0].observed_interval, vif.rule_interval_table399_mrw_to_mrw[0].expected_interval), 0.001) iff (vif.rule_interval_table399_mrw_to_mrw[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrw_to_mrw[0].observed_interval, vif.rule_interval_table399_mrw_to_mrw[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table399_mrw_to_mrw[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table399_mrw_to_mrw[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table399_mrw_to_mrw_sc0

  cg_rule_interval_table399_mrw_to_mrw_sc0 cg_rule_interval_table399_mrw_to_mrw_sc0_inst = new();

  covergroup cg_rule_interval_table399_mrw_to_mrw_sc1 @(vif.rule_interval_table399_mrw_to_mrw_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table399_mrw_to_mrw.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table399_mrw_to_mrw[1].pass iff (vif.rule_interval_table399_mrw_to_mrw[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrw_to_mrw[1].observed_interval, vif.rule_interval_table399_mrw_to_mrw[1].expected_interval), 0.001) iff (vif.rule_interval_table399_mrw_to_mrw[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrw_to_mrw[1].observed_interval, vif.rule_interval_table399_mrw_to_mrw[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table399_mrw_to_mrw[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table399_mrw_to_mrw[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table399_mrw_to_mrw_sc1

  cg_rule_interval_table399_mrw_to_mrw_sc1 cg_rule_interval_table399_mrw_to_mrw_sc1_inst = new();

  covergroup cg_rule_interval_self_refresh_entry_to_exit_tsr_sc0 @(vif.rule_interval_self_refresh_entry_to_exit_tsr_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_self_refresh_entry_to_exit_tsr.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_self_refresh_entry_to_exit_tsr[0].pass iff (vif.rule_interval_self_refresh_entry_to_exit_tsr[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_self_refresh_entry_to_exit_tsr[0].observed_interval, vif.rule_interval_self_refresh_entry_to_exit_tsr[0].expected_interval), 0.001) iff (vif.rule_interval_self_refresh_entry_to_exit_tsr[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_self_refresh_entry_to_exit_tsr[0].observed_interval, vif.rule_interval_self_refresh_entry_to_exit_tsr[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_self_refresh_entry_to_exit_tsr[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_self_refresh_entry_to_exit_tsr[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_self_refresh_entry_to_exit_tsr_sc0

  cg_rule_interval_self_refresh_entry_to_exit_tsr_sc0 cg_rule_interval_self_refresh_entry_to_exit_tsr_sc0_inst = new();

  covergroup cg_rule_interval_self_refresh_entry_to_exit_tsr_sc1 @(vif.rule_interval_self_refresh_entry_to_exit_tsr_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_self_refresh_entry_to_exit_tsr.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_self_refresh_entry_to_exit_tsr[1].pass iff (vif.rule_interval_self_refresh_entry_to_exit_tsr[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_self_refresh_entry_to_exit_tsr[1].observed_interval, vif.rule_interval_self_refresh_entry_to_exit_tsr[1].expected_interval), 0.001) iff (vif.rule_interval_self_refresh_entry_to_exit_tsr[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_self_refresh_entry_to_exit_tsr[1].observed_interval, vif.rule_interval_self_refresh_entry_to_exit_tsr[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_self_refresh_entry_to_exit_tsr[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_self_refresh_entry_to_exit_tsr[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_self_refresh_entry_to_exit_tsr_sc1

  cg_rule_interval_self_refresh_entry_to_exit_tsr_sc1 cg_rule_interval_self_refresh_entry_to_exit_tsr_sc1_inst = new();

  covergroup cg_rule_interval_self_refresh_exit_to_mrr_2nck_sc0 @(vif.rule_interval_self_refresh_exit_to_mrr_2nck_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_self_refresh_exit_to_mrr_2nck.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_self_refresh_exit_to_mrr_2nck[0].pass iff (vif.rule_interval_self_refresh_exit_to_mrr_2nck[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_self_refresh_exit_to_mrr_2nck[0].observed_interval, vif.rule_interval_self_refresh_exit_to_mrr_2nck[0].expected_interval), 0.001) iff (vif.rule_interval_self_refresh_exit_to_mrr_2nck[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_self_refresh_exit_to_mrr_2nck[0].observed_interval, vif.rule_interval_self_refresh_exit_to_mrr_2nck[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_self_refresh_exit_to_mrr_2nck[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_self_refresh_exit_to_mrr_2nck[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_self_refresh_exit_to_mrr_2nck_sc0

  cg_rule_interval_self_refresh_exit_to_mrr_2nck_sc0 cg_rule_interval_self_refresh_exit_to_mrr_2nck_sc0_inst = new();

  covergroup cg_rule_interval_self_refresh_exit_to_mrr_2nck_sc1 @(vif.rule_interval_self_refresh_exit_to_mrr_2nck_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_self_refresh_exit_to_mrr_2nck.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_self_refresh_exit_to_mrr_2nck[1].pass iff (vif.rule_interval_self_refresh_exit_to_mrr_2nck[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_self_refresh_exit_to_mrr_2nck[1].observed_interval, vif.rule_interval_self_refresh_exit_to_mrr_2nck[1].expected_interval), 0.001) iff (vif.rule_interval_self_refresh_exit_to_mrr_2nck[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_self_refresh_exit_to_mrr_2nck[1].observed_interval, vif.rule_interval_self_refresh_exit_to_mrr_2nck[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_self_refresh_exit_to_mrr_2nck[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_self_refresh_exit_to_mrr_2nck[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_self_refresh_exit_to_mrr_2nck_sc1

  cg_rule_interval_self_refresh_exit_to_mrr_2nck_sc1 cg_rule_interval_self_refresh_exit_to_mrr_2nck_sc1_inst = new();

  covergroup cg_rule_interval_self_refresh_exit_to_mrw_1_2nck_sc0 @(vif.rule_interval_self_refresh_exit_to_mrw_1_2nck_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_self_refresh_exit_to_mrw_1_2nck.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_self_refresh_exit_to_mrw_1_2nck[0].pass iff (vif.rule_interval_self_refresh_exit_to_mrw_1_2nck[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_self_refresh_exit_to_mrw_1_2nck[0].observed_interval, vif.rule_interval_self_refresh_exit_to_mrw_1_2nck[0].expected_interval), 0.001) iff (vif.rule_interval_self_refresh_exit_to_mrw_1_2nck[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_self_refresh_exit_to_mrw_1_2nck[0].observed_interval, vif.rule_interval_self_refresh_exit_to_mrw_1_2nck[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_self_refresh_exit_to_mrw_1_2nck[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_self_refresh_exit_to_mrw_1_2nck[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_self_refresh_exit_to_mrw_1_2nck_sc0

  cg_rule_interval_self_refresh_exit_to_mrw_1_2nck_sc0 cg_rule_interval_self_refresh_exit_to_mrw_1_2nck_sc0_inst = new();

  covergroup cg_rule_interval_self_refresh_exit_to_mrw_1_2nck_sc1 @(vif.rule_interval_self_refresh_exit_to_mrw_1_2nck_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_self_refresh_exit_to_mrw_1_2nck.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_self_refresh_exit_to_mrw_1_2nck[1].pass iff (vif.rule_interval_self_refresh_exit_to_mrw_1_2nck[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_self_refresh_exit_to_mrw_1_2nck[1].observed_interval, vif.rule_interval_self_refresh_exit_to_mrw_1_2nck[1].expected_interval), 0.001) iff (vif.rule_interval_self_refresh_exit_to_mrw_1_2nck[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_self_refresh_exit_to_mrw_1_2nck[1].observed_interval, vif.rule_interval_self_refresh_exit_to_mrw_1_2nck[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_self_refresh_exit_to_mrw_1_2nck[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_self_refresh_exit_to_mrw_1_2nck[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_self_refresh_exit_to_mrw_1_2nck_sc1

  cg_rule_interval_self_refresh_exit_to_mrw_1_2nck_sc1 cg_rule_interval_self_refresh_exit_to_mrw_1_2nck_sc1_inst = new();

  covergroup cg_rule_interval_table307_activate_2_to_power_down_entry_tcmdpd_sc0 @(vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_activate_2_to_power_down_entry_tcmdpd.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd[0].pass iff (vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd[0].observed_interval, vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd[0].expected_interval), 0.001) iff (vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd[0].observed_interval, vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_activate_2_to_power_down_entry_tcmdpd_sc0

  cg_rule_interval_table307_activate_2_to_power_down_entry_tcmdpd_sc0 cg_rule_interval_table307_activate_2_to_power_down_entry_tcmdpd_sc0_inst = new();

  covergroup cg_rule_interval_table307_activate_2_to_power_down_entry_tcmdpd_sc1 @(vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_activate_2_to_power_down_entry_tcmdpd.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd[1].pass iff (vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd[1].observed_interval, vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd[1].expected_interval), 0.001) iff (vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd[1].observed_interval, vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_activate_2_to_power_down_entry_tcmdpd[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_activate_2_to_power_down_entry_tcmdpd_sc1

  cg_rule_interval_table307_activate_2_to_power_down_entry_tcmdpd_sc1 cg_rule_interval_table307_activate_2_to_power_down_entry_tcmdpd_sc1_inst = new();

  covergroup cg_rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd_sc0 @(vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd[0].pass iff (vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd[0].observed_interval, vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd[0].expected_interval), 0.001) iff (vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd[0].observed_interval, vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd_sc0

  cg_rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd_sc0 cg_rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd_sc0_inst = new();

  covergroup cg_rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd_sc1 @(vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd[1].pass iff (vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd[1].observed_interval, vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd[1].expected_interval), 0.001) iff (vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd[1].observed_interval, vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd_sc1

  cg_rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd_sc1 cg_rule_interval_table307_precharge_to_power_down_entry_nacu_plus_tcmdpd_sc1_inst = new();

  covergroup cg_rule_interval_table307_write_no_ap_to_power_down_entry_sc0 @(vif.rule_interval_table307_write_no_ap_to_power_down_entry_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_write_no_ap_to_power_down_entry.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_write_no_ap_to_power_down_entry[0].pass iff (vif.rule_interval_table307_write_no_ap_to_power_down_entry[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_write_no_ap_to_power_down_entry[0].observed_interval, vif.rule_interval_table307_write_no_ap_to_power_down_entry[0].expected_interval), 0.001) iff (vif.rule_interval_table307_write_no_ap_to_power_down_entry[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_write_no_ap_to_power_down_entry[0].observed_interval, vif.rule_interval_table307_write_no_ap_to_power_down_entry[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table307_write_no_ap_to_power_down_entry[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_write_no_ap_to_power_down_entry[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_write_no_ap_to_power_down_entry_sc0

  cg_rule_interval_table307_write_no_ap_to_power_down_entry_sc0 cg_rule_interval_table307_write_no_ap_to_power_down_entry_sc0_inst = new();

  covergroup cg_rule_interval_table307_write_no_ap_to_power_down_entry_sc1 @(vif.rule_interval_table307_write_no_ap_to_power_down_entry_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_write_no_ap_to_power_down_entry.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_write_no_ap_to_power_down_entry[1].pass iff (vif.rule_interval_table307_write_no_ap_to_power_down_entry[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_write_no_ap_to_power_down_entry[1].observed_interval, vif.rule_interval_table307_write_no_ap_to_power_down_entry[1].expected_interval), 0.001) iff (vif.rule_interval_table307_write_no_ap_to_power_down_entry[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_write_no_ap_to_power_down_entry[1].observed_interval, vif.rule_interval_table307_write_no_ap_to_power_down_entry[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table307_write_no_ap_to_power_down_entry[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_write_no_ap_to_power_down_entry[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_write_no_ap_to_power_down_entry_sc1

  cg_rule_interval_table307_write_no_ap_to_power_down_entry_sc1 cg_rule_interval_table307_write_no_ap_to_power_down_entry_sc1_inst = new();

  covergroup cg_rule_interval_table307_write_with_ap_to_power_down_entry_sc0 @(vif.rule_interval_table307_write_with_ap_to_power_down_entry_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_write_with_ap_to_power_down_entry.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_write_with_ap_to_power_down_entry[0].pass iff (vif.rule_interval_table307_write_with_ap_to_power_down_entry[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_write_with_ap_to_power_down_entry[0].observed_interval, vif.rule_interval_table307_write_with_ap_to_power_down_entry[0].expected_interval), 0.001) iff (vif.rule_interval_table307_write_with_ap_to_power_down_entry[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_write_with_ap_to_power_down_entry[0].observed_interval, vif.rule_interval_table307_write_with_ap_to_power_down_entry[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table307_write_with_ap_to_power_down_entry[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_write_with_ap_to_power_down_entry[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_write_with_ap_to_power_down_entry_sc0

  cg_rule_interval_table307_write_with_ap_to_power_down_entry_sc0 cg_rule_interval_table307_write_with_ap_to_power_down_entry_sc0_inst = new();

  covergroup cg_rule_interval_table307_write_with_ap_to_power_down_entry_sc1 @(vif.rule_interval_table307_write_with_ap_to_power_down_entry_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_write_with_ap_to_power_down_entry.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_write_with_ap_to_power_down_entry[1].pass iff (vif.rule_interval_table307_write_with_ap_to_power_down_entry[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_write_with_ap_to_power_down_entry[1].observed_interval, vif.rule_interval_table307_write_with_ap_to_power_down_entry[1].expected_interval), 0.001) iff (vif.rule_interval_table307_write_with_ap_to_power_down_entry[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_write_with_ap_to_power_down_entry[1].observed_interval, vif.rule_interval_table307_write_with_ap_to_power_down_entry[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table307_write_with_ap_to_power_down_entry[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_write_with_ap_to_power_down_entry[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_write_with_ap_to_power_down_entry_sc1

  cg_rule_interval_table307_write_with_ap_to_power_down_entry_sc1 cg_rule_interval_table307_write_with_ap_to_power_down_entry_sc1_inst = new();

  covergroup cg_rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd_sc0 @(vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd[0].pass iff (vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd[0].observed_interval, vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd[0].expected_interval), 0.001) iff (vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd[0].observed_interval, vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd_sc0

  cg_rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd_sc0 cg_rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd_sc0_inst = new();

  covergroup cg_rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd_sc1 @(vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd[1].pass iff (vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd[1].observed_interval, vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd[1].expected_interval), 0.001) iff (vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd[1].observed_interval, vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd_sc1

  cg_rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd_sc1 cg_rule_interval_table307_mrw_2_to_power_down_entry_tmrwpd_sc1_inst = new();

  covergroup cg_rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd_sc0 @(vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd[0].pass iff (vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd[0].observed_interval, vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd[0].expected_interval), 0.001) iff (vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd[0].observed_interval, vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd_sc0

  cg_rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd_sc0 cg_rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd_sc0_inst = new();

  covergroup cg_rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd_sc1 @(vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd[1].pass iff (vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd[1].observed_interval, vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd[1].expected_interval), 0.001) iff (vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd[1].observed_interval, vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd_sc1

  cg_rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd_sc1 cg_rule_interval_table307_cas_ws_to_power_down_entry_tcmdpd_sc1_inst = new();

  covergroup cg_rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd_sc0 @(vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd[0].pass iff (vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd[0].observed_interval, vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd[0].expected_interval), 0.001) iff (vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd[0].observed_interval, vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd_sc0

  cg_rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd_sc0 cg_rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd_sc0_inst = new();

  covergroup cg_rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd_sc1 @(vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd[1].pass iff (vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd[1].observed_interval, vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd[1].expected_interval), 0.001) iff (vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd[1].observed_interval, vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd_sc1

  cg_rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd_sc1 cg_rule_interval_table307_cas_ws_off_to_power_down_entry_tcmdpd_sc1_inst = new();

  covergroup cg_rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd_sc0 @(vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd[0].pass iff (vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd[0].observed_interval, vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd[0].expected_interval), 0.001) iff (vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd[0].observed_interval, vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd_sc0

  cg_rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd_sc0 cg_rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd_sc0_inst = new();

  covergroup cg_rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd_sc1 @(vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd[1].pass iff (vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd[1].observed_interval, vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd[1].expected_interval), 0.001) iff (vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd[1].observed_interval, vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd_sc1

  cg_rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd_sc1 cg_rule_interval_table307_cas_no_ws_to_power_down_entry_tcmdpd_sc1_inst = new();

  covergroup cg_rule_interval_table300_refdb_to_refdb_sc0 @(vif.rule_interval_table300_refdb_to_refdb_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table300_refdb_to_refdb.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table300_refdb_to_refdb[0].pass iff (vif.rule_interval_table300_refdb_to_refdb[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table300_refdb_to_refdb[0].observed_interval, vif.rule_interval_table300_refdb_to_refdb[0].expected_interval), 0.001) iff (vif.rule_interval_table300_refdb_to_refdb[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table300_refdb_to_refdb[0].observed_interval, vif.rule_interval_table300_refdb_to_refdb[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table300_refdb_to_refdb[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table300_refdb_to_refdb[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table300_refdb_to_refdb_sc0

  cg_rule_interval_table300_refdb_to_refdb_sc0 cg_rule_interval_table300_refdb_to_refdb_sc0_inst = new();

  covergroup cg_rule_interval_table300_refdb_to_refdb_sc1 @(vif.rule_interval_table300_refdb_to_refdb_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table300_refdb_to_refdb.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table300_refdb_to_refdb[1].pass iff (vif.rule_interval_table300_refdb_to_refdb[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table300_refdb_to_refdb[1].observed_interval, vif.rule_interval_table300_refdb_to_refdb[1].expected_interval), 0.001) iff (vif.rule_interval_table300_refdb_to_refdb[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table300_refdb_to_refdb[1].observed_interval, vif.rule_interval_table300_refdb_to_refdb[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table300_refdb_to_refdb[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table300_refdb_to_refdb[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table300_refdb_to_refdb_sc1

  cg_rule_interval_table300_refdb_to_refdb_sc1 cg_rule_interval_table300_refdb_to_refdb_sc1_inst = new();

  covergroup cg_rule_interval_refresh_db_to_refresh_ab_trfcdb_sc0 @(vif.rule_interval_refresh_db_to_refresh_ab_trfcdb_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_refresh_db_to_refresh_ab_trfcdb.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_refresh_db_to_refresh_ab_trfcdb[0].pass iff (vif.rule_interval_refresh_db_to_refresh_ab_trfcdb[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_refresh_db_to_refresh_ab_trfcdb[0].observed_interval, vif.rule_interval_refresh_db_to_refresh_ab_trfcdb[0].expected_interval), 0.001) iff (vif.rule_interval_refresh_db_to_refresh_ab_trfcdb[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_refresh_db_to_refresh_ab_trfcdb[0].observed_interval, vif.rule_interval_refresh_db_to_refresh_ab_trfcdb[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_refresh_db_to_refresh_ab_trfcdb[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_refresh_db_to_refresh_ab_trfcdb[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_refresh_db_to_refresh_ab_trfcdb_sc0

  cg_rule_interval_refresh_db_to_refresh_ab_trfcdb_sc0 cg_rule_interval_refresh_db_to_refresh_ab_trfcdb_sc0_inst = new();

  covergroup cg_rule_interval_refresh_db_to_refresh_ab_trfcdb_sc1 @(vif.rule_interval_refresh_db_to_refresh_ab_trfcdb_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_refresh_db_to_refresh_ab_trfcdb.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_refresh_db_to_refresh_ab_trfcdb[1].pass iff (vif.rule_interval_refresh_db_to_refresh_ab_trfcdb[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_refresh_db_to_refresh_ab_trfcdb[1].observed_interval, vif.rule_interval_refresh_db_to_refresh_ab_trfcdb[1].expected_interval), 0.001) iff (vif.rule_interval_refresh_db_to_refresh_ab_trfcdb[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_refresh_db_to_refresh_ab_trfcdb[1].observed_interval, vif.rule_interval_refresh_db_to_refresh_ab_trfcdb[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_refresh_db_to_refresh_ab_trfcdb[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_refresh_db_to_refresh_ab_trfcdb[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_refresh_db_to_refresh_ab_trfcdb_sc1

  cg_rule_interval_refresh_db_to_refresh_ab_trfcdb_sc1 cg_rule_interval_refresh_db_to_refresh_ab_trfcdb_sc1_inst = new();

  covergroup cg_rule_interval_precharge_to_refresh_db_same_bank_pair_trp_sc0 @(vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_precharge_to_refresh_db_same_bank_pair_trp.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp[0].pass iff (vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp[0].observed_interval, vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp[0].expected_interval), 0.001) iff (vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp[0].observed_interval, vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_precharge_to_refresh_db_same_bank_pair_trp_sc0

  cg_rule_interval_precharge_to_refresh_db_same_bank_pair_trp_sc0 cg_rule_interval_precharge_to_refresh_db_same_bank_pair_trp_sc0_inst = new();

  covergroup cg_rule_interval_precharge_to_refresh_db_same_bank_pair_trp_sc1 @(vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_precharge_to_refresh_db_same_bank_pair_trp.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp[1].pass iff (vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp[1].observed_interval, vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp[1].expected_interval), 0.001) iff (vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp[1].observed_interval, vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_precharge_to_refresh_db_same_bank_pair_trp[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_precharge_to_refresh_db_same_bank_pair_trp_sc1

  cg_rule_interval_precharge_to_refresh_db_same_bank_pair_trp_sc1 cg_rule_interval_precharge_to_refresh_db_same_bank_pair_trp_sc1_inst = new();

  covergroup cg_rule_interval_precharge_to_refresh_ab_trp_sc0 @(vif.rule_interval_precharge_to_refresh_ab_trp_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_precharge_to_refresh_ab_trp.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_precharge_to_refresh_ab_trp[0].pass iff (vif.rule_interval_precharge_to_refresh_ab_trp[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_precharge_to_refresh_ab_trp[0].observed_interval, vif.rule_interval_precharge_to_refresh_ab_trp[0].expected_interval), 0.001) iff (vif.rule_interval_precharge_to_refresh_ab_trp[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_precharge_to_refresh_ab_trp[0].observed_interval, vif.rule_interval_precharge_to_refresh_ab_trp[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_precharge_to_refresh_ab_trp[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_precharge_to_refresh_ab_trp[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_precharge_to_refresh_ab_trp_sc0

  cg_rule_interval_precharge_to_refresh_ab_trp_sc0 cg_rule_interval_precharge_to_refresh_ab_trp_sc0_inst = new();

  covergroup cg_rule_interval_precharge_to_refresh_ab_trp_sc1 @(vif.rule_interval_precharge_to_refresh_ab_trp_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_precharge_to_refresh_ab_trp.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_precharge_to_refresh_ab_trp[1].pass iff (vif.rule_interval_precharge_to_refresh_ab_trp[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_precharge_to_refresh_ab_trp[1].observed_interval, vif.rule_interval_precharge_to_refresh_ab_trp[1].expected_interval), 0.001) iff (vif.rule_interval_precharge_to_refresh_ab_trp[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_precharge_to_refresh_ab_trp[1].observed_interval, vif.rule_interval_precharge_to_refresh_ab_trp[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_precharge_to_refresh_ab_trp[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_precharge_to_refresh_ab_trp[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_precharge_to_refresh_ab_trp_sc1

  cg_rule_interval_precharge_to_refresh_ab_trp_sc1 cg_rule_interval_precharge_to_refresh_ab_trp_sc1_inst = new();

  covergroup cg_rule_interval_precharge_all_to_refresh_db_same_subchannel_trp_sc0 @(vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_precharge_all_to_refresh_db_same_subchannel_trp.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp[0].pass iff (vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp[0].observed_interval, vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp[0].expected_interval), 0.001) iff (vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp[0].observed_interval, vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_precharge_all_to_refresh_db_same_subchannel_trp_sc0

  cg_rule_interval_precharge_all_to_refresh_db_same_subchannel_trp_sc0 cg_rule_interval_precharge_all_to_refresh_db_same_subchannel_trp_sc0_inst = new();

  covergroup cg_rule_interval_precharge_all_to_refresh_db_same_subchannel_trp_sc1 @(vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_precharge_all_to_refresh_db_same_subchannel_trp.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp[1].pass iff (vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp[1].observed_interval, vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp[1].expected_interval), 0.001) iff (vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp[1].observed_interval, vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_precharge_all_to_refresh_db_same_subchannel_trp[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_precharge_all_to_refresh_db_same_subchannel_trp_sc1

  cg_rule_interval_precharge_all_to_refresh_db_same_subchannel_trp_sc1 cg_rule_interval_precharge_all_to_refresh_db_same_subchannel_trp_sc1_inst = new();

  covergroup cg_rule_interval_table263_wr_to_wr_without_new_sync_min_sc0 @(vif.rule_interval_table263_wr_to_wr_without_new_sync_min_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_wr_to_wr_without_new_sync_min.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_wr_to_wr_without_new_sync_min[0].pass iff (vif.rule_interval_table263_wr_to_wr_without_new_sync_min[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_wr_without_new_sync_min[0].observed_interval, vif.rule_interval_table263_wr_to_wr_without_new_sync_min[0].expected_interval), 0.001) iff (vif.rule_interval_table263_wr_to_wr_without_new_sync_min[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_wr_without_new_sync_min[0].observed_interval, vif.rule_interval_table263_wr_to_wr_without_new_sync_min[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table263_wr_to_wr_without_new_sync_min[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_wr_to_wr_without_new_sync_min[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_wr_to_wr_without_new_sync_min_sc0

  cg_rule_interval_table263_wr_to_wr_without_new_sync_min_sc0 cg_rule_interval_table263_wr_to_wr_without_new_sync_min_sc0_inst = new();

  covergroup cg_rule_interval_table263_wr_to_wr_without_new_sync_min_sc1 @(vif.rule_interval_table263_wr_to_wr_without_new_sync_min_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_wr_to_wr_without_new_sync_min.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_wr_to_wr_without_new_sync_min[1].pass iff (vif.rule_interval_table263_wr_to_wr_without_new_sync_min[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_wr_without_new_sync_min[1].observed_interval, vif.rule_interval_table263_wr_to_wr_without_new_sync_min[1].expected_interval), 0.001) iff (vif.rule_interval_table263_wr_to_wr_without_new_sync_min[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_wr_without_new_sync_min[1].observed_interval, vif.rule_interval_table263_wr_to_wr_without_new_sync_min[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table263_wr_to_wr_without_new_sync_min[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_wr_to_wr_without_new_sync_min[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_wr_to_wr_without_new_sync_min_sc1

  cg_rule_interval_table263_wr_to_wr_without_new_sync_min_sc1 cg_rule_interval_table263_wr_to_wr_without_new_sync_min_sc1_inst = new();

  covergroup cg_rule_interval_table263_wr_to_wr_without_new_sync_max_sc0 @(vif.rule_interval_table263_wr_to_wr_without_new_sync_max_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_wr_to_wr_without_new_sync_max.sc0";
    // bound: at_most

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_wr_to_wr_without_new_sync_max[0].pass iff (vif.rule_interval_table263_wr_to_wr_without_new_sync_max[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical expected minus observed.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_wr_without_new_sync_max[0].expected_interval, vif.rule_interval_table263_wr_to_wr_without_new_sync_max[0].observed_interval), 0.001) iff (vif.rule_interval_table263_wr_to_wr_without_new_sync_max[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_wr_without_new_sync_max[0].expected_interval, vif.rule_interval_table263_wr_to_wr_without_new_sync_max[0].observed_interval), vif.nCK[0]) iff (vif.rule_interval_table263_wr_to_wr_without_new_sync_max[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_wr_to_wr_without_new_sync_max[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_wr_to_wr_without_new_sync_max_sc0

  cg_rule_interval_table263_wr_to_wr_without_new_sync_max_sc0 cg_rule_interval_table263_wr_to_wr_without_new_sync_max_sc0_inst = new();

  covergroup cg_rule_interval_table263_wr_to_wr_without_new_sync_max_sc1 @(vif.rule_interval_table263_wr_to_wr_without_new_sync_max_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_wr_to_wr_without_new_sync_max.sc1";
    // bound: at_most

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_wr_to_wr_without_new_sync_max[1].pass iff (vif.rule_interval_table263_wr_to_wr_without_new_sync_max[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical expected minus observed.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_wr_without_new_sync_max[1].expected_interval, vif.rule_interval_table263_wr_to_wr_without_new_sync_max[1].observed_interval), 0.001) iff (vif.rule_interval_table263_wr_to_wr_without_new_sync_max[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_wr_without_new_sync_max[1].expected_interval, vif.rule_interval_table263_wr_to_wr_without_new_sync_max[1].observed_interval), vif.nCK[1]) iff (vif.rule_interval_table263_wr_to_wr_without_new_sync_max[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_wr_to_wr_without_new_sync_max[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_wr_to_wr_without_new_sync_max_sc1

  cg_rule_interval_table263_wr_to_wr_without_new_sync_max_sc1 cg_rule_interval_table263_wr_to_wr_without_new_sync_max_sc1_inst = new();

  covergroup cg_rule_interval_table263_wr_to_wr_with_new_sync_min_sc0 @(vif.rule_interval_table263_wr_to_wr_with_new_sync_min_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_wr_to_wr_with_new_sync_min.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_wr_to_wr_with_new_sync_min[0].pass iff (vif.rule_interval_table263_wr_to_wr_with_new_sync_min[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_wr_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_wr_to_wr_with_new_sync_min[0].expected_interval), 0.001) iff (vif.rule_interval_table263_wr_to_wr_with_new_sync_min[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_wr_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_wr_to_wr_with_new_sync_min[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table263_wr_to_wr_with_new_sync_min[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_wr_to_wr_with_new_sync_min[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_wr_to_wr_with_new_sync_min_sc0

  cg_rule_interval_table263_wr_to_wr_with_new_sync_min_sc0 cg_rule_interval_table263_wr_to_wr_with_new_sync_min_sc0_inst = new();

  covergroup cg_rule_interval_table263_wr_to_wr_with_new_sync_min_sc1 @(vif.rule_interval_table263_wr_to_wr_with_new_sync_min_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_wr_to_wr_with_new_sync_min.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_wr_to_wr_with_new_sync_min[1].pass iff (vif.rule_interval_table263_wr_to_wr_with_new_sync_min[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_wr_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_wr_to_wr_with_new_sync_min[1].expected_interval), 0.001) iff (vif.rule_interval_table263_wr_to_wr_with_new_sync_min[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_wr_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_wr_to_wr_with_new_sync_min[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table263_wr_to_wr_with_new_sync_min[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_wr_to_wr_with_new_sync_min[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_wr_to_wr_with_new_sync_min_sc1

  cg_rule_interval_table263_wr_to_wr_with_new_sync_min_sc1 cg_rule_interval_table263_wr_to_wr_with_new_sync_min_sc1_inst = new();

  covergroup cg_rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min_sc0 @(vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min[0].pass iff (vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min[0].expected_interval), 0.001) iff (vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min_sc0

  cg_rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min_sc0 cg_rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min_sc0_inst = new();

  covergroup cg_rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min_sc1 @(vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min[1].pass iff (vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min[1].expected_interval), 0.001) iff (vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min_sc1

  cg_rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min_sc1 cg_rule_interval_table263_wr_to_rd_same_bg_with_new_sync_min_sc1_inst = new();

  covergroup cg_rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min_sc0 @(vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min[0].pass iff (vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min[0].expected_interval), 0.001) iff (vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min_sc0

  cg_rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min_sc0 cg_rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min_sc0_inst = new();

  covergroup cg_rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min_sc1 @(vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min[1].pass iff (vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min[1].expected_interval), 0.001) iff (vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min_sc1

  cg_rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min_sc1 cg_rule_interval_table263_wr_to_rd_different_bg_with_new_sync_min_sc1_inst = new();

  covergroup cg_rule_interval_table263_wr_to_mrr_with_new_sync_min_sc0 @(vif.rule_interval_table263_wr_to_mrr_with_new_sync_min_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_wr_to_mrr_with_new_sync_min.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_wr_to_mrr_with_new_sync_min[0].pass iff (vif.rule_interval_table263_wr_to_mrr_with_new_sync_min[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_mrr_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_wr_to_mrr_with_new_sync_min[0].expected_interval), 0.001) iff (vif.rule_interval_table263_wr_to_mrr_with_new_sync_min[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_mrr_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_wr_to_mrr_with_new_sync_min[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table263_wr_to_mrr_with_new_sync_min[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_wr_to_mrr_with_new_sync_min[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_wr_to_mrr_with_new_sync_min_sc0

  cg_rule_interval_table263_wr_to_mrr_with_new_sync_min_sc0 cg_rule_interval_table263_wr_to_mrr_with_new_sync_min_sc0_inst = new();

  covergroup cg_rule_interval_table263_wr_to_mrr_with_new_sync_min_sc1 @(vif.rule_interval_table263_wr_to_mrr_with_new_sync_min_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_wr_to_mrr_with_new_sync_min.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_wr_to_mrr_with_new_sync_min[1].pass iff (vif.rule_interval_table263_wr_to_mrr_with_new_sync_min[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_mrr_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_wr_to_mrr_with_new_sync_min[1].expected_interval), 0.001) iff (vif.rule_interval_table263_wr_to_mrr_with_new_sync_min[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_wr_to_mrr_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_wr_to_mrr_with_new_sync_min[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table263_wr_to_mrr_with_new_sync_min[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_wr_to_mrr_with_new_sync_min[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_wr_to_mrr_with_new_sync_min_sc1

  cg_rule_interval_table263_wr_to_mrr_with_new_sync_min_sc1 cg_rule_interval_table263_wr_to_mrr_with_new_sync_min_sc1_inst = new();

  covergroup cg_rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min_sc0 @(vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min[0].pass iff (vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min[0].observed_interval, vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min[0].expected_interval), 0.001) iff (vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min[0].observed_interval, vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min_sc0

  cg_rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min_sc0 cg_rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min_sc0_inst = new();

  covergroup cg_rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min_sc1 @(vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min[1].pass iff (vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min[1].observed_interval, vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min[1].expected_interval), 0.001) iff (vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min[1].observed_interval, vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min_sc1

  cg_rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min_sc1 cg_rule_interval_table263_rd_to_wr_same_bg_without_new_sync_min_sc1_inst = new();

  covergroup cg_rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max_sc0 @(vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max.sc0";
    // bound: at_most

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max[0].pass iff (vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical expected minus observed.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max[0].expected_interval, vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max[0].observed_interval), 0.001) iff (vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max[0].expected_interval, vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max[0].observed_interval), vif.nCK[0]) iff (vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max_sc0

  cg_rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max_sc0 cg_rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max_sc0_inst = new();

  covergroup cg_rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max_sc1 @(vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max.sc1";
    // bound: at_most

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max[1].pass iff (vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical expected minus observed.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max[1].expected_interval, vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max[1].observed_interval), 0.001) iff (vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max[1].expected_interval, vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max[1].observed_interval), vif.nCK[1]) iff (vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max_sc1

  cg_rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max_sc1 cg_rule_interval_table263_rd_to_wr_same_bg_without_new_sync_max_sc1_inst = new();

  covergroup cg_rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min_sc0 @(vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min[0].pass iff (vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min[0].expected_interval), 0.001) iff (vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min_sc0

  cg_rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min_sc0 cg_rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min_sc0_inst = new();

  covergroup cg_rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min_sc1 @(vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min[1].pass iff (vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min[1].expected_interval), 0.001) iff (vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min_sc1

  cg_rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min_sc1 cg_rule_interval_table263_rd_to_wr_same_bg_with_new_sync_min_sc1_inst = new();

  covergroup cg_rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min_sc0 @(vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min[0].pass iff (vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min[0].observed_interval, vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min[0].expected_interval), 0.001) iff (vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min[0].observed_interval, vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min_sc0

  cg_rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min_sc0 cg_rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min_sc0_inst = new();

  covergroup cg_rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min_sc1 @(vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min[1].pass iff (vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min[1].observed_interval, vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min[1].expected_interval), 0.001) iff (vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min[1].observed_interval, vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min_sc1

  cg_rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min_sc1 cg_rule_interval_table263_rd_to_wr_different_bg_without_new_sync_min_sc1_inst = new();

  covergroup cg_rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max_sc0 @(vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max.sc0";
    // bound: at_most

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max[0].pass iff (vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical expected minus observed.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max[0].expected_interval, vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max[0].observed_interval), 0.001) iff (vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max[0].expected_interval, vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max[0].observed_interval), vif.nCK[0]) iff (vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max_sc0

  cg_rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max_sc0 cg_rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max_sc0_inst = new();

  covergroup cg_rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max_sc1 @(vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max.sc1";
    // bound: at_most

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max[1].pass iff (vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical expected minus observed.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max[1].expected_interval, vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max[1].observed_interval), 0.001) iff (vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max[1].expected_interval, vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max[1].observed_interval), vif.nCK[1]) iff (vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max_sc1

  cg_rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max_sc1 cg_rule_interval_table263_rd_to_wr_different_bg_without_new_sync_max_sc1_inst = new();

  covergroup cg_rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min_sc0 @(vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min[0].pass iff (vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min[0].expected_interval), 0.001) iff (vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min_sc0

  cg_rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min_sc0 cg_rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min_sc0_inst = new();

  covergroup cg_rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min_sc1 @(vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min[1].pass iff (vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min[1].expected_interval), 0.001) iff (vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min_sc1

  cg_rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min_sc1 cg_rule_interval_table263_rd_to_wr_different_bg_with_new_sync_min_sc1_inst = new();

  covergroup cg_rule_interval_table263_rd_to_rd_without_new_sync_min_sc0 @(vif.rule_interval_table263_rd_to_rd_without_new_sync_min_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_rd_to_rd_without_new_sync_min.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_rd_to_rd_without_new_sync_min[0].pass iff (vif.rule_interval_table263_rd_to_rd_without_new_sync_min[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_rd_without_new_sync_min[0].observed_interval, vif.rule_interval_table263_rd_to_rd_without_new_sync_min[0].expected_interval), 0.001) iff (vif.rule_interval_table263_rd_to_rd_without_new_sync_min[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_rd_without_new_sync_min[0].observed_interval, vif.rule_interval_table263_rd_to_rd_without_new_sync_min[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table263_rd_to_rd_without_new_sync_min[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_rd_to_rd_without_new_sync_min[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_rd_to_rd_without_new_sync_min_sc0

  cg_rule_interval_table263_rd_to_rd_without_new_sync_min_sc0 cg_rule_interval_table263_rd_to_rd_without_new_sync_min_sc0_inst = new();

  covergroup cg_rule_interval_table263_rd_to_rd_without_new_sync_min_sc1 @(vif.rule_interval_table263_rd_to_rd_without_new_sync_min_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_rd_to_rd_without_new_sync_min.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_rd_to_rd_without_new_sync_min[1].pass iff (vif.rule_interval_table263_rd_to_rd_without_new_sync_min[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_rd_without_new_sync_min[1].observed_interval, vif.rule_interval_table263_rd_to_rd_without_new_sync_min[1].expected_interval), 0.001) iff (vif.rule_interval_table263_rd_to_rd_without_new_sync_min[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_rd_without_new_sync_min[1].observed_interval, vif.rule_interval_table263_rd_to_rd_without_new_sync_min[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table263_rd_to_rd_without_new_sync_min[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_rd_to_rd_without_new_sync_min[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_rd_to_rd_without_new_sync_min_sc1

  cg_rule_interval_table263_rd_to_rd_without_new_sync_min_sc1 cg_rule_interval_table263_rd_to_rd_without_new_sync_min_sc1_inst = new();

  covergroup cg_rule_interval_table263_rd_to_rd_without_new_sync_max_sc0 @(vif.rule_interval_table263_rd_to_rd_without_new_sync_max_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_rd_to_rd_without_new_sync_max.sc0";
    // bound: at_most

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_rd_to_rd_without_new_sync_max[0].pass iff (vif.rule_interval_table263_rd_to_rd_without_new_sync_max[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical expected minus observed.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_rd_without_new_sync_max[0].expected_interval, vif.rule_interval_table263_rd_to_rd_without_new_sync_max[0].observed_interval), 0.001) iff (vif.rule_interval_table263_rd_to_rd_without_new_sync_max[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_rd_without_new_sync_max[0].expected_interval, vif.rule_interval_table263_rd_to_rd_without_new_sync_max[0].observed_interval), vif.nCK[0]) iff (vif.rule_interval_table263_rd_to_rd_without_new_sync_max[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_rd_to_rd_without_new_sync_max[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_rd_to_rd_without_new_sync_max_sc0

  cg_rule_interval_table263_rd_to_rd_without_new_sync_max_sc0 cg_rule_interval_table263_rd_to_rd_without_new_sync_max_sc0_inst = new();

  covergroup cg_rule_interval_table263_rd_to_rd_without_new_sync_max_sc1 @(vif.rule_interval_table263_rd_to_rd_without_new_sync_max_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_rd_to_rd_without_new_sync_max.sc1";
    // bound: at_most

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_rd_to_rd_without_new_sync_max[1].pass iff (vif.rule_interval_table263_rd_to_rd_without_new_sync_max[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical expected minus observed.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_rd_without_new_sync_max[1].expected_interval, vif.rule_interval_table263_rd_to_rd_without_new_sync_max[1].observed_interval), 0.001) iff (vif.rule_interval_table263_rd_to_rd_without_new_sync_max[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_rd_without_new_sync_max[1].expected_interval, vif.rule_interval_table263_rd_to_rd_without_new_sync_max[1].observed_interval), vif.nCK[1]) iff (vif.rule_interval_table263_rd_to_rd_without_new_sync_max[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_rd_to_rd_without_new_sync_max[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_rd_to_rd_without_new_sync_max_sc1

  cg_rule_interval_table263_rd_to_rd_without_new_sync_max_sc1 cg_rule_interval_table263_rd_to_rd_without_new_sync_max_sc1_inst = new();

  covergroup cg_rule_interval_table263_rd_to_mrr_with_new_sync_min_sc0 @(vif.rule_interval_table263_rd_to_mrr_with_new_sync_min_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_rd_to_mrr_with_new_sync_min.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_rd_to_mrr_with_new_sync_min[0].pass iff (vif.rule_interval_table263_rd_to_mrr_with_new_sync_min[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_mrr_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_rd_to_mrr_with_new_sync_min[0].expected_interval), 0.001) iff (vif.rule_interval_table263_rd_to_mrr_with_new_sync_min[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_mrr_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_rd_to_mrr_with_new_sync_min[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table263_rd_to_mrr_with_new_sync_min[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_rd_to_mrr_with_new_sync_min[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_rd_to_mrr_with_new_sync_min_sc0

  cg_rule_interval_table263_rd_to_mrr_with_new_sync_min_sc0 cg_rule_interval_table263_rd_to_mrr_with_new_sync_min_sc0_inst = new();

  covergroup cg_rule_interval_table263_rd_to_mrr_with_new_sync_min_sc1 @(vif.rule_interval_table263_rd_to_mrr_with_new_sync_min_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_rd_to_mrr_with_new_sync_min.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_rd_to_mrr_with_new_sync_min[1].pass iff (vif.rule_interval_table263_rd_to_mrr_with_new_sync_min[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_mrr_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_rd_to_mrr_with_new_sync_min[1].expected_interval), 0.001) iff (vif.rule_interval_table263_rd_to_mrr_with_new_sync_min[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_rd_to_mrr_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_rd_to_mrr_with_new_sync_min[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table263_rd_to_mrr_with_new_sync_min[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_rd_to_mrr_with_new_sync_min[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_rd_to_mrr_with_new_sync_min_sc1

  cg_rule_interval_table263_rd_to_mrr_with_new_sync_min_sc1 cg_rule_interval_table263_rd_to_mrr_with_new_sync_min_sc1_inst = new();

  covergroup cg_rule_interval_table263_mrr_to_wr_without_new_sync_min_sc0 @(vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_mrr_to_wr_without_new_sync_min.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_mrr_to_wr_without_new_sync_min[0].pass iff (vif.rule_interval_table263_mrr_to_wr_without_new_sync_min[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_wr_without_new_sync_min[0].observed_interval, vif.rule_interval_table263_mrr_to_wr_without_new_sync_min[0].expected_interval), 0.001) iff (vif.rule_interval_table263_mrr_to_wr_without_new_sync_min[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_wr_without_new_sync_min[0].observed_interval, vif.rule_interval_table263_mrr_to_wr_without_new_sync_min[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table263_mrr_to_wr_without_new_sync_min[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_mrr_to_wr_without_new_sync_min[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_mrr_to_wr_without_new_sync_min_sc0

  cg_rule_interval_table263_mrr_to_wr_without_new_sync_min_sc0 cg_rule_interval_table263_mrr_to_wr_without_new_sync_min_sc0_inst = new();

  covergroup cg_rule_interval_table263_mrr_to_wr_without_new_sync_min_sc1 @(vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_mrr_to_wr_without_new_sync_min.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_mrr_to_wr_without_new_sync_min[1].pass iff (vif.rule_interval_table263_mrr_to_wr_without_new_sync_min[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_wr_without_new_sync_min[1].observed_interval, vif.rule_interval_table263_mrr_to_wr_without_new_sync_min[1].expected_interval), 0.001) iff (vif.rule_interval_table263_mrr_to_wr_without_new_sync_min[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_wr_without_new_sync_min[1].observed_interval, vif.rule_interval_table263_mrr_to_wr_without_new_sync_min[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table263_mrr_to_wr_without_new_sync_min[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_mrr_to_wr_without_new_sync_min[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_mrr_to_wr_without_new_sync_min_sc1

  cg_rule_interval_table263_mrr_to_wr_without_new_sync_min_sc1 cg_rule_interval_table263_mrr_to_wr_without_new_sync_min_sc1_inst = new();

  covergroup cg_rule_interval_table263_mrr_to_wr_without_new_sync_max_sc0 @(vif.rule_interval_table263_mrr_to_wr_without_new_sync_max_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_mrr_to_wr_without_new_sync_max.sc0";
    // bound: at_most

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_mrr_to_wr_without_new_sync_max[0].pass iff (vif.rule_interval_table263_mrr_to_wr_without_new_sync_max[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical expected minus observed.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_wr_without_new_sync_max[0].expected_interval, vif.rule_interval_table263_mrr_to_wr_without_new_sync_max[0].observed_interval), 0.001) iff (vif.rule_interval_table263_mrr_to_wr_without_new_sync_max[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_wr_without_new_sync_max[0].expected_interval, vif.rule_interval_table263_mrr_to_wr_without_new_sync_max[0].observed_interval), vif.nCK[0]) iff (vif.rule_interval_table263_mrr_to_wr_without_new_sync_max[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_mrr_to_wr_without_new_sync_max[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_mrr_to_wr_without_new_sync_max_sc0

  cg_rule_interval_table263_mrr_to_wr_without_new_sync_max_sc0 cg_rule_interval_table263_mrr_to_wr_without_new_sync_max_sc0_inst = new();

  covergroup cg_rule_interval_table263_mrr_to_wr_without_new_sync_max_sc1 @(vif.rule_interval_table263_mrr_to_wr_without_new_sync_max_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_mrr_to_wr_without_new_sync_max.sc1";
    // bound: at_most

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_mrr_to_wr_without_new_sync_max[1].pass iff (vif.rule_interval_table263_mrr_to_wr_without_new_sync_max[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical expected minus observed.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_wr_without_new_sync_max[1].expected_interval, vif.rule_interval_table263_mrr_to_wr_without_new_sync_max[1].observed_interval), 0.001) iff (vif.rule_interval_table263_mrr_to_wr_without_new_sync_max[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_wr_without_new_sync_max[1].expected_interval, vif.rule_interval_table263_mrr_to_wr_without_new_sync_max[1].observed_interval), vif.nCK[1]) iff (vif.rule_interval_table263_mrr_to_wr_without_new_sync_max[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_mrr_to_wr_without_new_sync_max[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_mrr_to_wr_without_new_sync_max_sc1

  cg_rule_interval_table263_mrr_to_wr_without_new_sync_max_sc1 cg_rule_interval_table263_mrr_to_wr_without_new_sync_max_sc1_inst = new();

  covergroup cg_rule_interval_table263_mrr_to_wr_with_new_sync_min_sc0 @(vif.rule_interval_table263_mrr_to_wr_with_new_sync_min_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_mrr_to_wr_with_new_sync_min.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_mrr_to_wr_with_new_sync_min[0].pass iff (vif.rule_interval_table263_mrr_to_wr_with_new_sync_min[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_wr_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_mrr_to_wr_with_new_sync_min[0].expected_interval), 0.001) iff (vif.rule_interval_table263_mrr_to_wr_with_new_sync_min[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_wr_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_mrr_to_wr_with_new_sync_min[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table263_mrr_to_wr_with_new_sync_min[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_mrr_to_wr_with_new_sync_min[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_mrr_to_wr_with_new_sync_min_sc0

  cg_rule_interval_table263_mrr_to_wr_with_new_sync_min_sc0 cg_rule_interval_table263_mrr_to_wr_with_new_sync_min_sc0_inst = new();

  covergroup cg_rule_interval_table263_mrr_to_wr_with_new_sync_min_sc1 @(vif.rule_interval_table263_mrr_to_wr_with_new_sync_min_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_mrr_to_wr_with_new_sync_min.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_mrr_to_wr_with_new_sync_min[1].pass iff (vif.rule_interval_table263_mrr_to_wr_with_new_sync_min[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_wr_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_mrr_to_wr_with_new_sync_min[1].expected_interval), 0.001) iff (vif.rule_interval_table263_mrr_to_wr_with_new_sync_min[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_wr_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_mrr_to_wr_with_new_sync_min[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table263_mrr_to_wr_with_new_sync_min[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_mrr_to_wr_with_new_sync_min[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_mrr_to_wr_with_new_sync_min_sc1

  cg_rule_interval_table263_mrr_to_wr_with_new_sync_min_sc1 cg_rule_interval_table263_mrr_to_wr_with_new_sync_min_sc1_inst = new();

  covergroup cg_rule_interval_table263_mrr_to_rd_with_new_sync_min_sc0 @(vif.rule_interval_table263_mrr_to_rd_with_new_sync_min_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_mrr_to_rd_with_new_sync_min.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_mrr_to_rd_with_new_sync_min[0].pass iff (vif.rule_interval_table263_mrr_to_rd_with_new_sync_min[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_rd_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_mrr_to_rd_with_new_sync_min[0].expected_interval), 0.001) iff (vif.rule_interval_table263_mrr_to_rd_with_new_sync_min[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_rd_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_mrr_to_rd_with_new_sync_min[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table263_mrr_to_rd_with_new_sync_min[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_mrr_to_rd_with_new_sync_min[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_mrr_to_rd_with_new_sync_min_sc0

  cg_rule_interval_table263_mrr_to_rd_with_new_sync_min_sc0 cg_rule_interval_table263_mrr_to_rd_with_new_sync_min_sc0_inst = new();

  covergroup cg_rule_interval_table263_mrr_to_rd_with_new_sync_min_sc1 @(vif.rule_interval_table263_mrr_to_rd_with_new_sync_min_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_mrr_to_rd_with_new_sync_min.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_mrr_to_rd_with_new_sync_min[1].pass iff (vif.rule_interval_table263_mrr_to_rd_with_new_sync_min[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_rd_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_mrr_to_rd_with_new_sync_min[1].expected_interval), 0.001) iff (vif.rule_interval_table263_mrr_to_rd_with_new_sync_min[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_rd_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_mrr_to_rd_with_new_sync_min[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table263_mrr_to_rd_with_new_sync_min[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_mrr_to_rd_with_new_sync_min[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_mrr_to_rd_with_new_sync_min_sc1

  cg_rule_interval_table263_mrr_to_rd_with_new_sync_min_sc1 cg_rule_interval_table263_mrr_to_rd_with_new_sync_min_sc1_inst = new();

  covergroup cg_rule_interval_table263_mrr_to_mrr_without_new_sync_min_sc0 @(vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_mrr_to_mrr_without_new_sync_min.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min[0].pass iff (vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min[0].observed_interval, vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min[0].expected_interval), 0.001) iff (vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min[0].observed_interval, vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_mrr_to_mrr_without_new_sync_min_sc0

  cg_rule_interval_table263_mrr_to_mrr_without_new_sync_min_sc0 cg_rule_interval_table263_mrr_to_mrr_without_new_sync_min_sc0_inst = new();

  covergroup cg_rule_interval_table263_mrr_to_mrr_without_new_sync_min_sc1 @(vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_mrr_to_mrr_without_new_sync_min.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min[1].pass iff (vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min[1].observed_interval, vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min[1].expected_interval), 0.001) iff (vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min[1].observed_interval, vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_mrr_to_mrr_without_new_sync_min[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_mrr_to_mrr_without_new_sync_min_sc1

  cg_rule_interval_table263_mrr_to_mrr_without_new_sync_min_sc1 cg_rule_interval_table263_mrr_to_mrr_without_new_sync_min_sc1_inst = new();

  covergroup cg_rule_interval_table263_mrr_to_mrr_without_new_sync_max_sc0 @(vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_mrr_to_mrr_without_new_sync_max.sc0";
    // bound: at_most

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max[0].pass iff (vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical expected minus observed.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max[0].expected_interval, vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max[0].observed_interval), 0.001) iff (vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max[0].expected_interval, vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max[0].observed_interval), vif.nCK[0]) iff (vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_mrr_to_mrr_without_new_sync_max_sc0

  cg_rule_interval_table263_mrr_to_mrr_without_new_sync_max_sc0 cg_rule_interval_table263_mrr_to_mrr_without_new_sync_max_sc0_inst = new();

  covergroup cg_rule_interval_table263_mrr_to_mrr_without_new_sync_max_sc1 @(vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_mrr_to_mrr_without_new_sync_max.sc1";
    // bound: at_most

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max[1].pass iff (vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical expected minus observed.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max[1].expected_interval, vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max[1].observed_interval), 0.001) iff (vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max[1].expected_interval, vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max[1].observed_interval), vif.nCK[1]) iff (vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_mrr_to_mrr_without_new_sync_max[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_mrr_to_mrr_without_new_sync_max_sc1

  cg_rule_interval_table263_mrr_to_mrr_without_new_sync_max_sc1 cg_rule_interval_table263_mrr_to_mrr_without_new_sync_max_sc1_inst = new();

  covergroup cg_rule_interval_table263_mrr_to_mrr_with_new_sync_min_sc0 @(vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_mrr_to_mrr_with_new_sync_min.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min[0].pass iff (vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min[0].expected_interval), 0.001) iff (vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min[0].observed_interval, vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_mrr_to_mrr_with_new_sync_min_sc0

  cg_rule_interval_table263_mrr_to_mrr_with_new_sync_min_sc0 cg_rule_interval_table263_mrr_to_mrr_with_new_sync_min_sc0_inst = new();

  covergroup cg_rule_interval_table263_mrr_to_mrr_with_new_sync_min_sc1 @(vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_mrr_to_mrr_with_new_sync_min.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min[1].pass iff (vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min[1].expected_interval), 0.001) iff (vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min[1].observed_interval, vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_mrr_to_mrr_with_new_sync_min[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_mrr_to_mrr_with_new_sync_min_sc1

  cg_rule_interval_table263_mrr_to_mrr_with_new_sync_min_sc1 cg_rule_interval_table263_mrr_to_mrr_with_new_sync_min_sc1_inst = new();

  covergroup cg_rule_interval_table266_wr_to_wsoe_cas_min_sc0 @(vif.rule_interval_table266_wr_to_wsoe_cas_min_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table266_wr_to_wsoe_cas_min.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table266_wr_to_wsoe_cas_min[0].pass iff (vif.rule_interval_table266_wr_to_wsoe_cas_min[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_wr_to_wsoe_cas_min[0].observed_interval, vif.rule_interval_table266_wr_to_wsoe_cas_min[0].expected_interval), 0.001) iff (vif.rule_interval_table266_wr_to_wsoe_cas_min[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_wr_to_wsoe_cas_min[0].observed_interval, vif.rule_interval_table266_wr_to_wsoe_cas_min[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table266_wr_to_wsoe_cas_min[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table266_wr_to_wsoe_cas_min[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table266_wr_to_wsoe_cas_min_sc0

  cg_rule_interval_table266_wr_to_wsoe_cas_min_sc0 cg_rule_interval_table266_wr_to_wsoe_cas_min_sc0_inst = new();

  covergroup cg_rule_interval_table266_wr_to_wsoe_cas_min_sc1 @(vif.rule_interval_table266_wr_to_wsoe_cas_min_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table266_wr_to_wsoe_cas_min.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table266_wr_to_wsoe_cas_min[1].pass iff (vif.rule_interval_table266_wr_to_wsoe_cas_min[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_wr_to_wsoe_cas_min[1].observed_interval, vif.rule_interval_table266_wr_to_wsoe_cas_min[1].expected_interval), 0.001) iff (vif.rule_interval_table266_wr_to_wsoe_cas_min[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_wr_to_wsoe_cas_min[1].observed_interval, vif.rule_interval_table266_wr_to_wsoe_cas_min[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table266_wr_to_wsoe_cas_min[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table266_wr_to_wsoe_cas_min[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table266_wr_to_wsoe_cas_min_sc1

  cg_rule_interval_table266_wr_to_wsoe_cas_min_sc1 cg_rule_interval_table266_wr_to_wsoe_cas_min_sc1_inst = new();

  covergroup cg_rule_interval_table266_wr_to_wsoe_cas_max_sc0 @(vif.rule_interval_table266_wr_to_wsoe_cas_max_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table266_wr_to_wsoe_cas_max.sc0";
    // bound: less_than

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table266_wr_to_wsoe_cas_max[0].pass iff (vif.rule_interval_table266_wr_to_wsoe_cas_max[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical expected minus observed.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_wr_to_wsoe_cas_max[0].expected_interval, vif.rule_interval_table266_wr_to_wsoe_cas_max[0].observed_interval), 0.001) iff (vif.rule_interval_table266_wr_to_wsoe_cas_max[0].valid) {
      bins syndram_illegal__nonpositive = {[-1000000000:0]};
      bins pass_1ps_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_wr_to_wsoe_cas_max[0].expected_interval, vif.rule_interval_table266_wr_to_wsoe_cas_max[0].observed_interval), vif.nCK[0]) iff (vif.rule_interval_table266_wr_to_wsoe_cas_max[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__nonpositive = {[-1000000000:0]};
      bins pass_1_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table266_wr_to_wsoe_cas_max[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table266_wr_to_wsoe_cas_max_sc0

  cg_rule_interval_table266_wr_to_wsoe_cas_max_sc0 cg_rule_interval_table266_wr_to_wsoe_cas_max_sc0_inst = new();

  covergroup cg_rule_interval_table266_wr_to_wsoe_cas_max_sc1 @(vif.rule_interval_table266_wr_to_wsoe_cas_max_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table266_wr_to_wsoe_cas_max.sc1";
    // bound: less_than

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table266_wr_to_wsoe_cas_max[1].pass iff (vif.rule_interval_table266_wr_to_wsoe_cas_max[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical expected minus observed.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_wr_to_wsoe_cas_max[1].expected_interval, vif.rule_interval_table266_wr_to_wsoe_cas_max[1].observed_interval), 0.001) iff (vif.rule_interval_table266_wr_to_wsoe_cas_max[1].valid) {
      bins syndram_illegal__nonpositive = {[-1000000000:0]};
      bins pass_1ps_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_wr_to_wsoe_cas_max[1].expected_interval, vif.rule_interval_table266_wr_to_wsoe_cas_max[1].observed_interval), vif.nCK[1]) iff (vif.rule_interval_table266_wr_to_wsoe_cas_max[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__nonpositive = {[-1000000000:0]};
      bins pass_1_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table266_wr_to_wsoe_cas_max[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table266_wr_to_wsoe_cas_max_sc1

  cg_rule_interval_table266_wr_to_wsoe_cas_max_sc1 cg_rule_interval_table266_wr_to_wsoe_cas_max_sc1_inst = new();

  covergroup cg_rule_interval_table266_rd_to_wsoe_cas_min_sc0 @(vif.rule_interval_table266_rd_to_wsoe_cas_min_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table266_rd_to_wsoe_cas_min.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table266_rd_to_wsoe_cas_min[0].pass iff (vif.rule_interval_table266_rd_to_wsoe_cas_min[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_rd_to_wsoe_cas_min[0].observed_interval, vif.rule_interval_table266_rd_to_wsoe_cas_min[0].expected_interval), 0.001) iff (vif.rule_interval_table266_rd_to_wsoe_cas_min[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_rd_to_wsoe_cas_min[0].observed_interval, vif.rule_interval_table266_rd_to_wsoe_cas_min[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table266_rd_to_wsoe_cas_min[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table266_rd_to_wsoe_cas_min[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table266_rd_to_wsoe_cas_min_sc0

  cg_rule_interval_table266_rd_to_wsoe_cas_min_sc0 cg_rule_interval_table266_rd_to_wsoe_cas_min_sc0_inst = new();

  covergroup cg_rule_interval_table266_rd_to_wsoe_cas_min_sc1 @(vif.rule_interval_table266_rd_to_wsoe_cas_min_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table266_rd_to_wsoe_cas_min.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table266_rd_to_wsoe_cas_min[1].pass iff (vif.rule_interval_table266_rd_to_wsoe_cas_min[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_rd_to_wsoe_cas_min[1].observed_interval, vif.rule_interval_table266_rd_to_wsoe_cas_min[1].expected_interval), 0.001) iff (vif.rule_interval_table266_rd_to_wsoe_cas_min[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_rd_to_wsoe_cas_min[1].observed_interval, vif.rule_interval_table266_rd_to_wsoe_cas_min[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table266_rd_to_wsoe_cas_min[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table266_rd_to_wsoe_cas_min[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table266_rd_to_wsoe_cas_min_sc1

  cg_rule_interval_table266_rd_to_wsoe_cas_min_sc1 cg_rule_interval_table266_rd_to_wsoe_cas_min_sc1_inst = new();

  covergroup cg_rule_interval_table266_rd_to_wsoe_cas_max_sc0 @(vif.rule_interval_table266_rd_to_wsoe_cas_max_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table266_rd_to_wsoe_cas_max.sc0";
    // bound: less_than

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table266_rd_to_wsoe_cas_max[0].pass iff (vif.rule_interval_table266_rd_to_wsoe_cas_max[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical expected minus observed.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_rd_to_wsoe_cas_max[0].expected_interval, vif.rule_interval_table266_rd_to_wsoe_cas_max[0].observed_interval), 0.001) iff (vif.rule_interval_table266_rd_to_wsoe_cas_max[0].valid) {
      bins syndram_illegal__nonpositive = {[-1000000000:0]};
      bins pass_1ps_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_rd_to_wsoe_cas_max[0].expected_interval, vif.rule_interval_table266_rd_to_wsoe_cas_max[0].observed_interval), vif.nCK[0]) iff (vif.rule_interval_table266_rd_to_wsoe_cas_max[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__nonpositive = {[-1000000000:0]};
      bins pass_1_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table266_rd_to_wsoe_cas_max[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table266_rd_to_wsoe_cas_max_sc0

  cg_rule_interval_table266_rd_to_wsoe_cas_max_sc0 cg_rule_interval_table266_rd_to_wsoe_cas_max_sc0_inst = new();

  covergroup cg_rule_interval_table266_rd_to_wsoe_cas_max_sc1 @(vif.rule_interval_table266_rd_to_wsoe_cas_max_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table266_rd_to_wsoe_cas_max.sc1";
    // bound: less_than

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table266_rd_to_wsoe_cas_max[1].pass iff (vif.rule_interval_table266_rd_to_wsoe_cas_max[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical expected minus observed.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_rd_to_wsoe_cas_max[1].expected_interval, vif.rule_interval_table266_rd_to_wsoe_cas_max[1].observed_interval), 0.001) iff (vif.rule_interval_table266_rd_to_wsoe_cas_max[1].valid) {
      bins syndram_illegal__nonpositive = {[-1000000000:0]};
      bins pass_1ps_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_rd_to_wsoe_cas_max[1].expected_interval, vif.rule_interval_table266_rd_to_wsoe_cas_max[1].observed_interval), vif.nCK[1]) iff (vif.rule_interval_table266_rd_to_wsoe_cas_max[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__nonpositive = {[-1000000000:0]};
      bins pass_1_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table266_rd_to_wsoe_cas_max[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table266_rd_to_wsoe_cas_max_sc1

  cg_rule_interval_table266_rd_to_wsoe_cas_max_sc1 cg_rule_interval_table266_rd_to_wsoe_cas_max_sc1_inst = new();

  covergroup cg_rule_interval_table266_mrr_to_wsoe_cas_min_sc0 @(vif.rule_interval_table266_mrr_to_wsoe_cas_min_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table266_mrr_to_wsoe_cas_min.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table266_mrr_to_wsoe_cas_min[0].pass iff (vif.rule_interval_table266_mrr_to_wsoe_cas_min[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_mrr_to_wsoe_cas_min[0].observed_interval, vif.rule_interval_table266_mrr_to_wsoe_cas_min[0].expected_interval), 0.001) iff (vif.rule_interval_table266_mrr_to_wsoe_cas_min[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_mrr_to_wsoe_cas_min[0].observed_interval, vif.rule_interval_table266_mrr_to_wsoe_cas_min[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table266_mrr_to_wsoe_cas_min[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table266_mrr_to_wsoe_cas_min[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table266_mrr_to_wsoe_cas_min_sc0

  cg_rule_interval_table266_mrr_to_wsoe_cas_min_sc0 cg_rule_interval_table266_mrr_to_wsoe_cas_min_sc0_inst = new();

  covergroup cg_rule_interval_table266_mrr_to_wsoe_cas_min_sc1 @(vif.rule_interval_table266_mrr_to_wsoe_cas_min_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table266_mrr_to_wsoe_cas_min.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table266_mrr_to_wsoe_cas_min[1].pass iff (vif.rule_interval_table266_mrr_to_wsoe_cas_min[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_mrr_to_wsoe_cas_min[1].observed_interval, vif.rule_interval_table266_mrr_to_wsoe_cas_min[1].expected_interval), 0.001) iff (vif.rule_interval_table266_mrr_to_wsoe_cas_min[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_mrr_to_wsoe_cas_min[1].observed_interval, vif.rule_interval_table266_mrr_to_wsoe_cas_min[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table266_mrr_to_wsoe_cas_min[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table266_mrr_to_wsoe_cas_min[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table266_mrr_to_wsoe_cas_min_sc1

  cg_rule_interval_table266_mrr_to_wsoe_cas_min_sc1 cg_rule_interval_table266_mrr_to_wsoe_cas_min_sc1_inst = new();

  covergroup cg_rule_interval_table266_mrr_to_wsoe_cas_max_sc0 @(vif.rule_interval_table266_mrr_to_wsoe_cas_max_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table266_mrr_to_wsoe_cas_max.sc0";
    // bound: less_than

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table266_mrr_to_wsoe_cas_max[0].pass iff (vif.rule_interval_table266_mrr_to_wsoe_cas_max[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical expected minus observed.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_mrr_to_wsoe_cas_max[0].expected_interval, vif.rule_interval_table266_mrr_to_wsoe_cas_max[0].observed_interval), 0.001) iff (vif.rule_interval_table266_mrr_to_wsoe_cas_max[0].valid) {
      bins syndram_illegal__nonpositive = {[-1000000000:0]};
      bins pass_1ps_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_mrr_to_wsoe_cas_max[0].expected_interval, vif.rule_interval_table266_mrr_to_wsoe_cas_max[0].observed_interval), vif.nCK[0]) iff (vif.rule_interval_table266_mrr_to_wsoe_cas_max[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__nonpositive = {[-1000000000:0]};
      bins pass_1_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table266_mrr_to_wsoe_cas_max[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table266_mrr_to_wsoe_cas_max_sc0

  cg_rule_interval_table266_mrr_to_wsoe_cas_max_sc0 cg_rule_interval_table266_mrr_to_wsoe_cas_max_sc0_inst = new();

  covergroup cg_rule_interval_table266_mrr_to_wsoe_cas_max_sc1 @(vif.rule_interval_table266_mrr_to_wsoe_cas_max_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table266_mrr_to_wsoe_cas_max.sc1";
    // bound: less_than

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table266_mrr_to_wsoe_cas_max[1].pass iff (vif.rule_interval_table266_mrr_to_wsoe_cas_max[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical expected minus observed.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_mrr_to_wsoe_cas_max[1].expected_interval, vif.rule_interval_table266_mrr_to_wsoe_cas_max[1].observed_interval), 0.001) iff (vif.rule_interval_table266_mrr_to_wsoe_cas_max[1].valid) {
      bins syndram_illegal__nonpositive = {[-1000000000:0]};
      bins pass_1ps_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table266_mrr_to_wsoe_cas_max[1].expected_interval, vif.rule_interval_table266_mrr_to_wsoe_cas_max[1].observed_interval), vif.nCK[1]) iff (vif.rule_interval_table266_mrr_to_wsoe_cas_max[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__nonpositive = {[-1000000000:0]};
      bins pass_1_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table266_mrr_to_wsoe_cas_max[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table266_mrr_to_wsoe_cas_max_sc1

  cg_rule_interval_table266_mrr_to_wsoe_cas_max_sc1 cg_rule_interval_table266_mrr_to_wsoe_cas_max_sc1_inst = new();

  covergroup cg_rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on_sc0 @(vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on[0].pass iff (vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on[0].observed_interval, vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on[0].expected_interval), 0.001) iff (vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on[0].observed_interval, vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on_sc0

  cg_rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on_sc0 cg_rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on_sc0_inst = new();

  covergroup cg_rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on_sc1 @(vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on[1].pass iff (vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on[1].observed_interval, vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on[1].expected_interval), 0.001) iff (vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on[1].observed_interval, vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on_sc1

  cg_rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on_sc1 cg_rule_interval_table263_mrr_to_wr_without_new_sync_min_odt_on_sc1_inst = new();

  covergroup cg_rule_interval_table307_read_to_pde_odt_off_sc0 @(vif.rule_interval_table307_read_to_pde_odt_off_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_read_to_pde_odt_off.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_read_to_pde_odt_off[0].pass iff (vif.rule_interval_table307_read_to_pde_odt_off[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_read_to_pde_odt_off[0].observed_interval, vif.rule_interval_table307_read_to_pde_odt_off[0].expected_interval), 0.001) iff (vif.rule_interval_table307_read_to_pde_odt_off[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_read_to_pde_odt_off[0].observed_interval, vif.rule_interval_table307_read_to_pde_odt_off[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table307_read_to_pde_odt_off[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_read_to_pde_odt_off[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_read_to_pde_odt_off_sc0

  cg_rule_interval_table307_read_to_pde_odt_off_sc0 cg_rule_interval_table307_read_to_pde_odt_off_sc0_inst = new();

  covergroup cg_rule_interval_table307_read_to_pde_odt_off_sc1 @(vif.rule_interval_table307_read_to_pde_odt_off_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_read_to_pde_odt_off.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_read_to_pde_odt_off[1].pass iff (vif.rule_interval_table307_read_to_pde_odt_off[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_read_to_pde_odt_off[1].observed_interval, vif.rule_interval_table307_read_to_pde_odt_off[1].expected_interval), 0.001) iff (vif.rule_interval_table307_read_to_pde_odt_off[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_read_to_pde_odt_off[1].observed_interval, vif.rule_interval_table307_read_to_pde_odt_off[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table307_read_to_pde_odt_off[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_read_to_pde_odt_off[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_read_to_pde_odt_off_sc1

  cg_rule_interval_table307_read_to_pde_odt_off_sc1 cg_rule_interval_table307_read_to_pde_odt_off_sc1_inst = new();

  covergroup cg_rule_interval_table307_read_to_pde_odt_on_sc0 @(vif.rule_interval_table307_read_to_pde_odt_on_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_read_to_pde_odt_on.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_read_to_pde_odt_on[0].pass iff (vif.rule_interval_table307_read_to_pde_odt_on[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_read_to_pde_odt_on[0].observed_interval, vif.rule_interval_table307_read_to_pde_odt_on[0].expected_interval), 0.001) iff (vif.rule_interval_table307_read_to_pde_odt_on[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_read_to_pde_odt_on[0].observed_interval, vif.rule_interval_table307_read_to_pde_odt_on[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table307_read_to_pde_odt_on[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_read_to_pde_odt_on[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_read_to_pde_odt_on_sc0

  cg_rule_interval_table307_read_to_pde_odt_on_sc0 cg_rule_interval_table307_read_to_pde_odt_on_sc0_inst = new();

  covergroup cg_rule_interval_table307_read_to_pde_odt_on_sc1 @(vif.rule_interval_table307_read_to_pde_odt_on_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_read_to_pde_odt_on.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_read_to_pde_odt_on[1].pass iff (vif.rule_interval_table307_read_to_pde_odt_on[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_read_to_pde_odt_on[1].observed_interval, vif.rule_interval_table307_read_to_pde_odt_on[1].expected_interval), 0.001) iff (vif.rule_interval_table307_read_to_pde_odt_on[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_read_to_pde_odt_on[1].observed_interval, vif.rule_interval_table307_read_to_pde_odt_on[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table307_read_to_pde_odt_on[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_read_to_pde_odt_on[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_read_to_pde_odt_on_sc1

  cg_rule_interval_table307_read_to_pde_odt_on_sc1 cg_rule_interval_table307_read_to_pde_odt_on_sc1_inst = new();

  covergroup cg_rule_interval_table307_read_ap_to_pde_odt_off_sc0 @(vif.rule_interval_table307_read_ap_to_pde_odt_off_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_read_ap_to_pde_odt_off.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_read_ap_to_pde_odt_off[0].pass iff (vif.rule_interval_table307_read_ap_to_pde_odt_off[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_read_ap_to_pde_odt_off[0].observed_interval, vif.rule_interval_table307_read_ap_to_pde_odt_off[0].expected_interval), 0.001) iff (vif.rule_interval_table307_read_ap_to_pde_odt_off[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_read_ap_to_pde_odt_off[0].observed_interval, vif.rule_interval_table307_read_ap_to_pde_odt_off[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table307_read_ap_to_pde_odt_off[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_read_ap_to_pde_odt_off[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_read_ap_to_pde_odt_off_sc0

  cg_rule_interval_table307_read_ap_to_pde_odt_off_sc0 cg_rule_interval_table307_read_ap_to_pde_odt_off_sc0_inst = new();

  covergroup cg_rule_interval_table307_read_ap_to_pde_odt_off_sc1 @(vif.rule_interval_table307_read_ap_to_pde_odt_off_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_read_ap_to_pde_odt_off.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_read_ap_to_pde_odt_off[1].pass iff (vif.rule_interval_table307_read_ap_to_pde_odt_off[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_read_ap_to_pde_odt_off[1].observed_interval, vif.rule_interval_table307_read_ap_to_pde_odt_off[1].expected_interval), 0.001) iff (vif.rule_interval_table307_read_ap_to_pde_odt_off[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_read_ap_to_pde_odt_off[1].observed_interval, vif.rule_interval_table307_read_ap_to_pde_odt_off[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table307_read_ap_to_pde_odt_off[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_read_ap_to_pde_odt_off[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_read_ap_to_pde_odt_off_sc1

  cg_rule_interval_table307_read_ap_to_pde_odt_off_sc1 cg_rule_interval_table307_read_ap_to_pde_odt_off_sc1_inst = new();

  covergroup cg_rule_interval_table307_read_ap_to_pde_odt_on_sc0 @(vif.rule_interval_table307_read_ap_to_pde_odt_on_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_read_ap_to_pde_odt_on.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_read_ap_to_pde_odt_on[0].pass iff (vif.rule_interval_table307_read_ap_to_pde_odt_on[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_read_ap_to_pde_odt_on[0].observed_interval, vif.rule_interval_table307_read_ap_to_pde_odt_on[0].expected_interval), 0.001) iff (vif.rule_interval_table307_read_ap_to_pde_odt_on[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_read_ap_to_pde_odt_on[0].observed_interval, vif.rule_interval_table307_read_ap_to_pde_odt_on[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table307_read_ap_to_pde_odt_on[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_read_ap_to_pde_odt_on[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_read_ap_to_pde_odt_on_sc0

  cg_rule_interval_table307_read_ap_to_pde_odt_on_sc0 cg_rule_interval_table307_read_ap_to_pde_odt_on_sc0_inst = new();

  covergroup cg_rule_interval_table307_read_ap_to_pde_odt_on_sc1 @(vif.rule_interval_table307_read_ap_to_pde_odt_on_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_read_ap_to_pde_odt_on.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_read_ap_to_pde_odt_on[1].pass iff (vif.rule_interval_table307_read_ap_to_pde_odt_on[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_read_ap_to_pde_odt_on[1].observed_interval, vif.rule_interval_table307_read_ap_to_pde_odt_on[1].expected_interval), 0.001) iff (vif.rule_interval_table307_read_ap_to_pde_odt_on[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_read_ap_to_pde_odt_on[1].observed_interval, vif.rule_interval_table307_read_ap_to_pde_odt_on[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table307_read_ap_to_pde_odt_on[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_read_ap_to_pde_odt_on[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_read_ap_to_pde_odt_on_sc1

  cg_rule_interval_table307_read_ap_to_pde_odt_on_sc1 cg_rule_interval_table307_read_ap_to_pde_odt_on_sc1_inst = new();

  covergroup cg_rule_interval_table307_mrr_to_pde_odt_off_sc0 @(vif.rule_interval_table307_mrr_to_pde_odt_off_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_mrr_to_pde_odt_off.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_mrr_to_pde_odt_off[0].pass iff (vif.rule_interval_table307_mrr_to_pde_odt_off[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_mrr_to_pde_odt_off[0].observed_interval, vif.rule_interval_table307_mrr_to_pde_odt_off[0].expected_interval), 0.001) iff (vif.rule_interval_table307_mrr_to_pde_odt_off[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_mrr_to_pde_odt_off[0].observed_interval, vif.rule_interval_table307_mrr_to_pde_odt_off[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table307_mrr_to_pde_odt_off[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_mrr_to_pde_odt_off[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_mrr_to_pde_odt_off_sc0

  cg_rule_interval_table307_mrr_to_pde_odt_off_sc0 cg_rule_interval_table307_mrr_to_pde_odt_off_sc0_inst = new();

  covergroup cg_rule_interval_table307_mrr_to_pde_odt_off_sc1 @(vif.rule_interval_table307_mrr_to_pde_odt_off_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_mrr_to_pde_odt_off.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_mrr_to_pde_odt_off[1].pass iff (vif.rule_interval_table307_mrr_to_pde_odt_off[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_mrr_to_pde_odt_off[1].observed_interval, vif.rule_interval_table307_mrr_to_pde_odt_off[1].expected_interval), 0.001) iff (vif.rule_interval_table307_mrr_to_pde_odt_off[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_mrr_to_pde_odt_off[1].observed_interval, vif.rule_interval_table307_mrr_to_pde_odt_off[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table307_mrr_to_pde_odt_off[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_mrr_to_pde_odt_off[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_mrr_to_pde_odt_off_sc1

  cg_rule_interval_table307_mrr_to_pde_odt_off_sc1 cg_rule_interval_table307_mrr_to_pde_odt_off_sc1_inst = new();

  covergroup cg_rule_interval_table307_mrr_to_pde_odt_on_sc0 @(vif.rule_interval_table307_mrr_to_pde_odt_on_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_mrr_to_pde_odt_on.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_mrr_to_pde_odt_on[0].pass iff (vif.rule_interval_table307_mrr_to_pde_odt_on[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_mrr_to_pde_odt_on[0].observed_interval, vif.rule_interval_table307_mrr_to_pde_odt_on[0].expected_interval), 0.001) iff (vif.rule_interval_table307_mrr_to_pde_odt_on[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_mrr_to_pde_odt_on[0].observed_interval, vif.rule_interval_table307_mrr_to_pde_odt_on[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table307_mrr_to_pde_odt_on[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_mrr_to_pde_odt_on[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_mrr_to_pde_odt_on_sc0

  cg_rule_interval_table307_mrr_to_pde_odt_on_sc0 cg_rule_interval_table307_mrr_to_pde_odt_on_sc0_inst = new();

  covergroup cg_rule_interval_table307_mrr_to_pde_odt_on_sc1 @(vif.rule_interval_table307_mrr_to_pde_odt_on_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table307_mrr_to_pde_odt_on.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table307_mrr_to_pde_odt_on[1].pass iff (vif.rule_interval_table307_mrr_to_pde_odt_on[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_mrr_to_pde_odt_on[1].observed_interval, vif.rule_interval_table307_mrr_to_pde_odt_on[1].expected_interval), 0.001) iff (vif.rule_interval_table307_mrr_to_pde_odt_on[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table307_mrr_to_pde_odt_on[1].observed_interval, vif.rule_interval_table307_mrr_to_pde_odt_on[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table307_mrr_to_pde_odt_on[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table307_mrr_to_pde_odt_on[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table307_mrr_to_pde_odt_on_sc1

  cg_rule_interval_table307_mrr_to_pde_odt_on_sc1 cg_rule_interval_table307_mrr_to_pde_odt_on_sc1_inst = new();

  covergroup cg_rule_interval_table399_mrr_to_mrw_nt_affected_sc0 @(vif.rule_interval_table399_mrr_to_mrw_nt_affected_sampled[0]);
    option.per_instance = 1;
    option.name = "rule_interval_table399_mrr_to_mrw_nt_affected.sc0";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table399_mrr_to_mrw_nt_affected[0].pass iff (vif.rule_interval_table399_mrr_to_mrw_nt_affected[0].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrr_to_mrw_nt_affected[0].observed_interval, vif.rule_interval_table399_mrr_to_mrw_nt_affected[0].expected_interval), 0.001) iff (vif.rule_interval_table399_mrr_to_mrw_nt_affected[0].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrr_to_mrw_nt_affected[0].observed_interval, vif.rule_interval_table399_mrr_to_mrw_nt_affected[0].expected_interval), vif.nCK[0]) iff (vif.rule_interval_table399_mrr_to_mrw_nt_affected[0].valid && vif.nCK_valid[0] && vif.nCK[0] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table399_mrr_to_mrw_nt_affected[0].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table399_mrr_to_mrw_nt_affected_sc0

  cg_rule_interval_table399_mrr_to_mrw_nt_affected_sc0 cg_rule_interval_table399_mrr_to_mrw_nt_affected_sc0_inst = new();

  covergroup cg_rule_interval_table399_mrr_to_mrw_nt_affected_sc1 @(vif.rule_interval_table399_mrr_to_mrw_nt_affected_sampled[1]);
    option.per_instance = 1;
    option.name = "rule_interval_table399_mrr_to_mrw_nt_affected.sc1";
    // bound: at_least

    // Canonical semantic outcome; margin buckets are diagnostics only.
    cp_result: coverpoint vif.rule_interval_table399_mrr_to_mrw_nt_affected[1].pass iff (vif.rule_interval_table399_mrr_to_mrw_nt_affected[1].valid) {
      bins legal = {1'b1};
      bins syndram_illegal__violation = {1'b0};
    }

    // Margin in ps: canonical observed minus expected.
    cp_margin_ps: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrr_to_mrw_nt_affected[1].observed_interval, vif.rule_interval_table399_mrr_to_mrw_nt_affected[1].expected_interval), 0.001) iff (vif.rule_interval_table399_mrr_to_mrw_nt_affected[1].valid) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10ns = {[1:10000]};
      bins pass_gt_10ns = {[10001:1000000000]};
    }

    // Margin in cycles.
    cp_margin_cycles: coverpoint ypu_margin_bucket(ypu_time_delta(vif.rule_interval_table399_mrr_to_mrw_nt_affected[1].observed_interval, vif.rule_interval_table399_mrr_to_mrw_nt_affected[1].expected_interval), vif.nCK[1]) iff (vif.rule_interval_table399_mrr_to_mrw_nt_affected[1].valid && vif.nCK_valid[1] && vif.nCK[1] > 0.0) {
      bins syndram_illegal__negative = {[-1000000000:-1]};
      bins exact = {0};
      bins pass_0_to_10cycles = {[1:10]};
      bins pass_gt_10cycles = {[11:1000000000]};
    }

    cp_sample: coverpoint vif.rule_interval_table399_mrr_to_mrw_nt_affected[1].valid {
      bins sampled = {1'b1};
    }
  endgroup : cg_rule_interval_table399_mrr_to_mrw_nt_affected_sc1

  cg_rule_interval_table399_mrr_to_mrw_nt_affected_sc1 cg_rule_interval_table399_mrr_to_mrw_nt_affected_sc1_inst = new();

