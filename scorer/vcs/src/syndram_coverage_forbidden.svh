
  // One compact forbidden coverage group per subchannel; the ID preserves rule identity.

  covergroup cg_forbidden_rules_sc0 with function sample(input logic [31:0] rule_id);
    option.per_instance = 1;
    option.name = "forbidden_rules.sc0";
    cp_rule_id: coverpoint rule_id {
      bins syndram_illegal__table383_active_to_active = {32'd1};
      bins syndram_illegal__table383_read_bl24_or_bl48_to_active = {32'd2};
      bins syndram_illegal__table386_read_bl24_or_bl48_to_active = {32'd3};
      bins syndram_illegal__table383_write_bl24_or_bl48_to_active = {32'd4};
      bins syndram_illegal__table383_precharge_to_read_1 = {32'd5};
      bins syndram_illegal__table383_precharge_to_read_2 = {32'd6};
      bins syndram_illegal__table383_precharge_to_write_1 = {32'd7};
      bins syndram_illegal__table383_precharge_to_write_2 = {32'd8};
      bins syndram_illegal__table391_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_1 = {32'd9};
      bins syndram_illegal__table391_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_2 = {32'd10};
      bins syndram_illegal__table391_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_1 = {32'd11};
      bins syndram_illegal__table391_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_2 = {32'd12};
      bins syndram_illegal__table391_read_with_ap_bl24_or_bl48_to_precharge = {32'd13};
      bins syndram_illegal__table391_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_1 = {32'd14};
      bins syndram_illegal__table391_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_2 = {32'd15};
      bins syndram_illegal__table391_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_1 = {32'd16};
      bins syndram_illegal__table391_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_2 = {32'd17};
      bins syndram_illegal__table391_write_with_ap_bl24_or_bl48_to_precharge = {32'd18};
      bins syndram_illegal__table394_cas_ws_1_ws_off_0_to_cas_ws_1_ws_off_0 = {32'd19};
      bins syndram_illegal__table394_cas_ws_1_ws_off_0_to_mode_register_write_2_mrw_2 = {32'd20};
      bins syndram_illegal__tablecas_ws_off_cas_ws_0_ws_off_1_to_cas_ws_0_ws_off_1 = {32'd21};
      bins syndram_illegal__tablecas_ws_off_cas_ws_0_ws_off_1_to_mode_register_write_2_mrw_2 = {32'd22};
      bins syndram_illegal__wsoe_active_cas_ws_1 = {32'd23};
      bins syndram_illegal__wsoe_active_mrw_2 = {32'd24};
      bins syndram_illegal__cbt_non_whitelist_command = {32'd25};
      bins syndram_illegal__cbt_mrw_non_mr16 = {32'd26};
      bins syndram_illegal__cbt_mrw_mr16_non_op5_4 = {32'd27};
      bins syndram_illegal__cbt_mrw_mr16_op5_4_non_exit_value = {32'd28};
      bins syndram_illegal__refresh_ab_when_any_bank_not_precharged = {32'd29};
      bins syndram_illegal__refresh_db_when_target_bank_active = {32'd30};
      bins syndram_illegal__refresh_ab_cycle_non_whitelist_command = {32'd31};
      bins syndram_illegal__refresh_db_cycle_activate_2_same_bank = {32'd32};
      bins syndram_illegal__refresh_db_cycle_rd_s_same_bank = {32'd33};
      bins syndram_illegal__refresh_db_cycle_rd_l_same_bank = {32'd34};
      bins syndram_illegal__refresh_db_cycle_wr_s_same_bank = {32'd35};
      bins syndram_illegal__refresh_db_cycle_wr_l_same_bank = {32'd36};
      bins syndram_illegal__refresh_db_tdbr2act_activate_different_bank = {32'd37};
      bins syndram_illegal__self_refresh_exit_first_command_mrw_2 = {32'd38};
      bins syndram_illegal__fsp_switch_non_des_command = {32'd39};
      bins syndram_illegal__dynamic_efficiency_active_fsp_op_change = {32'd40};
      bins syndram_illegal__dynamic_efficiency_active_mrw_not_allowed_mr = {32'd41};
      bins syndram_illegal__dynamic_efficiency_active_mr1_op_5_modify_bcst_false = {32'd42};
      bins syndram_illegal__dynamic_efficiency_active_mr1_op_4_0_modify_bcst_false = {32'd43};
      bins syndram_illegal__dynamic_efficiency_active_training_mode_select = {32'd44};
      bins syndram_illegal__state_diagram_bank_active_rd_s_without_wck2ck_sync = {32'd45};
      bins syndram_illegal__state_diagram_bank_active_rd_l_without_wck2ck_sync = {32'd46};
      bins syndram_illegal__state_diagram_bank_active_wr_s_without_wck2ck_sync = {32'd47};
      bins syndram_illegal__state_diagram_bank_active_wr_l_without_wck2ck_sync = {32'd48};
      bins syndram_illegal__ck_sync_start_tcksnc_non_des_command = {32'd49};
      bins syndram_illegal__table263_wr_to_rd_same_bg_without_new_sync = {32'd50};
      bins syndram_illegal__table263_wr_to_rd_different_bg_without_new_sync = {32'd51};
      bins syndram_illegal__table263_wr_to_mrr_without_new_sync = {32'd52};
      bins syndram_illegal__table263_rd_to_mrr_without_new_sync = {32'd53};
      bins syndram_illegal__table263_mrr_to_rd_without_new_sync = {32'd54};
      bins syndram_illegal__table373_deff_self_refresh_entry = {32'd55};
      bins syndram_illegal__v1_deff_entry_mr_equality = {32'd56};
      bins syndram_illegal__v1_deff_secondary_host_command = {32'd57};
      bins syndram_illegal__v1_deff_fsp_wr_change = {32'd58};
      bins syndram_illegal__v1_deff_control_change_without_broadcast = {32'd59};
      bins syndram_illegal__table117_postamble_length = {32'd60};
    }
  endgroup : cg_forbidden_rules_sc0

  cg_forbidden_rules_sc0 cg_forbidden_rules_sc0_inst = new();
  always @(vif.rule_forbidden_table383_active_to_active_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd1); $display("SYNDRAM_VIOLATION 1"); end
  always @(vif.rule_forbidden_table383_read_bl24_or_bl48_to_active_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd2); $display("SYNDRAM_VIOLATION 2"); end
  always @(vif.rule_forbidden_table386_read_bl24_or_bl48_to_active_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd3); $display("SYNDRAM_VIOLATION 3"); end
  always @(vif.rule_forbidden_table383_write_bl24_or_bl48_to_active_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd4); $display("SYNDRAM_VIOLATION 4"); end
  always @(vif.rule_forbidden_table383_precharge_to_read_1_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd5); $display("SYNDRAM_VIOLATION 5"); end
  always @(vif.rule_forbidden_table383_precharge_to_read_2_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd6); $display("SYNDRAM_VIOLATION 6"); end
  always @(vif.rule_forbidden_table383_precharge_to_write_1_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd7); $display("SYNDRAM_VIOLATION 7"); end
  always @(vif.rule_forbidden_table383_precharge_to_write_2_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd8); $display("SYNDRAM_VIOLATION 8"); end
  always @(vif.rule_forbidden_table391_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_1_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd9); $display("SYNDRAM_VIOLATION 9"); end
  always @(vif.rule_forbidden_table391_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_2_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd10); $display("SYNDRAM_VIOLATION 10"); end
  always @(vif.rule_forbidden_table391_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_1_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd11); $display("SYNDRAM_VIOLATION 11"); end
  always @(vif.rule_forbidden_table391_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_2_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd12); $display("SYNDRAM_VIOLATION 12"); end
  always @(vif.rule_forbidden_table391_read_with_ap_bl24_or_bl48_to_precharge_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd13); $display("SYNDRAM_VIOLATION 13"); end
  always @(vif.rule_forbidden_table391_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_1_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd14); $display("SYNDRAM_VIOLATION 14"); end
  always @(vif.rule_forbidden_table391_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_2_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd15); $display("SYNDRAM_VIOLATION 15"); end
  always @(vif.rule_forbidden_table391_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_1_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd16); $display("SYNDRAM_VIOLATION 16"); end
  always @(vif.rule_forbidden_table391_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_2_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd17); $display("SYNDRAM_VIOLATION 17"); end
  always @(vif.rule_forbidden_table391_write_with_ap_bl24_or_bl48_to_precharge_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd18); $display("SYNDRAM_VIOLATION 18"); end
  always @(vif.rule_forbidden_table394_cas_ws_1_ws_off_0_to_cas_ws_1_ws_off_0_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd19); $display("SYNDRAM_VIOLATION 19"); end
  always @(vif.rule_forbidden_table394_cas_ws_1_ws_off_0_to_mode_register_write_2_mrw_2_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd20); $display("SYNDRAM_VIOLATION 20"); end
  always @(vif.rule_forbidden_tablecas_ws_off_cas_ws_0_ws_off_1_to_cas_ws_0_ws_off_1_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd21); $display("SYNDRAM_VIOLATION 21"); end
  always @(vif.rule_forbidden_tablecas_ws_off_cas_ws_0_ws_off_1_to_mode_register_write_2_mrw_2_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd22); $display("SYNDRAM_VIOLATION 22"); end
  always @(vif.rule_forbidden_wsoe_active_cas_ws_1_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd23); $display("SYNDRAM_VIOLATION 23"); end
  always @(vif.rule_forbidden_wsoe_active_mrw_2_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd24); $display("SYNDRAM_VIOLATION 24"); end
  always @(vif.rule_forbidden_cbt_non_whitelist_command_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd25); $display("SYNDRAM_VIOLATION 25"); end
  always @(vif.rule_forbidden_cbt_mrw_non_mr16_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd26); $display("SYNDRAM_VIOLATION 26"); end
  always @(vif.rule_forbidden_cbt_mrw_mr16_non_op5_4_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd27); $display("SYNDRAM_VIOLATION 27"); end
  always @(vif.rule_forbidden_cbt_mrw_mr16_op5_4_non_exit_value_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd28); $display("SYNDRAM_VIOLATION 28"); end
  always @(vif.rule_forbidden_refresh_ab_when_any_bank_not_precharged_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd29); $display("SYNDRAM_VIOLATION 29"); end
  always @(vif.rule_forbidden_refresh_db_when_target_bank_active_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd30); $display("SYNDRAM_VIOLATION 30"); end
  always @(vif.rule_forbidden_refresh_ab_cycle_non_whitelist_command_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd31); $display("SYNDRAM_VIOLATION 31"); end
  always @(vif.rule_forbidden_refresh_db_cycle_activate_2_same_bank_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd32); $display("SYNDRAM_VIOLATION 32"); end
  always @(vif.rule_forbidden_refresh_db_cycle_rd_s_same_bank_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd33); $display("SYNDRAM_VIOLATION 33"); end
  always @(vif.rule_forbidden_refresh_db_cycle_rd_l_same_bank_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd34); $display("SYNDRAM_VIOLATION 34"); end
  always @(vif.rule_forbidden_refresh_db_cycle_wr_s_same_bank_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd35); $display("SYNDRAM_VIOLATION 35"); end
  always @(vif.rule_forbidden_refresh_db_cycle_wr_l_same_bank_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd36); $display("SYNDRAM_VIOLATION 36"); end
  always @(vif.rule_forbidden_refresh_db_tdbr2act_activate_different_bank_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd37); $display("SYNDRAM_VIOLATION 37"); end
  always @(vif.rule_forbidden_self_refresh_exit_first_command_mrw_2_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd38); $display("SYNDRAM_VIOLATION 38"); end
  always @(vif.rule_forbidden_fsp_switch_non_des_command_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd39); $display("SYNDRAM_VIOLATION 39"); end
  always @(vif.rule_forbidden_dynamic_efficiency_active_fsp_op_change_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd40); $display("SYNDRAM_VIOLATION 40"); end
  always @(vif.rule_forbidden_dynamic_efficiency_active_mrw_not_allowed_mr_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd41); $display("SYNDRAM_VIOLATION 41"); end
  always @(vif.rule_forbidden_dynamic_efficiency_active_mr1_op_5_modify_bcst_false_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd42); $display("SYNDRAM_VIOLATION 42"); end
  always @(vif.rule_forbidden_dynamic_efficiency_active_mr1_op_4_0_modify_bcst_false_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd43); $display("SYNDRAM_VIOLATION 43"); end
  always @(vif.rule_forbidden_dynamic_efficiency_active_training_mode_select_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd44); $display("SYNDRAM_VIOLATION 44"); end
  always @(vif.rule_forbidden_state_diagram_bank_active_rd_s_without_wck2ck_sync_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd45); $display("SYNDRAM_VIOLATION 45"); end
  always @(vif.rule_forbidden_state_diagram_bank_active_rd_l_without_wck2ck_sync_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd46); $display("SYNDRAM_VIOLATION 46"); end
  always @(vif.rule_forbidden_state_diagram_bank_active_wr_s_without_wck2ck_sync_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd47); $display("SYNDRAM_VIOLATION 47"); end
  always @(vif.rule_forbidden_state_diagram_bank_active_wr_l_without_wck2ck_sync_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd48); $display("SYNDRAM_VIOLATION 48"); end
  always @(vif.rule_forbidden_ck_sync_start_tcksnc_non_des_command_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd49); $display("SYNDRAM_VIOLATION 49"); end
  always @(vif.rule_forbidden_table263_wr_to_rd_same_bg_without_new_sync_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd50); $display("SYNDRAM_VIOLATION 50"); end
  always @(vif.rule_forbidden_table263_wr_to_rd_different_bg_without_new_sync_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd51); $display("SYNDRAM_VIOLATION 51"); end
  always @(vif.rule_forbidden_table263_wr_to_mrr_without_new_sync_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd52); $display("SYNDRAM_VIOLATION 52"); end
  always @(vif.rule_forbidden_table263_rd_to_mrr_without_new_sync_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd53); $display("SYNDRAM_VIOLATION 53"); end
  always @(vif.rule_forbidden_table263_mrr_to_rd_without_new_sync_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd54); $display("SYNDRAM_VIOLATION 54"); end
  always @(vif.rule_forbidden_table373_deff_self_refresh_entry_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd55); $display("SYNDRAM_VIOLATION 55"); end
  always @(vif.rule_forbidden_v1_deff_entry_mr_equality_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd56); $display("SYNDRAM_VIOLATION 56"); end
  always @(vif.rule_forbidden_v1_deff_secondary_host_command_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd57); $display("SYNDRAM_VIOLATION 57"); end
  always @(vif.rule_forbidden_v1_deff_fsp_wr_change_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd58); $display("SYNDRAM_VIOLATION 58"); end
  always @(vif.rule_forbidden_v1_deff_control_change_without_broadcast_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd59); $display("SYNDRAM_VIOLATION 59"); end
  always @(vif.rule_forbidden_table117_postamble_length_sampled[0]) begin cg_forbidden_rules_sc0_inst.sample(32'd60); $display("SYNDRAM_VIOLATION 60"); end

  covergroup cg_forbidden_rules_sc1 with function sample(input logic [31:0] rule_id);
    option.per_instance = 1;
    option.name = "forbidden_rules.sc1";
    cp_rule_id: coverpoint rule_id {
      bins syndram_illegal__table383_active_to_active = {32'd1};
      bins syndram_illegal__table383_read_bl24_or_bl48_to_active = {32'd2};
      bins syndram_illegal__table386_read_bl24_or_bl48_to_active = {32'd3};
      bins syndram_illegal__table383_write_bl24_or_bl48_to_active = {32'd4};
      bins syndram_illegal__table383_precharge_to_read_1 = {32'd5};
      bins syndram_illegal__table383_precharge_to_read_2 = {32'd6};
      bins syndram_illegal__table383_precharge_to_write_1 = {32'd7};
      bins syndram_illegal__table383_precharge_to_write_2 = {32'd8};
      bins syndram_illegal__table391_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_1 = {32'd9};
      bins syndram_illegal__table391_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_2 = {32'd10};
      bins syndram_illegal__table391_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_1 = {32'd11};
      bins syndram_illegal__table391_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_2 = {32'd12};
      bins syndram_illegal__table391_read_with_ap_bl24_or_bl48_to_precharge = {32'd13};
      bins syndram_illegal__table391_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_1 = {32'd14};
      bins syndram_illegal__table391_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_2 = {32'd15};
      bins syndram_illegal__table391_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_1 = {32'd16};
      bins syndram_illegal__table391_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_2 = {32'd17};
      bins syndram_illegal__table391_write_with_ap_bl24_or_bl48_to_precharge = {32'd18};
      bins syndram_illegal__table394_cas_ws_1_ws_off_0_to_cas_ws_1_ws_off_0 = {32'd19};
      bins syndram_illegal__table394_cas_ws_1_ws_off_0_to_mode_register_write_2_mrw_2 = {32'd20};
      bins syndram_illegal__tablecas_ws_off_cas_ws_0_ws_off_1_to_cas_ws_0_ws_off_1 = {32'd21};
      bins syndram_illegal__tablecas_ws_off_cas_ws_0_ws_off_1_to_mode_register_write_2_mrw_2 = {32'd22};
      bins syndram_illegal__wsoe_active_cas_ws_1 = {32'd23};
      bins syndram_illegal__wsoe_active_mrw_2 = {32'd24};
      bins syndram_illegal__cbt_non_whitelist_command = {32'd25};
      bins syndram_illegal__cbt_mrw_non_mr16 = {32'd26};
      bins syndram_illegal__cbt_mrw_mr16_non_op5_4 = {32'd27};
      bins syndram_illegal__cbt_mrw_mr16_op5_4_non_exit_value = {32'd28};
      bins syndram_illegal__refresh_ab_when_any_bank_not_precharged = {32'd29};
      bins syndram_illegal__refresh_db_when_target_bank_active = {32'd30};
      bins syndram_illegal__refresh_ab_cycle_non_whitelist_command = {32'd31};
      bins syndram_illegal__refresh_db_cycle_activate_2_same_bank = {32'd32};
      bins syndram_illegal__refresh_db_cycle_rd_s_same_bank = {32'd33};
      bins syndram_illegal__refresh_db_cycle_rd_l_same_bank = {32'd34};
      bins syndram_illegal__refresh_db_cycle_wr_s_same_bank = {32'd35};
      bins syndram_illegal__refresh_db_cycle_wr_l_same_bank = {32'd36};
      bins syndram_illegal__refresh_db_tdbr2act_activate_different_bank = {32'd37};
      bins syndram_illegal__self_refresh_exit_first_command_mrw_2 = {32'd38};
      bins syndram_illegal__fsp_switch_non_des_command = {32'd39};
      bins syndram_illegal__dynamic_efficiency_active_fsp_op_change = {32'd40};
      bins syndram_illegal__dynamic_efficiency_active_mrw_not_allowed_mr = {32'd41};
      bins syndram_illegal__dynamic_efficiency_active_mr1_op_5_modify_bcst_false = {32'd42};
      bins syndram_illegal__dynamic_efficiency_active_mr1_op_4_0_modify_bcst_false = {32'd43};
      bins syndram_illegal__dynamic_efficiency_active_training_mode_select = {32'd44};
      bins syndram_illegal__state_diagram_bank_active_rd_s_without_wck2ck_sync = {32'd45};
      bins syndram_illegal__state_diagram_bank_active_rd_l_without_wck2ck_sync = {32'd46};
      bins syndram_illegal__state_diagram_bank_active_wr_s_without_wck2ck_sync = {32'd47};
      bins syndram_illegal__state_diagram_bank_active_wr_l_without_wck2ck_sync = {32'd48};
      bins syndram_illegal__ck_sync_start_tcksnc_non_des_command = {32'd49};
      bins syndram_illegal__table263_wr_to_rd_same_bg_without_new_sync = {32'd50};
      bins syndram_illegal__table263_wr_to_rd_different_bg_without_new_sync = {32'd51};
      bins syndram_illegal__table263_wr_to_mrr_without_new_sync = {32'd52};
      bins syndram_illegal__table263_rd_to_mrr_without_new_sync = {32'd53};
      bins syndram_illegal__table263_mrr_to_rd_without_new_sync = {32'd54};
      bins syndram_illegal__table373_deff_self_refresh_entry = {32'd55};
      bins syndram_illegal__v1_deff_entry_mr_equality = {32'd56};
      bins syndram_illegal__v1_deff_secondary_host_command = {32'd57};
      bins syndram_illegal__v1_deff_fsp_wr_change = {32'd58};
      bins syndram_illegal__v1_deff_control_change_without_broadcast = {32'd59};
      bins syndram_illegal__table117_postamble_length = {32'd60};
    }
  endgroup : cg_forbidden_rules_sc1

  cg_forbidden_rules_sc1 cg_forbidden_rules_sc1_inst = new();
  always @(vif.rule_forbidden_table383_active_to_active_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd1); $display("SYNDRAM_VIOLATION 1"); end
  always @(vif.rule_forbidden_table383_read_bl24_or_bl48_to_active_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd2); $display("SYNDRAM_VIOLATION 2"); end
  always @(vif.rule_forbidden_table386_read_bl24_or_bl48_to_active_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd3); $display("SYNDRAM_VIOLATION 3"); end
  always @(vif.rule_forbidden_table383_write_bl24_or_bl48_to_active_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd4); $display("SYNDRAM_VIOLATION 4"); end
  always @(vif.rule_forbidden_table383_precharge_to_read_1_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd5); $display("SYNDRAM_VIOLATION 5"); end
  always @(vif.rule_forbidden_table383_precharge_to_read_2_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd6); $display("SYNDRAM_VIOLATION 6"); end
  always @(vif.rule_forbidden_table383_precharge_to_write_1_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd7); $display("SYNDRAM_VIOLATION 7"); end
  always @(vif.rule_forbidden_table383_precharge_to_write_2_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd8); $display("SYNDRAM_VIOLATION 8"); end
  always @(vif.rule_forbidden_table391_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_1_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd9); $display("SYNDRAM_VIOLATION 9"); end
  always @(vif.rule_forbidden_table391_read_with_ap_bl24_or_bl48_to_read_or_read_with_ap_2_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd10); $display("SYNDRAM_VIOLATION 10"); end
  always @(vif.rule_forbidden_table391_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_1_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd11); $display("SYNDRAM_VIOLATION 11"); end
  always @(vif.rule_forbidden_table391_read_with_ap_bl24_or_bl48_to_write_or_write_with_ap_2_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd12); $display("SYNDRAM_VIOLATION 12"); end
  always @(vif.rule_forbidden_table391_read_with_ap_bl24_or_bl48_to_precharge_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd13); $display("SYNDRAM_VIOLATION 13"); end
  always @(vif.rule_forbidden_table391_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_1_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd14); $display("SYNDRAM_VIOLATION 14"); end
  always @(vif.rule_forbidden_table391_write_with_ap_bl24_or_bl48_to_read_or_read_with_ap_2_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd15); $display("SYNDRAM_VIOLATION 15"); end
  always @(vif.rule_forbidden_table391_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_1_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd16); $display("SYNDRAM_VIOLATION 16"); end
  always @(vif.rule_forbidden_table391_write_with_ap_bl24_or_bl48_to_write_or_write_with_ap_2_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd17); $display("SYNDRAM_VIOLATION 17"); end
  always @(vif.rule_forbidden_table391_write_with_ap_bl24_or_bl48_to_precharge_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd18); $display("SYNDRAM_VIOLATION 18"); end
  always @(vif.rule_forbidden_table394_cas_ws_1_ws_off_0_to_cas_ws_1_ws_off_0_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd19); $display("SYNDRAM_VIOLATION 19"); end
  always @(vif.rule_forbidden_table394_cas_ws_1_ws_off_0_to_mode_register_write_2_mrw_2_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd20); $display("SYNDRAM_VIOLATION 20"); end
  always @(vif.rule_forbidden_tablecas_ws_off_cas_ws_0_ws_off_1_to_cas_ws_0_ws_off_1_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd21); $display("SYNDRAM_VIOLATION 21"); end
  always @(vif.rule_forbidden_tablecas_ws_off_cas_ws_0_ws_off_1_to_mode_register_write_2_mrw_2_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd22); $display("SYNDRAM_VIOLATION 22"); end
  always @(vif.rule_forbidden_wsoe_active_cas_ws_1_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd23); $display("SYNDRAM_VIOLATION 23"); end
  always @(vif.rule_forbidden_wsoe_active_mrw_2_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd24); $display("SYNDRAM_VIOLATION 24"); end
  always @(vif.rule_forbidden_cbt_non_whitelist_command_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd25); $display("SYNDRAM_VIOLATION 25"); end
  always @(vif.rule_forbidden_cbt_mrw_non_mr16_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd26); $display("SYNDRAM_VIOLATION 26"); end
  always @(vif.rule_forbidden_cbt_mrw_mr16_non_op5_4_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd27); $display("SYNDRAM_VIOLATION 27"); end
  always @(vif.rule_forbidden_cbt_mrw_mr16_op5_4_non_exit_value_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd28); $display("SYNDRAM_VIOLATION 28"); end
  always @(vif.rule_forbidden_refresh_ab_when_any_bank_not_precharged_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd29); $display("SYNDRAM_VIOLATION 29"); end
  always @(vif.rule_forbidden_refresh_db_when_target_bank_active_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd30); $display("SYNDRAM_VIOLATION 30"); end
  always @(vif.rule_forbidden_refresh_ab_cycle_non_whitelist_command_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd31); $display("SYNDRAM_VIOLATION 31"); end
  always @(vif.rule_forbidden_refresh_db_cycle_activate_2_same_bank_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd32); $display("SYNDRAM_VIOLATION 32"); end
  always @(vif.rule_forbidden_refresh_db_cycle_rd_s_same_bank_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd33); $display("SYNDRAM_VIOLATION 33"); end
  always @(vif.rule_forbidden_refresh_db_cycle_rd_l_same_bank_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd34); $display("SYNDRAM_VIOLATION 34"); end
  always @(vif.rule_forbidden_refresh_db_cycle_wr_s_same_bank_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd35); $display("SYNDRAM_VIOLATION 35"); end
  always @(vif.rule_forbidden_refresh_db_cycle_wr_l_same_bank_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd36); $display("SYNDRAM_VIOLATION 36"); end
  always @(vif.rule_forbidden_refresh_db_tdbr2act_activate_different_bank_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd37); $display("SYNDRAM_VIOLATION 37"); end
  always @(vif.rule_forbidden_self_refresh_exit_first_command_mrw_2_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd38); $display("SYNDRAM_VIOLATION 38"); end
  always @(vif.rule_forbidden_fsp_switch_non_des_command_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd39); $display("SYNDRAM_VIOLATION 39"); end
  always @(vif.rule_forbidden_dynamic_efficiency_active_fsp_op_change_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd40); $display("SYNDRAM_VIOLATION 40"); end
  always @(vif.rule_forbidden_dynamic_efficiency_active_mrw_not_allowed_mr_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd41); $display("SYNDRAM_VIOLATION 41"); end
  always @(vif.rule_forbidden_dynamic_efficiency_active_mr1_op_5_modify_bcst_false_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd42); $display("SYNDRAM_VIOLATION 42"); end
  always @(vif.rule_forbidden_dynamic_efficiency_active_mr1_op_4_0_modify_bcst_false_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd43); $display("SYNDRAM_VIOLATION 43"); end
  always @(vif.rule_forbidden_dynamic_efficiency_active_training_mode_select_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd44); $display("SYNDRAM_VIOLATION 44"); end
  always @(vif.rule_forbidden_state_diagram_bank_active_rd_s_without_wck2ck_sync_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd45); $display("SYNDRAM_VIOLATION 45"); end
  always @(vif.rule_forbidden_state_diagram_bank_active_rd_l_without_wck2ck_sync_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd46); $display("SYNDRAM_VIOLATION 46"); end
  always @(vif.rule_forbidden_state_diagram_bank_active_wr_s_without_wck2ck_sync_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd47); $display("SYNDRAM_VIOLATION 47"); end
  always @(vif.rule_forbidden_state_diagram_bank_active_wr_l_without_wck2ck_sync_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd48); $display("SYNDRAM_VIOLATION 48"); end
  always @(vif.rule_forbidden_ck_sync_start_tcksnc_non_des_command_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd49); $display("SYNDRAM_VIOLATION 49"); end
  always @(vif.rule_forbidden_table263_wr_to_rd_same_bg_without_new_sync_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd50); $display("SYNDRAM_VIOLATION 50"); end
  always @(vif.rule_forbidden_table263_wr_to_rd_different_bg_without_new_sync_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd51); $display("SYNDRAM_VIOLATION 51"); end
  always @(vif.rule_forbidden_table263_wr_to_mrr_without_new_sync_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd52); $display("SYNDRAM_VIOLATION 52"); end
  always @(vif.rule_forbidden_table263_rd_to_mrr_without_new_sync_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd53); $display("SYNDRAM_VIOLATION 53"); end
  always @(vif.rule_forbidden_table263_mrr_to_rd_without_new_sync_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd54); $display("SYNDRAM_VIOLATION 54"); end
  always @(vif.rule_forbidden_table373_deff_self_refresh_entry_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd55); $display("SYNDRAM_VIOLATION 55"); end
  always @(vif.rule_forbidden_v1_deff_entry_mr_equality_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd56); $display("SYNDRAM_VIOLATION 56"); end
  always @(vif.rule_forbidden_v1_deff_secondary_host_command_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd57); $display("SYNDRAM_VIOLATION 57"); end
  always @(vif.rule_forbidden_v1_deff_fsp_wr_change_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd58); $display("SYNDRAM_VIOLATION 58"); end
  always @(vif.rule_forbidden_v1_deff_control_change_without_broadcast_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd59); $display("SYNDRAM_VIOLATION 59"); end
  always @(vif.rule_forbidden_table117_postamble_length_sampled[1]) begin cg_forbidden_rules_sc1_inst.sample(32'd60); $display("SYNDRAM_VIOLATION 60"); end
