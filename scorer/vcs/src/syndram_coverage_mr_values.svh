
  // Mode-register write value coverage generated from mode_registers.yaml.

  covergroup cg_mr_value_mr1(string instance_name) with function sample(logic [7:0] op, bit sc, logic [1:0] fsp);
    option.per_instance = 1;
    option.name = instance_name;
    cp_sc: coverpoint sc {
      bins sc0 = {1'b0};
      bins sc1 = {1'b1};
    }

    cp_op_4_0: coverpoint op[4:0] {
      bins value_1_fsp0 = {5'h1} iff (fsp == 2'd0);
      bins value_b_fsp1 = {5'hb} iff (fsp == 2'd1);
    }

    cp_op_5_5: coverpoint op[5:5] {
      bins value_0 = {1'h0};
    }

    cp_op_6_6: coverpoint op[6:6] {
      bins value_0 = {1'h0};
      bins value_1 = {1'h1};
    }
  endgroup : cg_mr_value_mr1

  cg_mr_value_mr1 cg_mr_value_mr1_sc0_inst = new("cg_mr_value_mr1.sc0");
  cg_mr_value_mr1 cg_mr_value_mr1_sc1_inst = new("cg_mr_value_mr1.sc1");

  covergroup cg_mr_value_mr10(string instance_name) with function sample(logic [7:0] op, bit sc, logic [1:0] fsp);
    option.per_instance = 1;
    option.name = instance_name;
    cp_sc: coverpoint sc {
      bins sc0 = {1'b0};
      bins sc1 = {1'b1};
    }

    cp_op_0_0: coverpoint op[0:0] {
      bins value_0 = {1'h0};
    }

    cp_op_1_1: coverpoint op[1:1] {
      bins value_0 = {1'h0};
    }

    cp_op_4_2: coverpoint op[4:2] {
      bins value_0 = {3'h0};
      bins value_1 = {3'h1};
    }

    cp_op_5_5: coverpoint op[5:5] {
      bins value_0 = {1'h0};
      bins value_1 = {1'h1};
    }

    cp_op_7_6: coverpoint op[7:6] {
      bins value_0 = {2'h0};
      bins value_1 = {2'h1};
      bins value_2 = {2'h2};
    }
  endgroup : cg_mr_value_mr10

  cg_mr_value_mr10 cg_mr_value_mr10_sc0_inst = new("cg_mr_value_mr10.sc0");
  cg_mr_value_mr10 cg_mr_value_mr10_sc1_inst = new("cg_mr_value_mr10.sc1");

  covergroup cg_mr_value_mr11(string instance_name) with function sample(logic [7:0] op, bit sc, logic [1:0] fsp);
    option.per_instance = 1;
    option.name = instance_name;
    cp_sc: coverpoint sc {
      bins sc0 = {1'b0};
      bins sc1 = {1'b1};
    }

    cp_op_2_2: coverpoint op[2:2] {
      bins value_0 = {1'h0};
    }

    cp_op_3_3: coverpoint op[3:3] {
      bins value_0 = {1'h0};
    }

    cp_op_4_4: coverpoint op[4:4] {
      bins value_0 = {1'h0};
    }

    cp_op_5_5: coverpoint op[5:5] {
      bins value_0 = {1'h0};
    }

    cp_op_6_6: coverpoint op[6:6] {
      bins value_0_fsp0 = {1'h0} iff (fsp == 2'd0);
      bins value_1_fsp1 = {1'h1} iff (fsp == 2'd1);
    }
  endgroup : cg_mr_value_mr11

  cg_mr_value_mr11 cg_mr_value_mr11_sc0_inst = new("cg_mr_value_mr11.sc0");
  cg_mr_value_mr11 cg_mr_value_mr11_sc1_inst = new("cg_mr_value_mr11.sc1");

  covergroup cg_mr_value_mr12(string instance_name) with function sample(logic [7:0] op, bit sc, logic [1:0] fsp);
    option.per_instance = 1;
    option.name = instance_name;
    cp_sc: coverpoint sc {
      bins sc0 = {1'b0};
      bins sc1 = {1'b1};
    }

    cp_op_6_0: coverpoint op[6:0] {
      bins value_50 = {7'h50};
      bins value_51 = {7'h51};
    }
  endgroup : cg_mr_value_mr12

  cg_mr_value_mr12 cg_mr_value_mr12_sc0_inst = new("cg_mr_value_mr12.sc0");
  cg_mr_value_mr12 cg_mr_value_mr12_sc1_inst = new("cg_mr_value_mr12.sc1");

  covergroup cg_mr_value_mr13(string instance_name) with function sample(logic [7:0] op, bit sc, logic [1:0] fsp);
    option.per_instance = 1;
    option.name = instance_name;
    cp_sc: coverpoint sc {
      bins sc0 = {1'b0};
      bins sc1 = {1'b1};
    }

    cp_op_5_4: coverpoint op[5:4] {
      bins value_0 = {2'h0};
      bins value_1 = {2'h1};
    }

    cp_op_7_6: coverpoint op[7:6] {
      bins value_0 = {2'h0};
      bins value_1 = {2'h1};
    }
  endgroup : cg_mr_value_mr13

  cg_mr_value_mr13 cg_mr_value_mr13_sc0_inst = new("cg_mr_value_mr13.sc0");
  cg_mr_value_mr13 cg_mr_value_mr13_sc1_inst = new("cg_mr_value_mr13.sc1");

  covergroup cg_mr_value_mr16(string instance_name) with function sample(logic [7:0] op, bit sc, logic [1:0] fsp);
    option.per_instance = 1;
    option.name = instance_name;
    cp_sc: coverpoint sc {
      bins sc0 = {1'b0};
      bins sc1 = {1'b1};
    }

    cp_op_5_4: coverpoint op[5:4] {
      bins value_0 = {2'h0};
      bins value_1 = {2'h1};
      bins value_2 = {2'h2};
    }

    cp_op_6_6: coverpoint op[6:6] {
      bins value_0 = {1'h0};
    }
  endgroup : cg_mr_value_mr16

  cg_mr_value_mr16 cg_mr_value_mr16_sc0_inst = new("cg_mr_value_mr16.sc0");
  cg_mr_value_mr16 cg_mr_value_mr16_sc1_inst = new("cg_mr_value_mr16.sc1");

  covergroup cg_mr_value_mr19(string instance_name) with function sample(logic [7:0] op, bit sc, logic [1:0] fsp);
    option.per_instance = 1;
    option.name = instance_name;
    cp_sc: coverpoint sc {
      bins sc0 = {1'b0};
      bins sc1 = {1'b1};
    }

    cp_op_2_0: coverpoint op[2:0] {
      bins value_0 = {3'h0};
      bins value_1 = {3'h1};
      bins value_2 = {3'h2};
      bins value_3 = {3'h3};
      bins value_4 = {3'h4};
      bins value_5 = {3'h5};
      bins value_6 = {3'h6};
    }
  endgroup : cg_mr_value_mr19

  cg_mr_value_mr19 cg_mr_value_mr19_sc0_inst = new("cg_mr_value_mr19.sc0");
  cg_mr_value_mr19 cg_mr_value_mr19_sc1_inst = new("cg_mr_value_mr19.sc1");

  covergroup cg_mr_value_mr20(string instance_name) with function sample(logic [7:0] op, bit sc, logic [1:0] fsp);
    option.per_instance = 1;
    option.name = instance_name;
    cp_sc: coverpoint sc {
      bins sc0 = {1'b0};
      bins sc1 = {1'b1};
    }

    cp_op_2_0: coverpoint op[2:0] {
      bins value_0 = {3'h0};
      bins value_1 = {3'h1};
      bins value_2 = {3'h2};
      bins value_3 = {3'h3};
      bins value_4 = {3'h4};
      bins value_5 = {3'h5};
      bins value_6 = {3'h6};
    }

    cp_op_5_3: coverpoint op[5:3] {
      bins value_0 = {3'h0};
    }
  endgroup : cg_mr_value_mr20

  cg_mr_value_mr20 cg_mr_value_mr20_sc0_inst = new("cg_mr_value_mr20.sc0");
  cg_mr_value_mr20 cg_mr_value_mr20_sc1_inst = new("cg_mr_value_mr20.sc1");

  covergroup cg_mr_value_mr22(string instance_name) with function sample(logic [7:0] op, bit sc, logic [1:0] fsp);
    option.per_instance = 1;
    option.name = instance_name;
    cp_sc: coverpoint sc {
      bins sc0 = {1'b0};
      bins sc1 = {1'b1};
    }

    cp_op_1_0: coverpoint op[1:0] {
      bins value_0 = {2'h0};
      bins value_1 = {2'h1};
      bins value_2 = {2'h2};
      bins value_3 = {2'h3};
    }

    cp_op_3_2: coverpoint op[3:2] {
      bins value_0 = {2'h0};
    }

    cp_op_4_4: coverpoint op[4:4] {
      bins value_0 = {1'h0};
    }

    cp_op_5_5: coverpoint op[5:5] {
      bins value_0 = {1'h0};
      bins value_1 = {1'h1};
    }

    cp_op_7_6: coverpoint op[7:6] {
      bins value_0 = {2'h0};
      bins value_1 = {2'h1};
      bins value_2 = {2'h2};
    }
  endgroup : cg_mr_value_mr22

  cg_mr_value_mr22 cg_mr_value_mr22_sc0_inst = new("cg_mr_value_mr22.sc0");
  cg_mr_value_mr22 cg_mr_value_mr22_sc1_inst = new("cg_mr_value_mr22.sc1");

  covergroup cg_mr_value_mr25(string instance_name) with function sample(logic [7:0] op, bit sc, logic [1:0] fsp);
    option.per_instance = 1;
    option.name = instance_name;
    cp_sc: coverpoint sc {
      bins sc0 = {1'b0};
      bins sc1 = {1'b1};
    }

    cp_op_7_7: coverpoint op[7:7] {
      bins value_0 = {1'h0};
    }
  endgroup : cg_mr_value_mr25

  cg_mr_value_mr25 cg_mr_value_mr25_sc0_inst = new("cg_mr_value_mr25.sc0");
  cg_mr_value_mr25 cg_mr_value_mr25_sc1_inst = new("cg_mr_value_mr25.sc1");

  covergroup cg_mr_value_mr26(string instance_name) with function sample(logic [7:0] op, bit sc, logic [1:0] fsp);
    option.per_instance = 1;
    option.name = instance_name;
    cp_sc: coverpoint sc {
      bins sc0 = {1'b0};
      bins sc1 = {1'b1};
    }

    cp_op_3_3: coverpoint op[3:3] {
      bins value_0 = {1'h0};
      bins value_1 = {1'h1};
    }
  endgroup : cg_mr_value_mr26

  cg_mr_value_mr26 cg_mr_value_mr26_sc0_inst = new("cg_mr_value_mr26.sc0");
  cg_mr_value_mr26 cg_mr_value_mr26_sc1_inst = new("cg_mr_value_mr26.sc1");

  always @(vif.command_sampled[0]) begin
    if (vif.sampled_cmd_event[0].valid && vif.sampled_cmd_event[0].cmd_type == CMD_MRW_2) begin
      unique case (vif.sampled_cmd_event[0].ma)
          8'd1: begin
            cg_mr_value_mr1_sc0_inst.sample(
              vif.sampled_cmd_event[0].op,
              vif.sampled_cmd_event[0].sc, vif.mr_fsp_wr[0]
            );
          end
          8'd10: begin
            cg_mr_value_mr10_sc0_inst.sample(
              vif.sampled_cmd_event[0].op,
              vif.sampled_cmd_event[0].sc, vif.mr_fsp_wr[0]
            );
          end
          8'd11: begin
            cg_mr_value_mr11_sc0_inst.sample(
              vif.sampled_cmd_event[0].op,
              vif.sampled_cmd_event[0].sc, vif.mr_fsp_wr[0]
            );
          end
          8'd12: begin
            cg_mr_value_mr12_sc0_inst.sample(
              vif.sampled_cmd_event[0].op,
              vif.sampled_cmd_event[0].sc, vif.mr_fsp_wr[0]
            );
          end
          8'd13: begin
            cg_mr_value_mr13_sc0_inst.sample(
              vif.sampled_cmd_event[0].op,
              vif.sampled_cmd_event[0].sc, vif.mr_fsp_wr[0]
            );
          end
          8'd16: begin
            cg_mr_value_mr16_sc0_inst.sample(
              vif.sampled_cmd_event[0].op,
              vif.sampled_cmd_event[0].sc, vif.mr_fsp_wr[0]
            );
          end
          8'd19: begin
            cg_mr_value_mr19_sc0_inst.sample(
              vif.sampled_cmd_event[0].op,
              vif.sampled_cmd_event[0].sc, vif.mr_fsp_wr[0]
            );
          end
          8'd20: begin
            cg_mr_value_mr20_sc0_inst.sample(
              vif.sampled_cmd_event[0].op,
              vif.sampled_cmd_event[0].sc, vif.mr_fsp_wr[0]
            );
          end
          8'd22: begin
            cg_mr_value_mr22_sc0_inst.sample(
              vif.sampled_cmd_event[0].op,
              vif.sampled_cmd_event[0].sc, vif.mr_fsp_wr[0]
            );
          end
          8'd25: begin
            cg_mr_value_mr25_sc0_inst.sample(
              vif.sampled_cmd_event[0].op,
              vif.sampled_cmd_event[0].sc, vif.mr_fsp_wr[0]
            );
          end
          8'd26: begin
            cg_mr_value_mr26_sc0_inst.sample(
              vif.sampled_cmd_event[0].op,
              vif.sampled_cmd_event[0].sc, vif.mr_fsp_wr[0]
            );
          end
          default: begin end
        endcase
    end
  end
  always @(vif.command_sampled[1]) begin
    if (vif.sampled_cmd_event[1].valid && vif.sampled_cmd_event[1].cmd_type == CMD_MRW_2) begin
      unique case (vif.sampled_cmd_event[1].ma)
          8'd1: begin
            cg_mr_value_mr1_sc1_inst.sample(
              vif.sampled_cmd_event[1].op,
              vif.sampled_cmd_event[1].sc, vif.mr_fsp_wr[1]
            );
          end
          8'd10: begin
            cg_mr_value_mr10_sc1_inst.sample(
              vif.sampled_cmd_event[1].op,
              vif.sampled_cmd_event[1].sc, vif.mr_fsp_wr[1]
            );
          end
          8'd11: begin
            cg_mr_value_mr11_sc1_inst.sample(
              vif.sampled_cmd_event[1].op,
              vif.sampled_cmd_event[1].sc, vif.mr_fsp_wr[1]
            );
          end
          8'd12: begin
            cg_mr_value_mr12_sc1_inst.sample(
              vif.sampled_cmd_event[1].op,
              vif.sampled_cmd_event[1].sc, vif.mr_fsp_wr[1]
            );
          end
          8'd13: begin
            cg_mr_value_mr13_sc1_inst.sample(
              vif.sampled_cmd_event[1].op,
              vif.sampled_cmd_event[1].sc, vif.mr_fsp_wr[1]
            );
          end
          8'd16: begin
            cg_mr_value_mr16_sc1_inst.sample(
              vif.sampled_cmd_event[1].op,
              vif.sampled_cmd_event[1].sc, vif.mr_fsp_wr[1]
            );
          end
          8'd19: begin
            cg_mr_value_mr19_sc1_inst.sample(
              vif.sampled_cmd_event[1].op,
              vif.sampled_cmd_event[1].sc, vif.mr_fsp_wr[1]
            );
          end
          8'd20: begin
            cg_mr_value_mr20_sc1_inst.sample(
              vif.sampled_cmd_event[1].op,
              vif.sampled_cmd_event[1].sc, vif.mr_fsp_wr[1]
            );
          end
          8'd22: begin
            cg_mr_value_mr22_sc1_inst.sample(
              vif.sampled_cmd_event[1].op,
              vif.sampled_cmd_event[1].sc, vif.mr_fsp_wr[1]
            );
          end
          8'd25: begin
            cg_mr_value_mr25_sc1_inst.sample(
              vif.sampled_cmd_event[1].op,
              vif.sampled_cmd_event[1].sc, vif.mr_fsp_wr[1]
            );
          end
          8'd26: begin
            cg_mr_value_mr26_sc1_inst.sample(
              vif.sampled_cmd_event[1].op,
              vif.sampled_cmd_event[1].sc, vif.mr_fsp_wr[1]
            );
          end
          default: begin end
        endcase
    end
  end
