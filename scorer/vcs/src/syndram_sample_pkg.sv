package syndram_sample_pkg;

  typedef enum logic [6:0] {
    CMD_NOP        = 7'd0,
    CMD_REFRESH    = 7'd1,
    CMD_DESELECT   = 7'd2,
    CMD_PDE        = 7'd3,
    CMD_PDX        = 7'd4,
    CMD_SRE        = 7'd5,
    CMD_SRX        = 7'd6,
    CMD_PRE        = 7'd7,
    CMD_PREA       = 7'd8,
    CMD_ACT_1      = 7'd9,
    CMD_ACT_2      = 7'd10,
    CMD_RD_S       = 7'd11,
    CMD_RD_L       = 7'd12,
    CMD_RD_M       = 7'd13,
    CMD_WR_S       = 7'd14,
    CMD_WR_L       = 7'd15,
    CMD_WR_M       = 7'd16,
    CMD_NT_S       = 7'd17,
    CMD_NT_L       = 7'd18,
    CMD_CAS        = 7'd19,
    CMD_MRR        = 7'd20,
    CMD_MPC        = 7'd21,
    CMD_MRW_1      = 7'd22,
    CMD_MRW_2      = 7'd23,
    CMD_WFF        = 7'd24,
    CMD_RFF        = 7'd25,
    CMD_RDC        = 7'd26,
    CMD_RFU        = 7'd27,
    CMD_ILLEGAL    = 7'd28,
    CMD_UNKNOWN    = 7'd127
  } syndram_cmd_type_e;

  typedef enum logic [5:0] {
    BL_UNKNOWN = 6'd0,
    BL_24      = 6'd24,
    BL_48      = 6'd48
  } syndram_burst_length_e;

  typedef enum logic [1:0] {
    SYNDRAM_DIE_NORMAL            = 2'd0,
    SYNDRAM_DIE_STATIC_EFFICIENCY = 2'd1
  } syndram_die_mode_e;

  function automatic logic [7:0] syndram_mr_fsp_mask(input bit [7:0] ma);
    unique case (ma)
      8'd1:   syndram_mr_fsp_mask = 8'h3f;
      8'd3:   syndram_mr_fsp_mask = 8'he3;
      8'd10:  syndram_mr_fsp_mask = 8'hff;
      8'd11:  syndram_mr_fsp_mask = 8'hfc;
      8'd12:  syndram_mr_fsp_mask = 8'h7f;
      8'd14:  syndram_mr_fsp_mask = 8'h7f;
      8'd15:  syndram_mr_fsp_mask = 8'h7f;
      8'd17:  syndram_mr_fsp_mask = 8'h3f;
      8'd18:  syndram_mr_fsp_mask = 8'h3f;
      8'd19:  syndram_mr_fsp_mask = 8'h3f;
      8'd20:  syndram_mr_fsp_mask = 8'h3f;
      8'd22:  syndram_mr_fsp_mask = 8'hff;
      8'd23:  syndram_mr_fsp_mask = 8'h07;
      8'd41:  syndram_mr_fsp_mask = 8'h01;
      8'd45:  syndram_mr_fsp_mask = 8'h0f;
      8'd46:  syndram_mr_fsp_mask = 8'h78;
      8'd70:  syndram_mr_fsp_mask = 8'h77;
      8'd71:  syndram_mr_fsp_mask = 8'h77;
      8'd72:  syndram_mr_fsp_mask = 8'h77;
      8'd73:  syndram_mr_fsp_mask = 8'h77;
      8'd74:  syndram_mr_fsp_mask = 8'h77;
      8'd75:  syndram_mr_fsp_mask = 8'h77;
      8'd78:  syndram_mr_fsp_mask = 8'hff;
      8'd79:  syndram_mr_fsp_mask = 8'hff;
      8'd80:  syndram_mr_fsp_mask = 8'hff;
      8'd81:  syndram_mr_fsp_mask = 8'hff;
      8'd82:  syndram_mr_fsp_mask = 8'hff;
      8'd83:  syndram_mr_fsp_mask = 8'hff;
      8'd84:  syndram_mr_fsp_mask = 8'hff;
      default: syndram_mr_fsp_mask = 8'h00;
    endcase
  endfunction

  function automatic bit syndram_mr_is_fsp(input bit [7:0] ma);
    syndram_mr_is_fsp = (syndram_mr_fsp_mask(ma) != 8'h00);
  endfunction

  function automatic logic [7:0] syndram_mr_writable_mask(input bit [7:0] ma);
    unique case (ma)
      8'd1:   syndram_mr_writable_mask = 8'h7f;
      8'd3:   syndram_mr_writable_mask = 8'he3;
      8'd9:   syndram_mr_writable_mask = 8'hff;
      8'd10:  syndram_mr_writable_mask = 8'hff;
      8'd11:  syndram_mr_writable_mask = 8'hfc;
      8'd12:  syndram_mr_writable_mask = 8'h7f;
      8'd13:  syndram_mr_writable_mask = 8'hff;
      8'd14:  syndram_mr_writable_mask = 8'h7f;
      8'd15:  syndram_mr_writable_mask = 8'hff;
      8'd16:  syndram_mr_writable_mask = 8'hfc;
      8'd17:  syndram_mr_writable_mask = 8'h3f;
      8'd18:  syndram_mr_writable_mask = 8'h3f;
      8'd19:  syndram_mr_writable_mask = 8'h3f;
      8'd20:  syndram_mr_writable_mask = 8'h3f;
      8'd22:  syndram_mr_writable_mask = 8'hff;
      8'd23:  syndram_mr_writable_mask = 8'h17;
      8'd25:  syndram_mr_writable_mask = 8'hf3;
      8'd26:  syndram_mr_writable_mask = 8'h3f;
      8'd27:  syndram_mr_writable_mask = 8'hff;
      8'd28:  syndram_mr_writable_mask = 8'h0f;
      8'd30:  syndram_mr_writable_mask = 8'h0f;
      8'd31:  syndram_mr_writable_mask = 8'hff;
      8'd32:  syndram_mr_writable_mask = 8'hff;
      8'd33:  syndram_mr_writable_mask = 8'hff;
      8'd34:  syndram_mr_writable_mask = 8'hff;
      8'd37:  syndram_mr_writable_mask = 8'hff;
      8'd40:  syndram_mr_writable_mask = 8'hff;
      8'd41:  syndram_mr_writable_mask = 8'h1d;
      8'd42:  syndram_mr_writable_mask = 8'hff;
      8'd45:  syndram_mr_writable_mask = 8'h0f;
      8'd46:  syndram_mr_writable_mask = 8'h7b;
      8'd70:  syndram_mr_writable_mask = 8'h77;
      8'd71:  syndram_mr_writable_mask = 8'h77;
      8'd72:  syndram_mr_writable_mask = 8'h77;
      8'd73:  syndram_mr_writable_mask = 8'h77;
      8'd74:  syndram_mr_writable_mask = 8'h77;
      8'd75:  syndram_mr_writable_mask = 8'h77;
      8'd78:  syndram_mr_writable_mask = 8'hff;
      8'd79:  syndram_mr_writable_mask = 8'hff;
      8'd80:  syndram_mr_writable_mask = 8'hff;
      8'd81:  syndram_mr_writable_mask = 8'hff;
      8'd82:  syndram_mr_writable_mask = 8'hff;
      8'd83:  syndram_mr_writable_mask = 8'hff;
      8'd84:  syndram_mr_writable_mask = 8'hff;
      8'd85:  syndram_mr_writable_mask = 8'h87;
      8'd86:  syndram_mr_writable_mask = 8'h6f;
      8'd92:  syndram_mr_writable_mask = 8'hff;
      8'd93:  syndram_mr_writable_mask = 8'hff;
      8'd94:  syndram_mr_writable_mask = 8'hff;
      8'd95:  syndram_mr_writable_mask = 8'hff;
      8'd99:  syndram_mr_writable_mask = 8'hff;
      8'd100: syndram_mr_writable_mask = 8'hff;
      8'd111: syndram_mr_writable_mask = 8'h1f;
      8'd118: syndram_mr_writable_mask = 8'h1f;
      default: syndram_mr_writable_mask = 8'h00;
    endcase
  endfunction

  // The retained profile uses MR1 EFF CTL for dynamic-efficiency control.
  function automatic logic [7:0] syndram_mr_deff_allowed_mask(input bit [7:0] ma);
    unique case (ma)
      8'd1: syndram_mr_deff_allowed_mask = 8'h40;
      default: syndram_mr_deff_allowed_mask = 8'h00;
    endcase
  endfunction

  // MR1 participates in both retained dynamic-efficiency register lists.
  function automatic logic [7:0] syndram_mr_deff_broadcast_mask(input bit [7:0] ma);
    unique case (ma)
      8'd1:  syndram_mr_deff_broadcast_mask = 8'h40;
      default: syndram_mr_deff_broadcast_mask = 8'h00;
    endcase
  endfunction

  function automatic logic [7:0] syndram_mr_default_value(input bit [7:0] ma);
    unique case (ma)
      8'd3:   syndram_mr_default_value = 8'hc0;
      8'd4:   syndram_mr_default_value = 8'h80;
      8'd22:  syndram_mr_default_value = 8'h01;
      8'd25:  syndram_mr_default_value = 8'h80;
      8'd28:  syndram_mr_default_value = 8'h04;
      8'd30:  syndram_mr_default_value = 8'h05;
      8'd31:  syndram_mr_default_value = 8'h55;
      8'd32:  syndram_mr_default_value = 8'h5a;
      8'd33:  syndram_mr_default_value = 8'h3c;
      8'd34:  syndram_mr_default_value = 8'h50;
      default: syndram_mr_default_value = 8'h00;
    endcase
  endfunction

  typedef struct {
    logic valid;
    logic subch;
    logic cs_r1;
    logic cs_r2;
    logic [3:0] ca_r1;
    logic [3:0] ca_f1;
    logic [3:0] ca_r2;
    logic [3:0] ca_f2;
    logic r1_even;
    logic r2_even;
    realtime r1_time;
    realtime f1_time;
    realtime r2_time;
    realtime f2_time;
  } syndram_raw_cmd_sample_t;

  typedef struct {
    bit valid;
    bit subch;
    bit target;
    bit non_target;
    syndram_cmd_type_e cmd_type;
    syndram_burst_length_e bl;

    syndram_raw_cmd_sample_t raw;

    bit [1:0] ba;
    bit [1:0] bg;
    bit [16:0] r;
    bit [5:0] c;
    bit [7:0] ma;
    bit [7:0] op;

    bit ab;
    bit ap;
    bit pd;
    bit sc;
    bit protocol_field_sc;
    bit meta;
    bit ws;
    bit ws_off;
    bit wsoe;
    bit par;
    bit bcst;
    bit mr_is_fsp;
    bit rfm;
    bit [1:0] dbg;
    // REFdb commands are grouped in sets of eight by the refresh counter.
    // The epoch distinguishes tdbR2dbR_S (same group) from tdbR2dbR_L
    // (different group).
    bit refresh_counter;
    bit refresh_counter_valid;

    bit ck_sync_state;
    bit efficiency_mode;
    bit ca_parity_enabled;
    bit system_meta_mode;

    realtime timestamp;
  } syndram_cmd_event_t;

  function automatic syndram_cmd_event_t syndram_cmd_event_zero();
    syndram_cmd_event_t ev;
    ev.valid = 1'b0;
    ev.subch = 1'b0;
    ev.target = 1'b0;
    ev.non_target = 1'b0;
    ev.cmd_type = CMD_NOP;
    ev.bl = BL_UNKNOWN;
    ev.raw = '{default: '0};
    ev.ba = '0;
    ev.bg = '0;
    ev.r = '0;
    ev.c = '0;
    ev.ma = '0;
    ev.op = '0;
    ev.ab = 1'b0;
    ev.ap = 1'b0;
    ev.pd = 1'b0;
    ev.sc = 1'b0;
    ev.protocol_field_sc = 1'b0;
    ev.meta = 1'b0;
    ev.ws = 1'b0;
    ev.ws_off = 1'b0;
    ev.wsoe = 1'b0;
    ev.par = 1'b0;
    ev.bcst = 1'b0;
    ev.mr_is_fsp = 1'b0;
    ev.rfm = 1'b0;
    ev.dbg = '0;
    ev.refresh_counter = 1'b0;
    ev.refresh_counter_valid = 1'b0;
    ev.ck_sync_state = 1'b0;
    ev.efficiency_mode = 1'b0;
    ev.ca_parity_enabled = 1'b0;
    ev.system_meta_mode = 1'b0;
    ev.timestamp = 0.0;
    return ev;
  endfunction

  typedef struct {
    logic active;
    realtime enter_time;
    realtime exit_time;
    syndram_cmd_event_t enter_event;
    syndram_cmd_event_t exit_event;
  } ypu_syndram_state_t;

  function automatic ypu_syndram_state_t ypu_syndram_state_zero();
    ypu_syndram_state_t state;
    state.active = 1'b0;
    state.enter_time = 0.0;
    state.exit_time = 0.0;
    state.enter_event = syndram_cmd_event_zero();
    state.exit_event = syndram_cmd_event_zero();
    return state;
  endfunction

  typedef struct {
    logic valid;
    realtime start_time;
    syndram_cmd_event_t start_event;
    realtime expected_interval;
    logic expected_valid;
  } ypu_syndram_timing_start_t;

  function automatic ypu_syndram_timing_start_t ypu_syndram_timing_start_zero();
    ypu_syndram_timing_start_t start;
    start.valid = 1'b0;
    start.start_time = 0.0;
    start.start_event = syndram_cmd_event_zero();
    start.expected_interval = 0.0;
    start.expected_valid = 1'b0;
    return start;
  endfunction

  typedef struct {
    logic valid;
    realtime value;
  } ypu_syndram_realtime_result_t;

  // Canonical arithmetic in integer femtoseconds. Retained source timing
  // constants and quarter-CK quantities on the 1ps input grid are exactly
  // representable here. This is numerical representation, not timing slack.
  // 100ms = 1e14fs fits signed64 and the exact-integer range of real conversion.
  function automatic longint signed ypu_time_fs(input realtime value_ns);
    return longint'(value_ns * 1000000.0);
  endfunction

  function automatic realtime ypu_time_delta(input realtime later_ns,earlier_ns);
    return (ypu_time_fs(later_ns)-ypu_time_fs(earlier_ns))/1000000.0;
  endfunction

  function automatic realtime ypu_round_min_even(input realtime value_ns,nck_ns);
    longint signed value_fs,slot_fs,slots;
    value_fs=ypu_time_fs(value_ns);slot_fs=2*ypu_time_fs(nck_ns);
    if(slot_fs<=0) return 0.0;
    slots=value_fs/slot_fs;
    if(value_fs>0 && value_fs%slot_fs!=0) slots++;
    return (slots*slot_fs)/1000000.0;
  endfunction

  // Preserve nonzero margin signs even below a displayed ps/cycle bucket.
  function automatic longint signed ypu_margin_bucket(input realtime delta_ns,unit_ns);
    longint signed delta_fs,unit_fs,magnitude;
    delta_fs=ypu_time_fs(delta_ns);unit_fs=ypu_time_fs(unit_ns);
    if(unit_fs<=0 || delta_fs==0) return 0;
    magnitude=delta_fs<0 ? -delta_fs:delta_fs;
    magnitude=(magnitude+unit_fs-1)/unit_fs;
    return delta_fs<0 ? -magnitude:magnitude;
  endfunction

  typedef struct {
    logic valid;
    logic pass;
    realtime observed_interval;
    realtime expected_interval;
    realtime sample_time;
    syndram_cmd_event_t start_event;
    syndram_cmd_event_t end_event;
  } ypu_syndram_timing_interval_sample_t;

  function automatic ypu_syndram_timing_interval_sample_t ypu_syndram_timing_interval_sample_zero();
    ypu_syndram_timing_interval_sample_t sample;
    sample.valid = 1'b0;
    sample.pass = 1'b0;
    sample.observed_interval = 0.0;
    sample.expected_interval = 0.0;
    sample.sample_time = 0.0;
    sample.start_event = syndram_cmd_event_zero();
    sample.end_event = syndram_cmd_event_zero();
    return sample;
  endfunction

  typedef struct {
    logic valid;
    syndram_cmd_event_t previous;
    syndram_cmd_event_t current;
    realtime previous_time;
    realtime current_time;
  } ypu_syndram_cmd_pair_t;

  function automatic ypu_syndram_cmd_pair_t ypu_syndram_cmd_pair_zero();
    ypu_syndram_cmd_pair_t pair;
    pair.valid = 1'b0;
    pair.previous = syndram_cmd_event_zero();
    pair.current = syndram_cmd_event_zero();
    pair.previous_time = 0.0;
    pair.current_time = 0.0;
    return pair;
  endfunction

  typedef struct {
    logic valid;
    syndram_cmd_event_t ev0;
    syndram_cmd_event_t ev1;
    syndram_cmd_event_t ev2;
    realtime time0;
    realtime time1;
    realtime time2;
  } ypu_syndram_cmd_tuple3_t;

  function automatic ypu_syndram_cmd_tuple3_t ypu_syndram_cmd_tuple3_zero();
    ypu_syndram_cmd_tuple3_t tuple3;
    tuple3.valid = 1'b0;
    tuple3.ev0 = syndram_cmd_event_zero();
    tuple3.ev1 = syndram_cmd_event_zero();
    tuple3.ev2 = syndram_cmd_event_zero();
    tuple3.time0 = 0.0;
    tuple3.time1 = 0.0;
    tuple3.time2 = 0.0;
    return tuple3;
  endfunction

endpackage : syndram_sample_pkg
