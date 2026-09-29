  // Reduced Entity single-point coverage; no forced command/address crosses.
  covergroup cg_sampled_command_type_sc0 @(vif.command_sampled[0]);
    option.per_instance = 1;
    cp_cmd_type: coverpoint vif.sampled_cmd_event[0].cmd_type iff (vif.sampled_cmd_event[0].valid) {
      bins nop = {CMD_NOP};
      bins refresh = {CMD_REFRESH};
      bins deselect = {CMD_DESELECT};
      bins pde = {CMD_PDE};
      bins pdx = {CMD_PDX};
      bins sre = {CMD_SRE};
      bins srx = {CMD_SRX};
      bins pre = {CMD_PRE};
      bins prea = {CMD_PREA};
      bins act_1 = {CMD_ACT_1};
      bins act_2 = {CMD_ACT_2};
      bins rd_s = {CMD_RD_S};
      bins rd_l = {CMD_RD_L};
      bins wr_s = {CMD_WR_S};
      bins wr_l = {CMD_WR_L};
      bins cas = {CMD_CAS};
      bins mrr = {CMD_MRR};
      bins mrw_1 = {CMD_MRW_1};
      bins mrw_2 = {CMD_MRW_2};
    }
    cp_bgba: coverpoint {vif.sampled_cmd_event[0].bg, vif.sampled_cmd_event[0].ba} iff (
      vif.sampled_cmd_event[0].valid && (vif.sampled_cmd_event[0].cmd_type inside {CMD_ACT_1, CMD_ACT_2, CMD_RD_S, CMD_RD_L, CMD_WR_S, CMD_WR_L} ||
      (vif.sampled_cmd_event[0].cmd_type inside {CMD_PRE, CMD_REFRESH} && !vif.sampled_cmd_event[0].ab))) {
      bins bgba[] = {[4'h0:4'hf]};
    }
    cp_row: coverpoint vif.sampled_cmd_event[0].r[13:0] iff (vif.sampled_cmd_event[0].valid && vif.sampled_cmd_event[0].cmd_type == CMD_ACT_2) {
      bins row[16] = {[14'h0000:14'h3fff]};
    }
    cp_col: coverpoint vif.sampled_cmd_event[0].c iff (vif.sampled_cmd_event[0].valid && vif.sampled_cmd_event[0].cmd_type inside {CMD_RD_S, CMD_RD_L, CMD_WR_S, CMD_WR_L}) {
      bins col[8] = {[6'h00:6'h3f]};
    }
  endgroup : cg_sampled_command_type_sc0
  cg_sampled_command_type_sc0 cg_sampled_command_type_sc0_inst = new();
  covergroup cg_sampled_command_type_sc1 @(vif.command_sampled[1]);
    option.per_instance = 1;
    cp_cmd_type: coverpoint vif.sampled_cmd_event[1].cmd_type iff (vif.sampled_cmd_event[1].valid) {
      bins nop = {CMD_NOP};
      bins refresh = {CMD_REFRESH};
      bins deselect = {CMD_DESELECT};
      bins pde = {CMD_PDE};
      bins pdx = {CMD_PDX};
      bins sre = {CMD_SRE};
      bins srx = {CMD_SRX};
      bins pre = {CMD_PRE};
      bins prea = {CMD_PREA};
      bins act_1 = {CMD_ACT_1};
      bins act_2 = {CMD_ACT_2};
      bins rd_s = {CMD_RD_S};
      bins rd_l = {CMD_RD_L};
      bins wr_s = {CMD_WR_S};
      bins wr_l = {CMD_WR_L};
      bins cas = {CMD_CAS};
      bins mrr = {CMD_MRR};
      bins mrw_1 = {CMD_MRW_1};
      bins mrw_2 = {CMD_MRW_2};
    }
    cp_bgba: coverpoint {vif.sampled_cmd_event[1].bg, vif.sampled_cmd_event[1].ba} iff (
      vif.sampled_cmd_event[1].valid && (vif.sampled_cmd_event[1].cmd_type inside {CMD_ACT_1, CMD_ACT_2, CMD_RD_S, CMD_RD_L, CMD_WR_S, CMD_WR_L} ||
      (vif.sampled_cmd_event[1].cmd_type inside {CMD_PRE, CMD_REFRESH} && !vif.sampled_cmd_event[1].ab))) {
      bins bgba[] = {[4'h0:4'hf]};
    }
    cp_row: coverpoint vif.sampled_cmd_event[1].r[13:0] iff (vif.sampled_cmd_event[1].valid && vif.sampled_cmd_event[1].cmd_type == CMD_ACT_2) {
      bins row[16] = {[14'h0000:14'h3fff]};
    }
    cp_col: coverpoint vif.sampled_cmd_event[1].c iff (vif.sampled_cmd_event[1].valid && vif.sampled_cmd_event[1].cmd_type inside {CMD_RD_S, CMD_RD_L, CMD_WR_S, CMD_WR_L}) {
      bins col[8] = {[6'h00:6'h3f]};
    }
  endgroup : cg_sampled_command_type_sc1
  cg_sampled_command_type_sc1 cg_sampled_command_type_sc1_inst = new();
  // Source373/7.8.29: DEFF MRR target is an Entity operand, not a timing interval.
  covergroup cg_deff_mrr_routing @(vif.command_sampled[0]);
    option.per_instance = 1;
    cp_target_sc: coverpoint vif.sampled_cmd_event[0].protocol_field_sc iff (
      vif.sampled_cmd_event[0].valid && vif.sampled_cmd_event[0].efficiency_mode &&
      vif.sampled_cmd_event[0].cmd_type == CMD_MRR && !vif.is_dft[0] && !vif.is_cbt[0]) {
      bins target_sc0 = {1'b0};
      bins target_sc1 = {1'b1};
    }
  endgroup : cg_deff_mrr_routing
  cg_deff_mrr_routing cg_deff_mrr_routing_inst = new();
