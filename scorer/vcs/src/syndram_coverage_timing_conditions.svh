
  // Timing-parameter condition-combination coverage generated from timing_parameters.yaml.

  covergroup cg_timing_symbol_conditions_bl_n_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.BL/n.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 6 nCK, subchannel 0
    cp_value__0: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_24)), (((vif.last_cmd_pair[0].previous.protocol_field_sc == vif.last_cmd_pair[0].current.protocol_field_sc) && (vif.last_cmd_pair[0].previous.bg == vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[1]: 12 nCK, subchannel 0
    cp_value__1: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_48)), (((vif.last_cmd_pair[0].previous.protocol_field_sc == vif.last_cmd_pair[0].current.protocol_field_sc) && (vif.last_cmd_pair[0].previous.bg == vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[2]: 6 nCK, subchannel 0
    cp_value__2: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_24)), (((vif.last_cmd_pair[0].previous.protocol_field_sc != vif.last_cmd_pair[0].current.protocol_field_sc) || (vif.last_cmd_pair[0].previous.bg != vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[3]: 12 nCK, subchannel 0
    cp_value__3: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_48)), (((vif.last_cmd_pair[0].previous.protocol_field_sc != vif.last_cmd_pair[0].current.protocol_field_sc) || (vif.last_cmd_pair[0].previous.bg != vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[4]: tCCD_L, subchannel 0
    cp_value__4: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_24)), (((vif.last_cmd_pair[0].previous.protocol_field_sc == vif.last_cmd_pair[0].current.protocol_field_sc) && (vif.last_cmd_pair[0].previous.bg == vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[5]: tCCD_L, subchannel 0
    cp_value__5: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_48)), (((vif.last_cmd_pair[0].previous.protocol_field_sc == vif.last_cmd_pair[0].current.protocol_field_sc) && (vif.last_cmd_pair[0].previous.bg == vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[6]: 6 nCK, subchannel 0
    cp_value__6: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_24)), (((vif.last_cmd_pair[0].previous.protocol_field_sc != vif.last_cmd_pair[0].current.protocol_field_sc) || (vif.last_cmd_pair[0].previous.bg != vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[7]: 6 nCK, subchannel 0
    cp_value__7: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_48)), (((vif.last_cmd_pair[0].previous.protocol_field_sc != vif.last_cmd_pair[0].current.protocol_field_sc) || (vif.last_cmd_pair[0].previous.bg != vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }
  endgroup : cg_timing_symbol_conditions_bl_n_sc0

  cg_timing_symbol_conditions_bl_n_sc0 cg_timing_symbol_conditions_bl_n_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_bl_n_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.BL/n.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 6 nCK, subchannel 1
    cp_value__0: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_24)), (((vif.last_cmd_pair[1].previous.protocol_field_sc == vif.last_cmd_pair[1].current.protocol_field_sc) && (vif.last_cmd_pair[1].previous.bg == vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[1]: 12 nCK, subchannel 1
    cp_value__1: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_48)), (((vif.last_cmd_pair[1].previous.protocol_field_sc == vif.last_cmd_pair[1].current.protocol_field_sc) && (vif.last_cmd_pair[1].previous.bg == vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[2]: 6 nCK, subchannel 1
    cp_value__2: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_24)), (((vif.last_cmd_pair[1].previous.protocol_field_sc != vif.last_cmd_pair[1].current.protocol_field_sc) || (vif.last_cmd_pair[1].previous.bg != vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[3]: 12 nCK, subchannel 1
    cp_value__3: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_48)), (((vif.last_cmd_pair[1].previous.protocol_field_sc != vif.last_cmd_pair[1].current.protocol_field_sc) || (vif.last_cmd_pair[1].previous.bg != vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[4]: tCCD_L, subchannel 1
    cp_value__4: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_24)), (((vif.last_cmd_pair[1].previous.protocol_field_sc == vif.last_cmd_pair[1].current.protocol_field_sc) && (vif.last_cmd_pair[1].previous.bg == vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[5]: tCCD_L, subchannel 1
    cp_value__5: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_48)), (((vif.last_cmd_pair[1].previous.protocol_field_sc == vif.last_cmd_pair[1].current.protocol_field_sc) && (vif.last_cmd_pair[1].previous.bg == vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[6]: 6 nCK, subchannel 1
    cp_value__6: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_24)), (((vif.last_cmd_pair[1].previous.protocol_field_sc != vif.last_cmd_pair[1].current.protocol_field_sc) || (vif.last_cmd_pair[1].previous.bg != vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[7]: 6 nCK, subchannel 1
    cp_value__7: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_48)), (((vif.last_cmd_pair[1].previous.protocol_field_sc != vif.last_cmd_pair[1].current.protocol_field_sc) || (vif.last_cmd_pair[1].previous.bg != vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }
  endgroup : cg_timing_symbol_conditions_bl_n_sc1

  cg_timing_symbol_conditions_bl_n_sc1 cg_timing_symbol_conditions_bl_n_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_bl_n_max_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.BL/n_max.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 6 nCK, subchannel 0
    cp_value__0: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_24)), (((vif.last_cmd_pair[0].previous.protocol_field_sc == vif.last_cmd_pair[0].current.protocol_field_sc) && (vif.last_cmd_pair[0].previous.bg == vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[1]: 12 nCK, subchannel 0
    cp_value__1: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_48)), (((vif.last_cmd_pair[0].previous.protocol_field_sc == vif.last_cmd_pair[0].current.protocol_field_sc) && (vif.last_cmd_pair[0].previous.bg == vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[2]: 6 nCK, subchannel 0
    cp_value__2: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_24)), (((vif.last_cmd_pair[0].previous.protocol_field_sc != vif.last_cmd_pair[0].current.protocol_field_sc) || (vif.last_cmd_pair[0].previous.bg != vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[3]: 12 nCK, subchannel 0
    cp_value__3: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_48)), (((vif.last_cmd_pair[0].previous.protocol_field_sc != vif.last_cmd_pair[0].current.protocol_field_sc) || (vif.last_cmd_pair[0].previous.bg != vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[4]: 12 nCK, subchannel 0
    cp_value__4: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_24)), (((vif.last_cmd_pair[0].previous.protocol_field_sc == vif.last_cmd_pair[0].current.protocol_field_sc) && (vif.last_cmd_pair[0].previous.bg == vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[5]: 24 nCK, subchannel 0
    cp_value__5: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_48)), (((vif.last_cmd_pair[0].previous.protocol_field_sc == vif.last_cmd_pair[0].current.protocol_field_sc) && (vif.last_cmd_pair[0].previous.bg == vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[6]: 12 nCK, subchannel 0
    cp_value__6: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_24)), (((vif.last_cmd_pair[0].previous.protocol_field_sc != vif.last_cmd_pair[0].current.protocol_field_sc) || (vif.last_cmd_pair[0].previous.bg != vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[7]: 24 nCK, subchannel 0
    cp_value__7: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_48)), (((vif.last_cmd_pair[0].previous.protocol_field_sc != vif.last_cmd_pair[0].current.protocol_field_sc) || (vif.last_cmd_pair[0].previous.bg != vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }
  endgroup : cg_timing_symbol_conditions_bl_n_max_sc0

  cg_timing_symbol_conditions_bl_n_max_sc0 cg_timing_symbol_conditions_bl_n_max_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_bl_n_max_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.BL/n_max.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 6 nCK, subchannel 1
    cp_value__0: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_24)), (((vif.last_cmd_pair[1].previous.protocol_field_sc == vif.last_cmd_pair[1].current.protocol_field_sc) && (vif.last_cmd_pair[1].previous.bg == vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[1]: 12 nCK, subchannel 1
    cp_value__1: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_48)), (((vif.last_cmd_pair[1].previous.protocol_field_sc == vif.last_cmd_pair[1].current.protocol_field_sc) && (vif.last_cmd_pair[1].previous.bg == vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[2]: 6 nCK, subchannel 1
    cp_value__2: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_24)), (((vif.last_cmd_pair[1].previous.protocol_field_sc != vif.last_cmd_pair[1].current.protocol_field_sc) || (vif.last_cmd_pair[1].previous.bg != vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[3]: 12 nCK, subchannel 1
    cp_value__3: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_48)), (((vif.last_cmd_pair[1].previous.protocol_field_sc != vif.last_cmd_pair[1].current.protocol_field_sc) || (vif.last_cmd_pair[1].previous.bg != vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[4]: 12 nCK, subchannel 1
    cp_value__4: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_24)), (((vif.last_cmd_pair[1].previous.protocol_field_sc == vif.last_cmd_pair[1].current.protocol_field_sc) && (vif.last_cmd_pair[1].previous.bg == vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[5]: 24 nCK, subchannel 1
    cp_value__5: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_48)), (((vif.last_cmd_pair[1].previous.protocol_field_sc == vif.last_cmd_pair[1].current.protocol_field_sc) && (vif.last_cmd_pair[1].previous.bg == vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[6]: 12 nCK, subchannel 1
    cp_value__6: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_24)), (((vif.last_cmd_pair[1].previous.protocol_field_sc != vif.last_cmd_pair[1].current.protocol_field_sc) || (vif.last_cmd_pair[1].previous.bg != vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[7]: 24 nCK, subchannel 1
    cp_value__7: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_48)), (((vif.last_cmd_pair[1].previous.protocol_field_sc != vif.last_cmd_pair[1].current.protocol_field_sc) || (vif.last_cmd_pair[1].previous.bg != vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }
  endgroup : cg_timing_symbol_conditions_bl_n_max_sc1

  cg_timing_symbol_conditions_bl_n_max_sc1 cg_timing_symbol_conditions_bl_n_max_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_bl_n_min_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.BL/n_min.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 6 nCK, subchannel 0
    cp_value__0: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_24)), (((vif.last_cmd_pair[0].previous.protocol_field_sc == vif.last_cmd_pair[0].current.protocol_field_sc) && (vif.last_cmd_pair[0].previous.bg == vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[1]: 12 nCK, subchannel 0
    cp_value__1: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_48)), (((vif.last_cmd_pair[0].previous.protocol_field_sc == vif.last_cmd_pair[0].current.protocol_field_sc) && (vif.last_cmd_pair[0].previous.bg == vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[2]: 6 nCK, subchannel 0
    cp_value__2: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_24)), (((vif.last_cmd_pair[0].previous.protocol_field_sc != vif.last_cmd_pair[0].current.protocol_field_sc) || (vif.last_cmd_pair[0].previous.bg != vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[3]: 12 nCK, subchannel 0
    cp_value__3: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_48)), (((vif.last_cmd_pair[0].previous.protocol_field_sc != vif.last_cmd_pair[0].current.protocol_field_sc) || (vif.last_cmd_pair[0].previous.bg != vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[4]: 6 nCK, subchannel 0
    cp_value__4: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_24)), (((vif.last_cmd_pair[0].previous.protocol_field_sc == vif.last_cmd_pair[0].current.protocol_field_sc) && (vif.last_cmd_pair[0].previous.bg == vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[5]: 18 nCK, subchannel 0
    cp_value__5: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_48)), (((vif.last_cmd_pair[0].previous.protocol_field_sc == vif.last_cmd_pair[0].current.protocol_field_sc) && (vif.last_cmd_pair[0].previous.bg == vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[6]: 6 nCK, subchannel 0
    cp_value__6: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_24)), (((vif.last_cmd_pair[0].previous.protocol_field_sc != vif.last_cmd_pair[0].current.protocol_field_sc) || (vif.last_cmd_pair[0].previous.bg != vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[7]: 18 nCK, subchannel 0
    cp_value__7: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_48)), (((vif.last_cmd_pair[0].previous.protocol_field_sc != vif.last_cmd_pair[0].current.protocol_field_sc) || (vif.last_cmd_pair[0].previous.bg != vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {4'b1111};
    }
  endgroup : cg_timing_symbol_conditions_bl_n_min_sc0

  cg_timing_symbol_conditions_bl_n_min_sc0 cg_timing_symbol_conditions_bl_n_min_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_bl_n_min_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.BL/n_min.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 6 nCK, subchannel 1
    cp_value__0: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_24)), (((vif.last_cmd_pair[1].previous.protocol_field_sc == vif.last_cmd_pair[1].current.protocol_field_sc) && (vif.last_cmd_pair[1].previous.bg == vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[1]: 12 nCK, subchannel 1
    cp_value__1: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_48)), (((vif.last_cmd_pair[1].previous.protocol_field_sc == vif.last_cmd_pair[1].current.protocol_field_sc) && (vif.last_cmd_pair[1].previous.bg == vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[2]: 6 nCK, subchannel 1
    cp_value__2: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_24)), (((vif.last_cmd_pair[1].previous.protocol_field_sc != vif.last_cmd_pair[1].current.protocol_field_sc) || (vif.last_cmd_pair[1].previous.bg != vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[3]: 12 nCK, subchannel 1
    cp_value__3: coverpoint {vif.state_state_dramconfig_wck_frequency_lte3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_48)), (((vif.last_cmd_pair[1].previous.protocol_field_sc != vif.last_cmd_pair[1].current.protocol_field_sc) || (vif.last_cmd_pair[1].previous.bg != vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[4]: 6 nCK, subchannel 1
    cp_value__4: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_24)), (((vif.last_cmd_pair[1].previous.protocol_field_sc == vif.last_cmd_pair[1].current.protocol_field_sc) && (vif.last_cmd_pair[1].previous.bg == vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[5]: 18 nCK, subchannel 1
    cp_value__5: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_48)), (((vif.last_cmd_pair[1].previous.protocol_field_sc == vif.last_cmd_pair[1].current.protocol_field_sc) && (vif.last_cmd_pair[1].previous.bg == vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[6]: 6 nCK, subchannel 1
    cp_value__6: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_24)), (((vif.last_cmd_pair[1].previous.protocol_field_sc != vif.last_cmd_pair[1].current.protocol_field_sc) || (vif.last_cmd_pair[1].previous.bg != vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }

    // value[7]: 18 nCK, subchannel 1
    cp_value__7: coverpoint {vif.state_state_dramconfig_wck_frequency_gt3200mhz[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_48)), (((vif.last_cmd_pair[1].previous.protocol_field_sc != vif.last_cmd_pair[1].current.protocol_field_sc) || (vif.last_cmd_pair[1].previous.bg != vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {4'b1111};
    }
  endgroup : cg_timing_symbol_conditions_bl_n_min_sc1

  cg_timing_symbol_conditions_bl_n_min_sc1 cg_timing_symbol_conditions_bl_n_min_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_odtlon_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.ODTLon.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: WL - 2 nCK, subchannel 0
    cp_value__0: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_low[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: WL - 8 nCK, subchannel 0
    cp_value__1: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_high[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_odtlon_sc0

  cg_timing_symbol_conditions_odtlon_sc0 cg_timing_symbol_conditions_odtlon_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_odtlon_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.ODTLon.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: WL - 2 nCK, subchannel 1
    cp_value__0: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_low[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: WL - 8 nCK, subchannel 1
    cp_value__1: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_high[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_odtlon_sc1

  cg_timing_symbol_conditions_odtlon_sc1 cg_timing_symbol_conditions_odtlon_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_odtlon_rd_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.ODTLon_RD.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: ODTLon_RD_DQ, subchannel 0
    cp_value__0: coverpoint {vif.state_state_v1_mr22_rdqs_00b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: Max(ODTLon_RD_DQ, ODTLon_RD_RDQS), subchannel 0
    cp_value__1: coverpoint {vif.state_state_v1_mr22_rdqs_01b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }

    // value[2]: Max(ODTLon_RD_DQ, ODTLon_RD_RDQS), subchannel 0
    cp_value__2: coverpoint {vif.state_state_v1_mr22_rdqs_10b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }

    // value[3]: Max(ODTLon_RD_DQ, ODTLon_RD_RDQS), subchannel 0
    cp_value__3: coverpoint {vif.state_state_v1_mr22_rdqs_11b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_odtlon_rd_sc0

  cg_timing_symbol_conditions_odtlon_rd_sc0 cg_timing_symbol_conditions_odtlon_rd_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_odtlon_rd_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.ODTLon_RD.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: ODTLon_RD_DQ, subchannel 1
    cp_value__0: coverpoint {vif.state_state_v1_mr22_rdqs_00b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: Max(ODTLon_RD_DQ, ODTLon_RD_RDQS), subchannel 1
    cp_value__1: coverpoint {vif.state_state_v1_mr22_rdqs_01b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }

    // value[2]: Max(ODTLon_RD_DQ, ODTLon_RD_RDQS), subchannel 1
    cp_value__2: coverpoint {vif.state_state_v1_mr22_rdqs_10b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }

    // value[3]: Max(ODTLon_RD_DQ, ODTLon_RD_RDQS), subchannel 1
    cp_value__3: coverpoint {vif.state_state_v1_mr22_rdqs_11b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_odtlon_rd_sc1

  cg_timing_symbol_conditions_odtlon_rd_sc1 cg_timing_symbol_conditions_odtlon_rd_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_rl_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.RL.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 9 nCK, subchannel 0
    cp_value__0: coverpoint {vif.state_state_mr1_op4_0_latency_setting_00001b[0].active, vif.state_state_efficiency_mode_inactive[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: 46 nCK, subchannel 0
    cp_value__1: coverpoint {vif.state_state_mr1_op4_0_latency_setting_01011b[0].active, vif.state_state_efficiency_mode_inactive[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[2]: 10 nCK, subchannel 0
    cp_value__2: coverpoint {vif.state_state_mr1_op4_0_latency_setting_00001b[0].active, vif.state_state_efficiency_mode_active.active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[3]: 50 nCK, subchannel 0
    cp_value__3: coverpoint {vif.state_state_mr1_op4_0_latency_setting_01011b[0].active, vif.state_state_efficiency_mode_active.active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_rl_sc0

  cg_timing_symbol_conditions_rl_sc0 cg_timing_symbol_conditions_rl_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_rl_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.RL.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 9 nCK, subchannel 1
    cp_value__0: coverpoint {vif.state_state_mr1_op4_0_latency_setting_00001b[1].active, vif.state_state_efficiency_mode_inactive[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: 46 nCK, subchannel 1
    cp_value__1: coverpoint {vif.state_state_mr1_op4_0_latency_setting_01011b[1].active, vif.state_state_efficiency_mode_inactive[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[2]: 10 nCK, subchannel 1
    cp_value__2: coverpoint {vif.state_state_mr1_op4_0_latency_setting_00001b[1].active, vif.state_state_efficiency_mode_active.active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[3]: 50 nCK, subchannel 1
    cp_value__3: coverpoint {vif.state_state_mr1_op4_0_latency_setting_01011b[1].active, vif.state_state_efficiency_mode_active.active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_rl_sc1

  cg_timing_symbol_conditions_rl_sc1 cg_timing_symbol_conditions_rl_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_wl_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.WL.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 6 nCK, subchannel 0
    cp_value__0: coverpoint {vif.state_state_mr1_op4_0_latency_setting_00001b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: 22 nCK, subchannel 0
    cp_value__1: coverpoint {vif.state_state_mr1_op4_0_latency_setting_01011b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_wl_sc0

  cg_timing_symbol_conditions_wl_sc0 cg_timing_symbol_conditions_wl_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_wl_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.WL.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 6 nCK, subchannel 1
    cp_value__0: coverpoint {vif.state_state_mr1_op4_0_latency_setting_00001b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: 22 nCK, subchannel 1
    cp_value__1: coverpoint {vif.state_state_mr1_op4_0_latency_setting_01011b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_wl_sc1

  cg_timing_symbol_conditions_wl_sc1 cg_timing_symbol_conditions_wl_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_nacu_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.nACU.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 9 nCK, subchannel 0
    cp_value__0: coverpoint {vif.state_state_mr1_op4_0_latency_setting_00001b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: 47 nCK, subchannel 0
    cp_value__1: coverpoint {vif.state_state_mr1_op4_0_latency_setting_01011b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_nacu_sc0

  cg_timing_symbol_conditions_nacu_sc0 cg_timing_symbol_conditions_nacu_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_nacu_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.nACU.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 9 nCK, subchannel 1
    cp_value__0: coverpoint {vif.state_state_mr1_op4_0_latency_setting_00001b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: 47 nCK, subchannel 1
    cp_value__1: coverpoint {vif.state_state_mr1_op4_0_latency_setting_01011b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_nacu_sc1

  cg_timing_symbol_conditions_nacu_sc1 cg_timing_symbol_conditions_nacu_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_nrtp_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.nRTP.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 7 nCK, subchannel 0
    cp_value__0: coverpoint {vif.state_state_mr1_op4_0_latency_setting_00001b[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_24))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {3'b111};
    }

    // value[1]: 13 nCK, subchannel 0
    cp_value__1: coverpoint {vif.state_state_mr1_op4_0_latency_setting_00001b[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_48))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {3'b111};
    }

    // value[2]: 11 nCK, subchannel 0
    cp_value__2: coverpoint {vif.state_state_mr1_op4_0_latency_setting_01011b[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_24))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {3'b111};
    }

    // value[3]: 23 nCK, subchannel 0
    cp_value__3: coverpoint {vif.state_state_mr1_op4_0_latency_setting_01011b[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_48))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {3'b111};
    }
  endgroup : cg_timing_symbol_conditions_nrtp_sc0

  cg_timing_symbol_conditions_nrtp_sc0 cg_timing_symbol_conditions_nrtp_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_nrtp_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.nRTP.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 7 nCK, subchannel 1
    cp_value__0: coverpoint {vif.state_state_mr1_op4_0_latency_setting_00001b[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_24))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {3'b111};
    }

    // value[1]: 13 nCK, subchannel 1
    cp_value__1: coverpoint {vif.state_state_mr1_op4_0_latency_setting_00001b[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_48))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {3'b111};
    }

    // value[2]: 11 nCK, subchannel 1
    cp_value__2: coverpoint {vif.state_state_mr1_op4_0_latency_setting_01011b[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_24))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {3'b111};
    }

    // value[3]: 23 nCK, subchannel 1
    cp_value__3: coverpoint {vif.state_state_mr1_op4_0_latency_setting_01011b[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_48))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {3'b111};
    }
  endgroup : cg_timing_symbol_conditions_nrtp_sc1

  cg_timing_symbol_conditions_nrtp_sc1 cg_timing_symbol_conditions_nrtp_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_nwtp_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.nWTP.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 6 nCK, subchannel 0
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[0].active, vif.state_state_mr1_op4_0_latency_setting_00001b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: 26 nCK, subchannel 0
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_inactive[0].active, vif.state_state_mr1_op4_0_latency_setting_01011b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[2]: 6 nCK, subchannel 0
    cp_value__2: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_mr1_op4_0_latency_setting_00001b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[3]: 30 nCK, subchannel 0
    cp_value__3: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_mr1_op4_0_latency_setting_01011b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_nwtp_sc0

  cg_timing_symbol_conditions_nwtp_sc0 cg_timing_symbol_conditions_nwtp_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_nwtp_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.nWTP.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 6 nCK, subchannel 1
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[1].active, vif.state_state_mr1_op4_0_latency_setting_00001b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: 26 nCK, subchannel 1
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_inactive[1].active, vif.state_state_mr1_op4_0_latency_setting_01011b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[2]: 6 nCK, subchannel 1
    cp_value__2: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_mr1_op4_0_latency_setting_00001b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[3]: 30 nCK, subchannel 1
    cp_value__3: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_mr1_op4_0_latency_setting_01011b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_nwtp_sc1

  cg_timing_symbol_conditions_nwtp_sc1 cg_timing_symbol_conditions_nwtp_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_tacu_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tACU.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 22 ns, subchannel 0
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[0].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: 22 ns, subchannel 0
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_tacu_sc0

  cg_timing_symbol_conditions_tacu_sc0 cg_timing_symbol_conditions_tacu_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_tacu_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tACU.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 22 ns, subchannel 1
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[1].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: 22 ns, subchannel 1
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_tacu_sc1

  cg_timing_symbol_conditions_tacu_sc1 cg_timing_symbol_conditions_tacu_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_tccd_l_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tCCD_L.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 6 nCK, subchannel 0
    cp_value__0: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt1067_lte1600[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_24))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {3'b111};
    }

    // value[1]: 12 nCK, subchannel 0
    cp_value__1: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt1067_lte1600[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_48))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {3'b111};
    }

    // value[2]: 8 nCK, subchannel 0
    cp_value__2: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt7500_lte8533[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_24))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {3'b111};
    }

    // value[3]: 20 nCK, subchannel 0
    cp_value__3: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt7500_lte8533[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.bl == BL_48))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {3'b111};
    }
  endgroup : cg_timing_symbol_conditions_tccd_l_sc0

  cg_timing_symbol_conditions_tccd_l_sc0 cg_timing_symbol_conditions_tccd_l_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_tccd_l_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tCCD_L.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 6 nCK, subchannel 1
    cp_value__0: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt1067_lte1600[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_24))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {3'b111};
    }

    // value[1]: 12 nCK, subchannel 1
    cp_value__1: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt1067_lte1600[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_48))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {3'b111};
    }

    // value[2]: 8 nCK, subchannel 1
    cp_value__2: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt7500_lte8533[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_24))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {3'b111};
    }

    // value[3]: 20 nCK, subchannel 1
    cp_value__3: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt7500_lte8533[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.bl == BL_48))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {3'b111};
    }
  endgroup : cg_timing_symbol_conditions_tccd_l_sc1

  cg_timing_symbol_conditions_tccd_l_sc1 cg_timing_symbol_conditions_tccd_l_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_tfaw_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tFAW.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 4*tRRD, subchannel 0
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[0].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: 4*tRRD, subchannel 0
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_tfaw_sc0

  cg_timing_symbol_conditions_tfaw_sc0 cg_timing_symbol_conditions_tfaw_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_tfaw_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tFAW.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 4*tRRD, subchannel 1
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[1].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: 4*tRRD, subchannel 1
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_tfaw_sc1

  cg_timing_symbol_conditions_tfaw_sc1 cg_timing_symbol_conditions_tfaw_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_tppd_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tPPD.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 4 nCK, subchannel 0
    cp_value__0: coverpoint {vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_tppd_sc0

  cg_timing_symbol_conditions_tppd_sc0 cg_timing_symbol_conditions_tppd_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_tppd_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tPPD.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 4 nCK, subchannel 1
    cp_value__0: coverpoint {vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_tppd_sc1

  cg_timing_symbol_conditions_tppd_sc1 cg_timing_symbol_conditions_tppd_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_tras_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRAS.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: Max(20 ns, 4 nCK), subchannel 0
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[0].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: Max(20 ns, 4 nCK), subchannel 0
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_tras_sc0

  cg_timing_symbol_conditions_tras_sc0 cg_timing_symbol_conditions_tras_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_tras_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRAS.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: Max(20 ns, 4 nCK), subchannel 1
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[1].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: Max(20 ns, 4 nCK), subchannel 1
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_tras_sc1

  cg_timing_symbol_conditions_tras_sc1 cg_timing_symbol_conditions_tras_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_trc_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRC.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: tRAS + tRPab, subchannel 0
    cp_value__0: coverpoint {vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.ab == 1'b1))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {3'b111};
    }

    // value[1]: tRAS + tRPpb, subchannel 0
    cp_value__1: coverpoint {vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.ab == 1'b0))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {3'b111};
    }
  endgroup : cg_timing_symbol_conditions_trc_sc0

  cg_timing_symbol_conditions_trc_sc0 cg_timing_symbol_conditions_trc_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_trc_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRC.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: tRAS + tRPab, subchannel 1
    cp_value__0: coverpoint {vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.ab == 1'b1))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {3'b111};
    }

    // value[1]: tRAS + tRPpb, subchannel 1
    cp_value__1: coverpoint {vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.ab == 1'b0))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {3'b111};
    }
  endgroup : cg_timing_symbol_conditions_trc_sc1

  cg_timing_symbol_conditions_trc_sc1 cg_timing_symbol_conditions_trc_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_trcdr_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRCDr.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: Max(18 ns, 2 nCK), subchannel 0
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[0].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: Max(18 ns, 2 nCK), subchannel 0
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_trcdr_sc0

  cg_timing_symbol_conditions_trcdr_sc0 cg_timing_symbol_conditions_trcdr_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_trcdr_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRCDr.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: Max(18 ns, 2 nCK), subchannel 1
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[1].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: Max(18 ns, 2 nCK), subchannel 1
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_trcdr_sc1

  cg_timing_symbol_conditions_trcdr_sc1 cg_timing_symbol_conditions_trcdr_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_trcdw_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRCDw.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: Max(8 ns, 2 nCK), subchannel 0
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[0].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: Max(8 ns, 2 nCK), subchannel 0
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_trcdw_sc0

  cg_timing_symbol_conditions_trcdw_sc0 cg_timing_symbol_conditions_trcdw_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_trcdw_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRCDw.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: Max(8 ns, 2 nCK), subchannel 1
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[1].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: Max(8 ns, 2 nCK), subchannel 1
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_trcdw_sc1

  cg_timing_symbol_conditions_trcdw_sc1 cg_timing_symbol_conditions_trcdw_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_trp_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRP.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: tRPab, subchannel 0
    cp_value__0: coverpoint {vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.ab == 1'b1))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: tRPpb, subchannel 0
    cp_value__1: coverpoint {vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.ab == 1'b0))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_trp_sc0

  cg_timing_symbol_conditions_trp_sc0 cg_timing_symbol_conditions_trp_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_trp_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRP.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: tRPab, subchannel 1
    cp_value__0: coverpoint {vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.ab == 1'b1))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: tRPpb, subchannel 1
    cp_value__1: coverpoint {vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.ab == 1'b0))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_trp_sc1

  cg_timing_symbol_conditions_trp_sc1 cg_timing_symbol_conditions_trp_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_trpst_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRPST.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 0.5*tWCK, subchannel 0
    cp_value__0: coverpoint {vif.state_state_v1_mr10_postamble_00b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: 2.5*tWCK, subchannel 0
    cp_value__1: coverpoint {vif.state_state_v1_mr10_postamble_01b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }

    // value[2]: 4.5*tWCK, subchannel 0
    cp_value__2: coverpoint {vif.state_state_v1_mr10_postamble_10b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_trpst_sc0

  cg_timing_symbol_conditions_trpst_sc0 cg_timing_symbol_conditions_trpst_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_trpst_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRPST.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 0.5*tWCK, subchannel 1
    cp_value__0: coverpoint {vif.state_state_v1_mr10_postamble_00b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: 2.5*tWCK, subchannel 1
    cp_value__1: coverpoint {vif.state_state_v1_mr10_postamble_01b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }

    // value[2]: 4.5*tWCK, subchannel 1
    cp_value__2: coverpoint {vif.state_state_v1_mr10_postamble_10b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_trpst_sc1

  cg_timing_symbol_conditions_trpst_sc1 cg_timing_symbol_conditions_trpst_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_trpab_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRPab.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: nACU + Max(21 ns, 4 nCK), subchannel 0
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[0].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: nACU + Max(21 ns, 4 nCK), subchannel 0
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_trpab_sc0

  cg_timing_symbol_conditions_trpab_sc0 cg_timing_symbol_conditions_trpab_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_trpab_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRPab.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: nACU + Max(21 ns, 4 nCK), subchannel 1
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[1].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: nACU + Max(21 ns, 4 nCK), subchannel 1
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_trpab_sc1

  cg_timing_symbol_conditions_trpab_sc1 cg_timing_symbol_conditions_trpab_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_trppb_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRPpb.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: nACU + Max(18 ns, 4 nCK), subchannel 0
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[0].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: nACU + Max(18 ns, 4 nCK), subchannel 0
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_trppb_sc0

  cg_timing_symbol_conditions_trppb_sc0 cg_timing_symbol_conditions_trppb_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_trppb_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRPpb.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: nACU + Max(18 ns, 4 nCK), subchannel 1
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[1].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: nACU + Max(18 ns, 4 nCK), subchannel 1
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_trppb_sc1

  cg_timing_symbol_conditions_trppb_sc1 cg_timing_symbol_conditions_trppb_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_trrd_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRRD.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: Max(3.75 ns, 4 nCK), subchannel 0
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[0].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: Max(3.75 ns, 4 nCK), subchannel 0
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_trrd_sc0

  cg_timing_symbol_conditions_trrd_sc0 cg_timing_symbol_conditions_trrd_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_trrd_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRRD.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: Max(3.75 ns, 4 nCK), subchannel 1
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[1].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: Max(3.75 ns, 4 nCK), subchannel 1
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_trrd_sc1

  cg_timing_symbol_conditions_trrd_sc1 cg_timing_symbol_conditions_trrd_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_trtp_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRTP.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: BL/n + 1.25 ns, subchannel 0
    cp_value__0: coverpoint {vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_trtp_sc0

  cg_timing_symbol_conditions_trtp_sc0 cg_timing_symbol_conditions_trtp_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_trtp_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRTP.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: BL/n + 1.25 ns, subchannel 1
    cp_value__0: coverpoint {vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_trtp_sc1

  cg_timing_symbol_conditions_trtp_sc1 cg_timing_symbol_conditions_trtp_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_trtw_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRTW.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: RL + BL/n_max + RU(tWCK2DQO_max/tCK) - WL, subchannel 0
    cp_value__0: coverpoint {vif.state_state_dramconfig_dq_odt_disabled[0].active, vif.state_state_dramconfig_nt_odt_disabled[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.cmd_type == CMD_RD_S || vif.last_cmd_pair[0].previous.cmd_type == CMD_RD_L || vif.last_cmd_pair[0].previous.cmd_type == CMD_MRR)), ((vif.last_cmd_pair[0].current.cmd_type == CMD_WR_S || vif.last_cmd_pair[0].current.cmd_type == CMD_WR_L)), (((vif.last_cmd_pair[0].previous.protocol_field_sc == vif.last_cmd_pair[0].current.protocol_field_sc) && (vif.last_cmd_pair[0].previous.bg == vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {6'b111111};
    }

    // value[1]: RL + BL/n_max + RU(tWCK2DQO_max/tCK) - WL, subchannel 0
    cp_value__1: coverpoint {vif.state_state_dramconfig_dq_odt_disabled[0].active, vif.state_state_v1_nt_odt_enabled[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.cmd_type == CMD_RD_S || vif.last_cmd_pair[0].previous.cmd_type == CMD_RD_L || vif.last_cmd_pair[0].previous.cmd_type == CMD_MRR)), ((vif.last_cmd_pair[0].current.cmd_type == CMD_WR_S || vif.last_cmd_pair[0].current.cmd_type == CMD_WR_L)), (((vif.last_cmd_pair[0].previous.protocol_field_sc == vif.last_cmd_pair[0].current.protocol_field_sc) && (vif.last_cmd_pair[0].previous.bg == vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {6'b111111};
    }

    // value[2]: RL + BL/n_max + RU(tWCK2DQO_max/tCK) + RD(tRPST/tCK) - ODTLon - RD(tODTon_min/tCK) + 1 nCK, subchannel 0
    cp_value__2: coverpoint {vif.state_state_v1_dq_odt_enabled[0].active, vif.state_state_dramconfig_nt_odt_disabled[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.cmd_type == CMD_RD_S || vif.last_cmd_pair[0].previous.cmd_type == CMD_RD_L || vif.last_cmd_pair[0].previous.cmd_type == CMD_MRR)), ((vif.last_cmd_pair[0].current.cmd_type == CMD_WR_S || vif.last_cmd_pair[0].current.cmd_type == CMD_WR_L)), (((vif.last_cmd_pair[0].previous.protocol_field_sc == vif.last_cmd_pair[0].current.protocol_field_sc) && (vif.last_cmd_pair[0].previous.bg == vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {6'b111111};
    }

    // value[3]: RL + BL/n_max + RU(tWCK2DQO_max/tCK) + RD(tRPST/tCK) - ODTLon - RD(tODTon_min/tCK) + 1 nCK, subchannel 0
    cp_value__3: coverpoint {vif.state_state_v1_dq_odt_enabled[0].active, vif.state_state_v1_nt_odt_enabled[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.cmd_type == CMD_RD_S || vif.last_cmd_pair[0].previous.cmd_type == CMD_RD_L || vif.last_cmd_pair[0].previous.cmd_type == CMD_MRR)), ((vif.last_cmd_pair[0].current.cmd_type == CMD_WR_S || vif.last_cmd_pair[0].current.cmd_type == CMD_WR_L)), (((vif.last_cmd_pair[0].previous.protocol_field_sc == vif.last_cmd_pair[0].current.protocol_field_sc) && (vif.last_cmd_pair[0].previous.bg == vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {6'b111111};
    }

    // value[4]: RL + BL/n_min + RU(tWCK2DQO_max/tCK) - WL, subchannel 0
    cp_value__4: coverpoint {vif.state_state_dramconfig_dq_odt_disabled[0].active, vif.state_state_dramconfig_nt_odt_disabled[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.cmd_type == CMD_RD_S || vif.last_cmd_pair[0].previous.cmd_type == CMD_RD_L || vif.last_cmd_pair[0].previous.cmd_type == CMD_MRR)), ((vif.last_cmd_pair[0].current.cmd_type == CMD_WR_S || vif.last_cmd_pair[0].current.cmd_type == CMD_WR_L)), (((vif.last_cmd_pair[0].previous.protocol_field_sc != vif.last_cmd_pair[0].current.protocol_field_sc) || (vif.last_cmd_pair[0].previous.bg != vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {6'b111111};
    }

    // value[5]: RL + BL/n_min + RU(tWCK2DQO_max/tCK) - WL, subchannel 0
    cp_value__5: coverpoint {vif.state_state_dramconfig_dq_odt_disabled[0].active, vif.state_state_v1_nt_odt_enabled[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.cmd_type == CMD_RD_S || vif.last_cmd_pair[0].previous.cmd_type == CMD_RD_L || vif.last_cmd_pair[0].previous.cmd_type == CMD_MRR)), ((vif.last_cmd_pair[0].current.cmd_type == CMD_WR_S || vif.last_cmd_pair[0].current.cmd_type == CMD_WR_L)), (((vif.last_cmd_pair[0].previous.protocol_field_sc != vif.last_cmd_pair[0].current.protocol_field_sc) || (vif.last_cmd_pair[0].previous.bg != vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {6'b111111};
    }

    // value[6]: RL + BL/n_min + RU(tWCK2DQO_max/tCK) + RD(tRPST/tCK) - ODTLon - RD(tODTon_min/tCK) + 1 nCK, subchannel 0
    cp_value__6: coverpoint {vif.state_state_v1_dq_odt_enabled[0].active, vif.state_state_dramconfig_nt_odt_disabled[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.cmd_type == CMD_RD_S || vif.last_cmd_pair[0].previous.cmd_type == CMD_RD_L || vif.last_cmd_pair[0].previous.cmd_type == CMD_MRR)), ((vif.last_cmd_pair[0].current.cmd_type == CMD_WR_S || vif.last_cmd_pair[0].current.cmd_type == CMD_WR_L)), (((vif.last_cmd_pair[0].previous.protocol_field_sc != vif.last_cmd_pair[0].current.protocol_field_sc) || (vif.last_cmd_pair[0].previous.bg != vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {6'b111111};
    }

    // value[7]: RL + BL/n_min + RU(tWCK2DQO_max/tCK) + RD(tRPST/tCK) - ODTLon - RD(tODTon_min/tCK) + 1 nCK, subchannel 0
    cp_value__7: coverpoint {vif.state_state_v1_dq_odt_enabled[0].active, vif.state_state_v1_nt_odt_enabled[0].active, vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.cmd_type == CMD_RD_S || vif.last_cmd_pair[0].previous.cmd_type == CMD_RD_L || vif.last_cmd_pair[0].previous.cmd_type == CMD_MRR)), ((vif.last_cmd_pair[0].current.cmd_type == CMD_WR_S || vif.last_cmd_pair[0].current.cmd_type == CMD_WR_L)), (((vif.last_cmd_pair[0].previous.protocol_field_sc != vif.last_cmd_pair[0].current.protocol_field_sc) || (vif.last_cmd_pair[0].previous.bg != vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {6'b111111};
    }
  endgroup : cg_timing_symbol_conditions_trtw_sc0

  cg_timing_symbol_conditions_trtw_sc0 cg_timing_symbol_conditions_trtw_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_trtw_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tRTW.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: RL + BL/n_max + RU(tWCK2DQO_max/tCK) - WL, subchannel 1
    cp_value__0: coverpoint {vif.state_state_dramconfig_dq_odt_disabled[1].active, vif.state_state_dramconfig_nt_odt_disabled[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.cmd_type == CMD_RD_S || vif.last_cmd_pair[1].previous.cmd_type == CMD_RD_L || vif.last_cmd_pair[1].previous.cmd_type == CMD_MRR)), ((vif.last_cmd_pair[1].current.cmd_type == CMD_WR_S || vif.last_cmd_pair[1].current.cmd_type == CMD_WR_L)), (((vif.last_cmd_pair[1].previous.protocol_field_sc == vif.last_cmd_pair[1].current.protocol_field_sc) && (vif.last_cmd_pair[1].previous.bg == vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {6'b111111};
    }

    // value[1]: RL + BL/n_max + RU(tWCK2DQO_max/tCK) - WL, subchannel 1
    cp_value__1: coverpoint {vif.state_state_dramconfig_dq_odt_disabled[1].active, vif.state_state_v1_nt_odt_enabled[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.cmd_type == CMD_RD_S || vif.last_cmd_pair[1].previous.cmd_type == CMD_RD_L || vif.last_cmd_pair[1].previous.cmd_type == CMD_MRR)), ((vif.last_cmd_pair[1].current.cmd_type == CMD_WR_S || vif.last_cmd_pair[1].current.cmd_type == CMD_WR_L)), (((vif.last_cmd_pair[1].previous.protocol_field_sc == vif.last_cmd_pair[1].current.protocol_field_sc) && (vif.last_cmd_pair[1].previous.bg == vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {6'b111111};
    }

    // value[2]: RL + BL/n_max + RU(tWCK2DQO_max/tCK) + RD(tRPST/tCK) - ODTLon - RD(tODTon_min/tCK) + 1 nCK, subchannel 1
    cp_value__2: coverpoint {vif.state_state_v1_dq_odt_enabled[1].active, vif.state_state_dramconfig_nt_odt_disabled[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.cmd_type == CMD_RD_S || vif.last_cmd_pair[1].previous.cmd_type == CMD_RD_L || vif.last_cmd_pair[1].previous.cmd_type == CMD_MRR)), ((vif.last_cmd_pair[1].current.cmd_type == CMD_WR_S || vif.last_cmd_pair[1].current.cmd_type == CMD_WR_L)), (((vif.last_cmd_pair[1].previous.protocol_field_sc == vif.last_cmd_pair[1].current.protocol_field_sc) && (vif.last_cmd_pair[1].previous.bg == vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {6'b111111};
    }

    // value[3]: RL + BL/n_max + RU(tWCK2DQO_max/tCK) + RD(tRPST/tCK) - ODTLon - RD(tODTon_min/tCK) + 1 nCK, subchannel 1
    cp_value__3: coverpoint {vif.state_state_v1_dq_odt_enabled[1].active, vif.state_state_v1_nt_odt_enabled[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.cmd_type == CMD_RD_S || vif.last_cmd_pair[1].previous.cmd_type == CMD_RD_L || vif.last_cmd_pair[1].previous.cmd_type == CMD_MRR)), ((vif.last_cmd_pair[1].current.cmd_type == CMD_WR_S || vif.last_cmd_pair[1].current.cmd_type == CMD_WR_L)), (((vif.last_cmd_pair[1].previous.protocol_field_sc == vif.last_cmd_pair[1].current.protocol_field_sc) && (vif.last_cmd_pair[1].previous.bg == vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {6'b111111};
    }

    // value[4]: RL + BL/n_min + RU(tWCK2DQO_max/tCK) - WL, subchannel 1
    cp_value__4: coverpoint {vif.state_state_dramconfig_dq_odt_disabled[1].active, vif.state_state_dramconfig_nt_odt_disabled[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.cmd_type == CMD_RD_S || vif.last_cmd_pair[1].previous.cmd_type == CMD_RD_L || vif.last_cmd_pair[1].previous.cmd_type == CMD_MRR)), ((vif.last_cmd_pair[1].current.cmd_type == CMD_WR_S || vif.last_cmd_pair[1].current.cmd_type == CMD_WR_L)), (((vif.last_cmd_pair[1].previous.protocol_field_sc != vif.last_cmd_pair[1].current.protocol_field_sc) || (vif.last_cmd_pair[1].previous.bg != vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {6'b111111};
    }

    // value[5]: RL + BL/n_min + RU(tWCK2DQO_max/tCK) - WL, subchannel 1
    cp_value__5: coverpoint {vif.state_state_dramconfig_dq_odt_disabled[1].active, vif.state_state_v1_nt_odt_enabled[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.cmd_type == CMD_RD_S || vif.last_cmd_pair[1].previous.cmd_type == CMD_RD_L || vif.last_cmd_pair[1].previous.cmd_type == CMD_MRR)), ((vif.last_cmd_pair[1].current.cmd_type == CMD_WR_S || vif.last_cmd_pair[1].current.cmd_type == CMD_WR_L)), (((vif.last_cmd_pair[1].previous.protocol_field_sc != vif.last_cmd_pair[1].current.protocol_field_sc) || (vif.last_cmd_pair[1].previous.bg != vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {6'b111111};
    }

    // value[6]: RL + BL/n_min + RU(tWCK2DQO_max/tCK) + RD(tRPST/tCK) - ODTLon - RD(tODTon_min/tCK) + 1 nCK, subchannel 1
    cp_value__6: coverpoint {vif.state_state_v1_dq_odt_enabled[1].active, vif.state_state_dramconfig_nt_odt_disabled[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.cmd_type == CMD_RD_S || vif.last_cmd_pair[1].previous.cmd_type == CMD_RD_L || vif.last_cmd_pair[1].previous.cmd_type == CMD_MRR)), ((vif.last_cmd_pair[1].current.cmd_type == CMD_WR_S || vif.last_cmd_pair[1].current.cmd_type == CMD_WR_L)), (((vif.last_cmd_pair[1].previous.protocol_field_sc != vif.last_cmd_pair[1].current.protocol_field_sc) || (vif.last_cmd_pair[1].previous.bg != vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {6'b111111};
    }

    // value[7]: RL + BL/n_min + RU(tWCK2DQO_max/tCK) + RD(tRPST/tCK) - ODTLon - RD(tODTon_min/tCK) + 1 nCK, subchannel 1
    cp_value__7: coverpoint {vif.state_state_v1_dq_odt_enabled[1].active, vif.state_state_v1_nt_odt_enabled[1].active, vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.cmd_type == CMD_RD_S || vif.last_cmd_pair[1].previous.cmd_type == CMD_RD_L || vif.last_cmd_pair[1].previous.cmd_type == CMD_MRR)), ((vif.last_cmd_pair[1].current.cmd_type == CMD_WR_S || vif.last_cmd_pair[1].current.cmd_type == CMD_WR_L)), (((vif.last_cmd_pair[1].previous.protocol_field_sc != vif.last_cmd_pair[1].current.protocol_field_sc) || (vif.last_cmd_pair[1].previous.bg != vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {6'b111111};
    }
  endgroup : cg_timing_symbol_conditions_trtw_sc1

  cg_timing_symbol_conditions_trtw_sc1 cg_timing_symbol_conditions_trtw_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_twck2dqi_hf_max_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCK2DQI_HF_max.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 600 ps, subchannel 0
    cp_value__0: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_high[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_twck2dqi_hf_max_sc0

  cg_timing_symbol_conditions_twck2dqi_hf_max_sc0 cg_timing_symbol_conditions_twck2dqi_hf_max_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_twck2dqi_hf_max_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCK2DQI_HF_max.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 600 ps, subchannel 1
    cp_value__0: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_high[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_twck2dqi_hf_max_sc1

  cg_timing_symbol_conditions_twck2dqi_hf_max_sc1 cg_timing_symbol_conditions_twck2dqi_hf_max_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_twck2dqi_lf_max_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCK2DQI_LF_max.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 900 ps, subchannel 0
    cp_value__0: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_low[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_twck2dqi_lf_max_sc0

  cg_timing_symbol_conditions_twck2dqi_lf_max_sc0 cg_timing_symbol_conditions_twck2dqi_lf_max_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_twck2dqi_lf_max_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCK2DQI_LF_max.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 900 ps, subchannel 1
    cp_value__0: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_low[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_twck2dqi_lf_max_sc1

  cg_timing_symbol_conditions_twck2dqi_lf_max_sc1 cg_timing_symbol_conditions_twck2dqi_lf_max_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_twck2dqi_max_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCK2DQI_max.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: tWCK2DQI_LF_max, subchannel 0
    cp_value__0: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_low[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: tWCK2DQI_HF_max, subchannel 0
    cp_value__1: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_high[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_twck2dqi_max_sc0

  cg_timing_symbol_conditions_twck2dqi_max_sc0 cg_timing_symbol_conditions_twck2dqi_max_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_twck2dqi_max_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCK2DQI_max.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: tWCK2DQI_LF_max, subchannel 1
    cp_value__0: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_low[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: tWCK2DQI_HF_max, subchannel 1
    cp_value__1: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_high[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_twck2dqi_max_sc1

  cg_timing_symbol_conditions_twck2dqi_max_sc1 cg_timing_symbol_conditions_twck2dqi_max_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_twck2dqo_hf_max_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCK2DQO_HF_max.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 1600 ps, subchannel 0
    cp_value__0: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_high[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_twck2dqo_hf_max_sc0

  cg_timing_symbol_conditions_twck2dqo_hf_max_sc0 cg_timing_symbol_conditions_twck2dqo_hf_max_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_twck2dqo_hf_max_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCK2DQO_HF_max.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 1600 ps, subchannel 1
    cp_value__0: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_high[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_twck2dqo_hf_max_sc1

  cg_timing_symbol_conditions_twck2dqo_hf_max_sc1 cg_timing_symbol_conditions_twck2dqo_hf_max_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_twck2dqo_lf_max_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCK2DQO_LF_max.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 1900 ps, subchannel 0
    cp_value__0: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_low[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_twck2dqo_lf_max_sc0

  cg_timing_symbol_conditions_twck2dqo_lf_max_sc0 cg_timing_symbol_conditions_twck2dqo_lf_max_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_twck2dqo_lf_max_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCK2DQO_LF_max.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 1900 ps, subchannel 1
    cp_value__0: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_low[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_twck2dqo_lf_max_sc1

  cg_timing_symbol_conditions_twck2dqo_lf_max_sc1 cg_timing_symbol_conditions_twck2dqo_lf_max_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_twck2dqo_max_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCK2DQO_max.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: tWCK2DQO_LF_max, subchannel 0
    cp_value__0: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_low[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: tWCK2DQO_HF_max, subchannel 0
    cp_value__1: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_high[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_twck2dqo_max_sc0

  cg_timing_symbol_conditions_twck2dqo_max_sc0 cg_timing_symbol_conditions_twck2dqo_max_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_twck2dqo_max_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCK2DQO_max.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: tWCK2DQO_LF_max, subchannel 1
    cp_value__0: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_low[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: tWCK2DQO_HF_max, subchannel 1
    cp_value__1: coverpoint {vif.state_state_mr11_op6_wck_frequency_mode_high[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_twck2dqo_max_sc1

  cg_timing_symbol_conditions_twck2dqo_max_sc1 cg_timing_symbol_conditions_twck2dqo_max_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_twckenl_fs_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCKENL_FS.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 2 nCK, subchannel 0
    cp_value__0: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt1067_lte1600[0].active, vif.state_state_mr1_op4_0_wck2ck_cas_timing_00001b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: 10 nCK, subchannel 0
    cp_value__1: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt7500_lte8533[0].active, vif.state_state_mr1_op4_0_wck2ck_cas_timing_01011b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_twckenl_fs_sc0

  cg_timing_symbol_conditions_twckenl_fs_sc0 cg_timing_symbol_conditions_twckenl_fs_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_twckenl_fs_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCKENL_FS.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 2 nCK, subchannel 1
    cp_value__0: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt1067_lte1600[1].active, vif.state_state_mr1_op4_0_wck2ck_cas_timing_00001b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: 10 nCK, subchannel 1
    cp_value__1: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt7500_lte8533[1].active, vif.state_state_mr1_op4_0_wck2ck_cas_timing_01011b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_twckenl_fs_sc1

  cg_timing_symbol_conditions_twckenl_fs_sc1 cg_timing_symbol_conditions_twckenl_fs_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_twckenl_rd_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCKENL_RD.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 2 nCK, subchannel 0
    cp_value__0: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt1067_lte1600[0].active, vif.state_state_efficiency_mode_inactive[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: 3 nCK, subchannel 0
    cp_value__1: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt1067_lte1600[0].active, vif.state_state_efficiency_mode_active.active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[2]: 26 nCK, subchannel 0
    cp_value__2: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt7500_lte8533[0].active, vif.state_state_efficiency_mode_inactive[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[3]: 30 nCK, subchannel 0
    cp_value__3: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt7500_lte8533[0].active, vif.state_state_efficiency_mode_active.active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_twckenl_rd_sc0

  cg_timing_symbol_conditions_twckenl_rd_sc0 cg_timing_symbol_conditions_twckenl_rd_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_twckenl_rd_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCKENL_RD.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 2 nCK, subchannel 1
    cp_value__0: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt1067_lte1600[1].active, vif.state_state_efficiency_mode_inactive[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: 3 nCK, subchannel 1
    cp_value__1: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt1067_lte1600[1].active, vif.state_state_efficiency_mode_active.active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[2]: 26 nCK, subchannel 1
    cp_value__2: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt7500_lte8533[1].active, vif.state_state_efficiency_mode_inactive[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[3]: 30 nCK, subchannel 1
    cp_value__3: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt7500_lte8533[1].active, vif.state_state_efficiency_mode_active.active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_twckenl_rd_sc1

  cg_timing_symbol_conditions_twckenl_rd_sc1 cg_timing_symbol_conditions_twckenl_rd_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_twckenl_wr_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCKENL_WR.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 2 nCK, subchannel 0
    cp_value__0: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt1067_lte1600[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: 8 nCK, subchannel 0
    cp_value__1: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt7500_lte8533[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_twckenl_wr_sc0

  cg_timing_symbol_conditions_twckenl_wr_sc0 cg_timing_symbol_conditions_twckenl_wr_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_twckenl_wr_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCKENL_WR.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 2 nCK, subchannel 1
    cp_value__0: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt1067_lte1600[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: 8 nCK, subchannel 1
    cp_value__1: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt7500_lte8533[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_twckenl_wr_sc1

  cg_timing_symbol_conditions_twckenl_wr_sc1 cg_timing_symbol_conditions_twckenl_wr_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_twckpre_static_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCKPRE_static.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 2 nCK, subchannel 0
    cp_value__0: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt1067_lte1600[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: 8 nCK, subchannel 0
    cp_value__1: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt7500_lte8533[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_twckpre_static_sc0

  cg_timing_symbol_conditions_twckpre_static_sc0 cg_timing_symbol_conditions_twckpre_static_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_twckpre_static_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCKPRE_static.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 2 nCK, subchannel 1
    cp_value__0: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt1067_lte1600[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: 8 nCK, subchannel 1
    cp_value__1: coverpoint {vif.state_state_dramconfig_data_rate_mbps_gt7500_lte8533[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_twckpre_static_sc1

  cg_timing_symbol_conditions_twckpre_static_sc1 cg_timing_symbol_conditions_twckpre_static_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_twckpst_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCKPST.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 2.5*tWCK, subchannel 0
    cp_value__0: coverpoint {vif.state_state_v1_mr22_postamble_00b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: 4.5*tWCK, subchannel 0
    cp_value__1: coverpoint {vif.state_state_v1_mr22_postamble_01b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }

    // value[2]: 6.5*tWCK, subchannel 0
    cp_value__2: coverpoint {vif.state_state_v1_mr22_postamble_10b[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_twckpst_sc0

  cg_timing_symbol_conditions_twckpst_sc0 cg_timing_symbol_conditions_twckpst_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_twckpst_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWCKPST.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: 2.5*tWCK, subchannel 1
    cp_value__0: coverpoint {vif.state_state_v1_mr22_postamble_00b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }

    // value[1]: 4.5*tWCK, subchannel 1
    cp_value__1: coverpoint {vif.state_state_v1_mr22_postamble_01b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }

    // value[2]: 6.5*tWCK, subchannel 1
    cp_value__2: coverpoint {vif.state_state_v1_mr22_postamble_10b[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {1'b1};
    }
  endgroup : cg_timing_symbol_conditions_twckpst_sc1

  cg_timing_symbol_conditions_twckpst_sc1 cg_timing_symbol_conditions_twckpst_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_twtp_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWTP.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: Max(12 ns, 6 nCK), subchannel 0
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[0].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: Max(14 ns, 6 nCK), subchannel 0
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_twtp_sc0

  cg_timing_symbol_conditions_twtp_sc0 cg_timing_symbol_conditions_twtp_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_twtp_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWTP.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: Max(12 ns, 6 nCK), subchannel 1
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[1].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: Max(14 ns, 6 nCK), subchannel 1
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_twtp_sc1

  cg_timing_symbol_conditions_twtp_sc1 cg_timing_symbol_conditions_twtp_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_twtr_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWTR.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: tWTR_L, subchannel 0
    cp_value__0: coverpoint {vif.last_cmd_pair[0].valid, (((vif.last_cmd_pair[0].previous.protocol_field_sc == vif.last_cmd_pair[0].current.protocol_field_sc) && (vif.last_cmd_pair[0].previous.bg == vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: tWTR_S, subchannel 0
    cp_value__1: coverpoint {vif.last_cmd_pair[0].valid, (((vif.last_cmd_pair[0].previous.protocol_field_sc != vif.last_cmd_pair[0].current.protocol_field_sc) || (vif.last_cmd_pair[0].previous.bg != vif.last_cmd_pair[0].current.bg)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_twtr_sc0

  cg_timing_symbol_conditions_twtr_sc0 cg_timing_symbol_conditions_twtr_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_twtr_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWTR.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: tWTR_L, subchannel 1
    cp_value__0: coverpoint {vif.last_cmd_pair[1].valid, (((vif.last_cmd_pair[1].previous.protocol_field_sc == vif.last_cmd_pair[1].current.protocol_field_sc) && (vif.last_cmd_pair[1].previous.bg == vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: tWTR_S, subchannel 1
    cp_value__1: coverpoint {vif.last_cmd_pair[1].valid, (((vif.last_cmd_pair[1].previous.protocol_field_sc != vif.last_cmd_pair[1].current.protocol_field_sc) || (vif.last_cmd_pair[1].previous.bg != vif.last_cmd_pair[1].current.bg)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_twtr_sc1

  cg_timing_symbol_conditions_twtr_sc1 cg_timing_symbol_conditions_twtr_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_twtr_l_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWTR_L.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: Max(12 ns, 6 nCK), subchannel 0
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[0].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: Max(14 ns, 6 nCK), subchannel 0
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_twtr_l_sc0

  cg_timing_symbol_conditions_twtr_l_sc0 cg_timing_symbol_conditions_twtr_l_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_twtr_l_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWTR_L.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: Max(12 ns, 6 nCK), subchannel 1
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[1].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: Max(14 ns, 6 nCK), subchannel 1
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_twtr_l_sc1

  cg_timing_symbol_conditions_twtr_l_sc1 cg_timing_symbol_conditions_twtr_l_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_twtr_s_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWTR_S.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: Max(6.25 ns, 6 nCK), subchannel 0
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[0].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: Max(8.25 ns, 6 nCK), subchannel 0
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[0].active} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_twtr_s_sc0

  cg_timing_symbol_conditions_twtr_s_sc0 cg_timing_symbol_conditions_twtr_s_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_twtr_s_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tWTR_S.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: Max(6.25 ns, 6 nCK), subchannel 1
    cp_value__0: coverpoint {vif.state_state_efficiency_mode_inactive[1].active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: Max(8.25 ns, 6 nCK), subchannel 1
    cp_value__1: coverpoint {vif.state_state_efficiency_mode_active.active, vif.state_state_dramconfig_ck_frequency_mhz_lte2667[1].active} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_twtr_s_sc1

  cg_timing_symbol_conditions_twtr_s_sc1 cg_timing_symbol_conditions_twtr_s_sc1_inst = new();

  covergroup cg_timing_symbol_conditions_tdbr2dbr_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tdbR2dbR.sc0";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: tdbR2dbR_S, subchannel 0
    cp_value__0: coverpoint {vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.refresh_counter_valid && vif.last_cmd_pair[0].current.refresh_counter_valid && (vif.last_cmd_pair[0].previous.refresh_counter == vif.last_cmd_pair[0].current.refresh_counter)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: tdbR2dbR_L, subchannel 0
    cp_value__1: coverpoint {vif.last_cmd_pair[0].valid, ((vif.last_cmd_pair[0].previous.refresh_counter_valid && vif.last_cmd_pair[0].current.refresh_counter_valid && (vif.last_cmd_pair[0].previous.refresh_counter != vif.last_cmd_pair[0].current.refresh_counter)))} iff (!vif.is_dft[0] && !vif.is_cbt[0]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_tdbr2dbr_sc0

  cg_timing_symbol_conditions_tdbr2dbr_sc0 cg_timing_symbol_conditions_tdbr2dbr_sc0_inst = new();

  covergroup cg_timing_symbol_conditions_tdbr2dbr_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    option.name = "timing_symbol_conditions.tdbR2dbR.sc1";
    // Runtime branches require the decoded command pair and all source predicates.

    // value[0]: tdbR2dbR_S, subchannel 1
    cp_value__0: coverpoint {vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.refresh_counter_valid && vif.last_cmd_pair[1].current.refresh_counter_valid && (vif.last_cmd_pair[1].previous.refresh_counter == vif.last_cmd_pair[1].current.refresh_counter)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }

    // value[1]: tdbR2dbR_L, subchannel 1
    cp_value__1: coverpoint {vif.last_cmd_pair[1].valid, ((vif.last_cmd_pair[1].previous.refresh_counter_valid && vif.last_cmd_pair[1].current.refresh_counter_valid && (vif.last_cmd_pair[1].previous.refresh_counter != vif.last_cmd_pair[1].current.refresh_counter)))} iff (!vif.is_dft[1] && !vif.is_cbt[1]) {
      bins all_conditions_active = {2'b11};
    }
  endgroup : cg_timing_symbol_conditions_tdbr2dbr_sc1

  cg_timing_symbol_conditions_tdbr2dbr_sc1 cg_timing_symbol_conditions_tdbr2dbr_sc1_inst = new();
