
  // Speed-grade coverage derived from the Table 275 data-rate ranges.

  covergroup cg_speed_grade_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "speed_grade.sc0";
    cp_speed_grade: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt1067_lte1600[0].active, vif.state_state_dramconfig_data_rate_mbps_gt7500_lte8533[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins speed_grade_1600 = {2'b10};
      bins speed_grade_8533 = {2'b01};
    }
  endgroup : cg_speed_grade_sc0

  cg_speed_grade_sc0 cg_speed_grade_sc0_inst = new();

  covergroup cg_speed_grade_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "speed_grade.sc1";
    cp_speed_grade: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt1067_lte1600[1].active, vif.state_state_dramconfig_data_rate_mbps_gt7500_lte8533[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins speed_grade_1600 = {2'b10};
      bins speed_grade_8533 = {2'b01};
    }
  endgroup : cg_speed_grade_sc1

  cg_speed_grade_sc1 cg_speed_grade_sc1_inst = new();
