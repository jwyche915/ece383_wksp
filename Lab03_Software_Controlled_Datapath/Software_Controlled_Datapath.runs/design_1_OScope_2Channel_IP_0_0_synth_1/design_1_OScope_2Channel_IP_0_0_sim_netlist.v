// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Mar 14 21:09:26 2026
// Host        : WycheSurfacePro running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_OScope_2Channel_IP_0_0_sim_netlist.v
// Design      : design_1_OScope_2Channel_IP_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Audio_Codec_Wrapper
   (ac_mclk,
    BCLK_int_reg,
    LRCLK_reg,
    E,
    s00_axi_aresetn_0,
    \slv_reg10_reg[0] ,
    ac_dac_sdata,
    D,
    \D_R_O_int_reg[23] ,
    scl,
    sda,
    s00_axi_aresetn,
    s00_axi_aclk,
    SR,
    process_Q_reg,
    flagQ,
    Q,
    \Data_Out_int_reg[30] ,
    ac_adc_sdata,
    switch,
    lopt);
  output ac_mclk;
  output BCLK_int_reg;
  output LRCLK_reg;
  output [0:0]E;
  output [0:0]s00_axi_aresetn_0;
  output \slv_reg10_reg[0] ;
  output ac_dac_sdata;
  output [17:0]D;
  output [17:0]\D_R_O_int_reg[23] ;
  inout scl;
  inout sda;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [0:0]SR;
  input [0:0]process_Q_reg;
  input flagQ;
  input [17:0]Q;
  input [17:0]\Data_Out_int_reg[30] ;
  input ac_adc_sdata;
  input [0:0]switch;
  output lopt;

  wire BCLK_int_reg;
  wire [17:0]D;
  wire [15:0]DO;
  wire [17:0]\D_R_O_int_reg[23] ;
  wire [17:0]\Data_Out_int_reg[30] ;
  wire [0:0]E;
  wire LRCLK_reg;
  wire [17:0]Q;
  wire [0:0]SR;
  wire ac_adc_sdata;
  wire ac_dac_sdata;
  wire [2:0]ac_lrclk_count__0;
  wire ac_lrclk_sig_prev_reg_n_0;
  wire ac_mclk;
  wire audio_inout_n_2;
  wire audio_inout_n_3;
  wire audio_inout_n_4;
  wire audio_inout_n_5;
  wire audio_inout_n_6;
  wire clk_50;
  wire \count[9]_i_2_n_0 ;
  wire [9:0]count_reg;
  wire flagQ;
  wire lopt;
  wire [9:0]plusOp;
  wire [0:0]process_Q_reg;
  wire [17:2]readR;
  wire ready_sig_i_2_n_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [0:0]s00_axi_aresetn_0;
  wire scl;
  wire sda;
  wire \slv_reg10_reg[0] ;
  wire [0:0]switch;

  FDRE \ac_lrclk_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(audio_inout_n_5),
        .Q(ac_lrclk_count__0[0]),
        .R(1'b0));
  FDRE \ac_lrclk_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(audio_inout_n_6),
        .Q(ac_lrclk_count__0[1]),
        .R(1'b0));
  FDRE \ac_lrclk_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(audio_inout_n_4),
        .Q(ac_lrclk_count__0[2]),
        .R(1'b0));
  FDRE ac_lrclk_sig_prev_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(audio_inout_n_2),
        .Q(ac_lrclk_sig_prev_reg_n_0),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_ctl audio_inout
       (.BCLK_int_reg_0(BCLK_int_reg),
        .D(D),
        .DOADO(DO),
        .\D_R_O_int_reg[23]_0 (\D_R_O_int_reg[23] ),
        .\Data_Out_int_reg[30]_0 (\Data_Out_int_reg[30] ),
        .LRCLK_reg_0(LRCLK_reg),
        .Q(Q),
        .SR(SR),
        .ac_adc_sdata(ac_adc_sdata),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_lrclk_count__0(ac_lrclk_count__0),
        .\ac_lrclk_count_reg[2] (audio_inout_n_3),
        .\ac_lrclk_count_reg[2]_0 (ac_lrclk_sig_prev_reg_n_0),
        .ac_lrclk_sig_prev_reg(audio_inout_n_2),
        .\ch2_reg[to_ac][17] (readR),
        .ready_sig_reg(ready_sig_i_2_n_0),
        .ready_sig_reg_0(E),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(audio_inout_n_4),
        .s00_axi_aresetn_1(audio_inout_n_5),
        .s00_axi_aresetn_2(audio_inout_n_6),
        .switch(switch));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1 audiocodec_master_clock
       (.clk_in1(s00_axi_aclk),
        .clk_out1(ac_mclk),
        .clk_out2(clk_50),
        .lopt(lopt),
        .resetn(s00_axi_aresetn));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ch1[incoming_sample][15]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(E),
        .O(s00_axi_aresetn_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(count_reg[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .I5(count_reg[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_1 
       (.I0(\count[9]_i_2_n_0 ),
        .I1(count_reg[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \count[7]_i_1 
       (.I0(count_reg[6]),
        .I1(\count[9]_i_2_n_0 ),
        .I2(count_reg[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \count[8]_i_1 
       (.I0(count_reg[7]),
        .I1(\count[9]_i_2_n_0 ),
        .I2(count_reg[6]),
        .I3(count_reg[8]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \count[9]_i_1 
       (.I0(count_reg[8]),
        .I1(count_reg[6]),
        .I2(\count[9]_i_2_n_0 ),
        .I3(count_reg[7]),
        .I4(count_reg[9]),
        .O(plusOp[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \count[9]_i_2 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .I5(count_reg[5]),
        .O(\count[9]_i_2_n_0 ));
  FDRE \count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[0]),
        .Q(count_reg[0]),
        .R(SR));
  FDRE \count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[1]),
        .Q(count_reg[1]),
        .R(SR));
  FDRE \count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[2]),
        .Q(count_reg[2]),
        .R(SR));
  FDRE \count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[3]),
        .Q(count_reg[3]),
        .R(SR));
  FDRE \count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[4]),
        .Q(count_reg[4]),
        .R(SR));
  FDRE \count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[5]),
        .Q(count_reg[5]),
        .R(SR));
  FDRE \count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[6]),
        .Q(count_reg[6]),
        .R(SR));
  FDRE \count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[7]),
        .Q(count_reg[7]),
        .R(SR));
  FDRE \count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[8]),
        .Q(count_reg[8]),
        .R(SR));
  FDRE \count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[9]),
        .Q(count_reg[9]),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_init initialize_audio
       (.CLK(clk_50),
        .SR(SR),
        .s00_axi_aresetn(s00_axi_aresetn),
        .scl(scl),
        .sda(sda));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO leftChannelMemory
       (.DOADO(DO),
        .Q(count_reg),
        .SR(SR),
        .s00_axi_aclk(s00_axi_aclk));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    process_Q_i_1
       (.I0(process_Q_reg),
        .I1(E),
        .I2(flagQ),
        .O(\slv_reg10_reg[0] ));
  LUT2 #(
    .INIT(4'h7)) 
    ready_sig_i_2
       (.I0(ac_lrclk_count__0[0]),
        .I1(ac_lrclk_count__0[1]),
        .O(ready_sig_i_2_n_0));
  FDRE ready_sig_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(audio_inout_n_3),
        .Q(E),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized0 rightChannelMemory
       (.Q(count_reg),
        .SR(SR),
        .s00_axi_aclk(s00_axi_aclk),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_0 (readR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OScope_2Channel_IP
   (ac_mclk,
    ac_dac_sdata,
    LRCLK_reg,
    BCLK_int_reg,
    tmds,
    tmdsb,
    flagQ,
    axi_awready_reg,
    axi_rvalid_reg,
    axi_arready_reg,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    scl,
    sda,
    s00_axi_aresetn,
    s00_axi_aclk,
    ac_adc_sdata,
    switch,
    btn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_rready,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb,
    s00_axi_bready);
  output ac_mclk;
  output ac_dac_sdata;
  output LRCLK_reg;
  output BCLK_int_reg;
  output [3:0]tmds;
  output [3:0]tmdsb;
  output flagQ;
  output axi_awready_reg;
  output axi_rvalid_reg;
  output axi_arready_reg;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  inout scl;
  inout sda;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input ac_adc_sdata;
  input [3:0]switch;
  input [3:0]btn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_rready;
  input s00_axi_arvalid;
  input [4:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [4:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;

  wire BCLK_int_reg;
  wire LRCLK_reg;
  wire OScope_2Channel_IP_slave_lite_v1_0_S00_AXI_inst_n_43;
  wire OScope_2Channel_IP_slave_lite_v1_0_S00_AXI_inst_n_5;
  wire OScope_2Channel_IP_slave_lite_v1_0_S00_AXI_inst_n_6;
  wire ac_adc_sdata;
  wire ac_dac_sdata;
  wire ac_mclk;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg;
  wire axi_wready;
  wire axi_wready_i_1_n_0;
  wire [3:0]btn;
  wire flagQ;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire scl;
  wire sda;
  wire [1:0]state_read;
  wire [3:0]switch;
  wire [3:0]tmds;
  wire [3:0]tmdsb;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OScope_2Channel_IP_slave_lite_v1_0_S00_AXI OScope_2Channel_IP_slave_lite_v1_0_S00_AXI_inst
       (.BCLK_int_reg(BCLK_int_reg),
        .\FSM_onehot_state_write_reg[1]_0 (OScope_2Channel_IP_slave_lite_v1_0_S00_AXI_inst_n_5),
        .\FSM_onehot_state_write_reg[2]_0 (OScope_2Channel_IP_slave_lite_v1_0_S00_AXI_inst_n_6),
        .\FSM_onehot_state_write_reg[2]_1 (OScope_2Channel_IP_slave_lite_v1_0_S00_AXI_inst_n_43),
        .LRCLK_reg(LRCLK_reg),
        .ac_adc_sdata(ac_adc_sdata),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_mclk(ac_mclk),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_arready_reg_1(axi_arready_i_1_n_0),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_awready_reg_1(axi_awready_i_1_n_0),
        .axi_bvalid_reg_0(axi_bvalid_i_1_n_0),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_rvalid_reg_1(axi_rvalid_i_1_n_0),
        .axi_wready(axi_wready),
        .axi_wready_reg_0(axi_wready_i_1_n_0),
        .btn(btn),
        .flagQ(flagQ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .scl(scl),
        .sda(sda),
        .state_read(state_read),
        .switch(switch),
        .tmds(tmds),
        .tmdsb(tmdsb));
  LUT6 #(
    .INIT(64'hFF55FFFF40554055)) 
    axi_arready_i_1
       (.I0(state_read[0]),
        .I1(s00_axi_rready),
        .I2(axi_rvalid_reg),
        .I3(state_read[1]),
        .I4(s00_axi_arvalid),
        .I5(axi_arready_reg),
        .O(axi_arready_i_1_n_0));
  LUT6 #(
    .INIT(64'hEEFFEAEAFFFFEAEA)) 
    axi_awready_i_1
       (.I0(axi_wready),
        .I1(s00_axi_wvalid),
        .I2(OScope_2Channel_IP_slave_lite_v1_0_S00_AXI_inst_n_6),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg),
        .I5(OScope_2Channel_IP_slave_lite_v1_0_S00_AXI_inst_n_5),
        .O(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFABFF0000)) 
    axi_bvalid_i_1
       (.I0(axi_wready),
        .I1(OScope_2Channel_IP_slave_lite_v1_0_S00_AXI_inst_n_6),
        .I2(OScope_2Channel_IP_slave_lite_v1_0_S00_AXI_inst_n_5),
        .I3(s00_axi_bready),
        .I4(s00_axi_bvalid),
        .I5(OScope_2Channel_IP_slave_lite_v1_0_S00_AXI_inst_n_43),
        .O(axi_bvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hA2A2A2A2FAAAAAAA)) 
    axi_rvalid_i_1
       (.I0(axi_rvalid_reg),
        .I1(s00_axi_rready),
        .I2(state_read[0]),
        .I3(axi_arready_reg),
        .I4(s00_axi_arvalid),
        .I5(state_read[1]),
        .O(axi_rvalid_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    axi_wready_i_1
       (.I0(axi_wready),
        .I1(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OScope_2Channel_IP_slave_lite_v1_0_S00_AXI
   (s00_axi_bvalid,
    axi_awready_reg_0,
    s00_axi_wready,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    \FSM_onehot_state_write_reg[1]_0 ,
    \FSM_onehot_state_write_reg[2]_0 ,
    axi_wready,
    state_read,
    s00_axi_rdata,
    flagQ,
    \FSM_onehot_state_write_reg[2]_1 ,
    ac_mclk,
    ac_dac_sdata,
    LRCLK_reg,
    BCLK_int_reg,
    tmds,
    tmdsb,
    scl,
    sda,
    axi_bvalid_reg_0,
    s00_axi_aclk,
    axi_awready_reg_1,
    axi_wready_reg_0,
    axi_rvalid_reg_1,
    axi_arready_reg_1,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_rready,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb,
    ac_adc_sdata,
    switch,
    btn);
  output s00_axi_bvalid;
  output axi_awready_reg_0;
  output s00_axi_wready;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output \FSM_onehot_state_write_reg[1]_0 ;
  output \FSM_onehot_state_write_reg[2]_0 ;
  output axi_wready;
  output [1:0]state_read;
  output [31:0]s00_axi_rdata;
  output flagQ;
  output \FSM_onehot_state_write_reg[2]_1 ;
  output ac_mclk;
  output ac_dac_sdata;
  output LRCLK_reg;
  output BCLK_int_reg;
  output [3:0]tmds;
  output [3:0]tmdsb;
  inout scl;
  inout sda;
  input axi_bvalid_reg_0;
  input s00_axi_aclk;
  input axi_awready_reg_1;
  input axi_wready_reg_0;
  input axi_rvalid_reg_1;
  input axi_arready_reg_1;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_rready;
  input s00_axi_arvalid;
  input [4:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [4:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;
  input ac_adc_sdata;
  input [3:0]switch;
  input [3:0]btn;

  wire BCLK_int_reg;
  wire \FSM_onehot_state_write[1]_i_1_n_0 ;
  wire \FSM_onehot_state_write[2]_i_1_n_0 ;
  wire \FSM_onehot_state_write_reg[1]_0 ;
  wire \FSM_onehot_state_write_reg[2]_0 ;
  wire \FSM_onehot_state_write_reg[2]_1 ;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire LRCLK_reg;
  wire [14:0]Lbus_out;
  wire [14:0]Rbus_out;
  wire WREN;
  wire ac_adc_sdata;
  wire ac_dac_sdata;
  wire ac_mclk;
  wire \axi_araddr[6]_i_1_n_0 ;
  wire \axi_araddr_reg[2]_rep_n_0 ;
  wire \axi_araddr_reg[3]_rep_n_0 ;
  wire axi_arready_reg_0;
  wire axi_arready_reg_1;
  wire \axi_awaddr[6]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire \axi_awaddr_reg_n_0_[5] ;
  wire \axi_awaddr_reg_n_0_[6] ;
  wire axi_awready_reg_0;
  wire axi_awready_reg_1;
  wire axi_bvalid_reg_0;
  wire axi_rvalid_reg_0;
  wire axi_rvalid_reg_1;
  wire axi_wready;
  wire axi_wready_reg_0;
  wire [3:0]btn;
  wire control_n_0;
  wire control_n_1;
  wire datapath_n_12;
  wire datapath_n_40;
  wire datapath_n_56;
  wire datapath_n_57;
  wire flagQ;
  wire [5:3]mem_logic;
  wire [31:7]p_1_in;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_12_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_12_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_12_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_12_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_12_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_12_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_12_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_12_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_12_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_12_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_12_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_9_n_0 ;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire scl;
  wire sda;
  wire [4:0]sel0;
  wire [9:0]slv_reg0;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[31]_i_3_n_0 ;
  wire [31:10]slv_reg0__0;
  wire [0:0]slv_reg1;
  wire [0:0]slv_reg10;
  wire \slv_reg10[15]_i_1_n_0 ;
  wire \slv_reg10[23]_i_1_n_0 ;
  wire \slv_reg10[31]_i_1_n_0 ;
  wire \slv_reg10[31]_i_2_n_0 ;
  wire \slv_reg10[7]_i_1_n_0 ;
  wire [31:1]slv_reg10__0;
  wire [31:0]slv_reg13;
  wire \slv_reg13[15]_i_1_n_0 ;
  wire \slv_reg13[23]_i_1_n_0 ;
  wire \slv_reg13[31]_i_1_n_0 ;
  wire \slv_reg13[31]_i_2_n_0 ;
  wire \slv_reg13[7]_i_1_n_0 ;
  wire [31:0]slv_reg14;
  wire \slv_reg14[15]_i_1_n_0 ;
  wire \slv_reg14[23]_i_1_n_0 ;
  wire \slv_reg14[31]_i_1_n_0 ;
  wire \slv_reg14[31]_i_2_n_0 ;
  wire \slv_reg14[7]_i_1_n_0 ;
  wire [31:0]slv_reg15;
  wire \slv_reg15[15]_i_1_n_0 ;
  wire \slv_reg15[23]_i_1_n_0 ;
  wire \slv_reg15[31]_i_1_n_0 ;
  wire \slv_reg15[31]_i_2_n_0 ;
  wire \slv_reg15[7]_i_1_n_0 ;
  wire [31:0]slv_reg16;
  wire \slv_reg16[15]_i_1_n_0 ;
  wire \slv_reg16[15]_i_2_n_0 ;
  wire \slv_reg16[23]_i_1_n_0 ;
  wire \slv_reg16[23]_i_2_n_0 ;
  wire \slv_reg16[31]_i_1_n_0 ;
  wire \slv_reg16[31]_i_2_n_0 ;
  wire \slv_reg16[7]_i_1_n_0 ;
  wire \slv_reg16[7]_i_2_n_0 ;
  wire [31:0]slv_reg17;
  wire \slv_reg17[15]_i_1_n_0 ;
  wire \slv_reg17[23]_i_1_n_0 ;
  wire \slv_reg17[31]_i_1_n_0 ;
  wire \slv_reg17[31]_i_2_n_0 ;
  wire \slv_reg17[7]_i_1_n_0 ;
  wire [31:0]slv_reg18;
  wire \slv_reg18[15]_i_1_n_0 ;
  wire \slv_reg18[15]_i_2_n_0 ;
  wire \slv_reg18[23]_i_1_n_0 ;
  wire \slv_reg18[23]_i_2_n_0 ;
  wire \slv_reg18[31]_i_1_n_0 ;
  wire \slv_reg18[31]_i_2_n_0 ;
  wire \slv_reg18[7]_i_1_n_0 ;
  wire \slv_reg18[7]_i_2_n_0 ;
  wire [31:0]slv_reg19;
  wire \slv_reg19[15]_i_1_n_0 ;
  wire \slv_reg19[23]_i_1_n_0 ;
  wire \slv_reg19[31]_i_1_n_0 ;
  wire \slv_reg19[7]_i_1_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[31]_i_2_n_0 ;
  wire \slv_reg1[31]_i_3_n_0 ;
  wire \slv_reg1[31]_i_4_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:1]slv_reg1__0;
  wire [31:0]slv_reg2;
  wire [31:0]slv_reg20;
  wire \slv_reg20[15]_i_1_n_0 ;
  wire \slv_reg20[23]_i_1_n_0 ;
  wire \slv_reg20[31]_i_1_n_0 ;
  wire \slv_reg20[31]_i_2_n_0 ;
  wire \slv_reg20[7]_i_1_n_0 ;
  wire [31:0]slv_reg21;
  wire \slv_reg21[15]_i_1_n_0 ;
  wire \slv_reg21[23]_i_1_n_0 ;
  wire \slv_reg21[31]_i_1_n_0 ;
  wire \slv_reg21[31]_i_2_n_0 ;
  wire \slv_reg21[31]_i_3_n_0 ;
  wire \slv_reg21[7]_i_1_n_0 ;
  wire [31:0]slv_reg22;
  wire \slv_reg22[15]_i_1_n_0 ;
  wire \slv_reg22[23]_i_1_n_0 ;
  wire \slv_reg22[31]_i_1_n_0 ;
  wire \slv_reg22[7]_i_1_n_0 ;
  wire [31:0]slv_reg23;
  wire \slv_reg23[15]_i_1_n_0 ;
  wire \slv_reg23[23]_i_1_n_0 ;
  wire \slv_reg23[31]_i_1_n_0 ;
  wire \slv_reg23[7]_i_1_n_0 ;
  wire [31:0]slv_reg24;
  wire \slv_reg24[15]_i_1_n_0 ;
  wire \slv_reg24[23]_i_1_n_0 ;
  wire \slv_reg24[31]_i_1_n_0 ;
  wire \slv_reg24[7]_i_1_n_0 ;
  wire [31:0]slv_reg25;
  wire \slv_reg25[15]_i_1_n_0 ;
  wire \slv_reg25[23]_i_1_n_0 ;
  wire \slv_reg25[31]_i_1_n_0 ;
  wire \slv_reg25[31]_i_2_n_0 ;
  wire \slv_reg25[7]_i_1_n_0 ;
  wire [31:0]slv_reg26;
  wire \slv_reg26[15]_i_1_n_0 ;
  wire \slv_reg26[23]_i_1_n_0 ;
  wire \slv_reg26[31]_i_1_n_0 ;
  wire \slv_reg26[7]_i_1_n_0 ;
  wire [31:0]slv_reg27;
  wire \slv_reg27[15]_i_1_n_0 ;
  wire \slv_reg27[23]_i_1_n_0 ;
  wire \slv_reg27[31]_i_1_n_0 ;
  wire \slv_reg27[7]_i_1_n_0 ;
  wire [31:0]slv_reg28;
  wire \slv_reg28[15]_i_1_n_0 ;
  wire \slv_reg28[23]_i_1_n_0 ;
  wire \slv_reg28[31]_i_1_n_0 ;
  wire \slv_reg28[7]_i_1_n_0 ;
  wire [31:0]slv_reg29;
  wire \slv_reg29[15]_i_1_n_0 ;
  wire \slv_reg29[23]_i_1_n_0 ;
  wire \slv_reg29[31]_i_1_n_0 ;
  wire \slv_reg29[7]_i_1_n_0 ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[31]_i_2_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire [31:0]slv_reg30;
  wire \slv_reg30[15]_i_1_n_0 ;
  wire \slv_reg30[23]_i_1_n_0 ;
  wire \slv_reg30[31]_i_1_n_0 ;
  wire \slv_reg30[7]_i_1_n_0 ;
  wire [31:0]slv_reg31;
  wire \slv_reg31[15]_i_1_n_0 ;
  wire \slv_reg31[23]_i_1_n_0 ;
  wire \slv_reg31[31]_i_1_n_0 ;
  wire \slv_reg31[7]_i_1_n_0 ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[31]_i_2_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[31]_i_2_n_0 ;
  wire \slv_reg4[31]_i_3_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire [15:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[15]_i_2_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[23]_i_2_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[31]_i_2_n_0 ;
  wire \slv_reg7[31]_i_3_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire \slv_reg7[7]_i_2_n_0 ;
  wire [31:16]slv_reg7__0;
  wire [15:0]slv_reg8;
  wire \slv_reg8[15]_i_1_n_0 ;
  wire \slv_reg8[23]_i_1_n_0 ;
  wire \slv_reg8[31]_i_1_n_0 ;
  wire \slv_reg8[31]_i_2_n_0 ;
  wire \slv_reg8[7]_i_1_n_0 ;
  wire [31:16]slv_reg8__0;
  wire [1:0]state_read;
  wire [1:0]sw;
  wire [3:0]switch;
  wire [3:0]tmds;
  wire [3:0]tmdsb;
  wire [10:1]trig_time;
  wire \trig_v_detect/p_0_in ;
  wire [10:1]trig_volt;

  LUT6 #(
    .INIT(64'hFFFFFFFFF7F0F700)) 
    \FSM_onehot_state_write[1]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg[1]_0 ),
        .I4(\FSM_onehot_state_write_reg[2]_0 ),
        .I5(axi_wready),
        .O(\FSM_onehot_state_write[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h0F0F0800)) 
    \FSM_onehot_state_write[2]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg[1]_0 ),
        .I4(\FSM_onehot_state_write_reg[2]_0 ),
        .O(\FSM_onehot_state_write[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(axi_wready),
        .S(\trig_v_detect/p_0_in ));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_write_reg[1]_0 ),
        .R(\trig_v_detect/p_0_in ));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_write_reg[2]_0 ),
        .R(\trig_v_detect/p_0_in ));
  LUT6 #(
    .INIT(64'hFFFF88880FFFFFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(s00_axi_rready),
        .I1(axi_rvalid_reg_0),
        .I2(s00_axi_arvalid),
        .I3(axi_arready_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7777F0000000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(axi_rvalid_reg_0),
        .I1(s00_axi_rready),
        .I2(axi_arready_reg_0),
        .I3(s00_axi_arvalid),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00,rdata:10,raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(\trig_v_detect/p_0_in ));
  (* FSM_ENCODED_STATES = "idle:00,rdata:10,raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(\trig_v_detect/p_0_in ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \axi_araddr[6]_i_1 
       (.I0(state_read[0]),
        .I1(s00_axi_aresetn),
        .I2(state_read[1]),
        .I3(s00_axi_arvalid),
        .I4(axi_arready_reg_0),
        .O(\axi_araddr[6]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "axi_araddr_reg[2]" *) 
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[6]_i_1_n_0 ),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "axi_araddr_reg[2]" *) 
  FDRE \axi_araddr_reg[2]_rep 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[6]_i_1_n_0 ),
        .D(s00_axi_araddr[0]),
        .Q(\axi_araddr_reg[2]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "axi_araddr_reg[3]" *) 
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[6]_i_1_n_0 ),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "axi_araddr_reg[3]" *) 
  FDRE \axi_araddr_reg[3]_rep 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[6]_i_1_n_0 ),
        .D(s00_axi_araddr[1]),
        .Q(\axi_araddr_reg[3]_rep_n_0 ),
        .R(1'b0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[6]_i_1_n_0 ),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[6]_i_1_n_0 ),
        .D(s00_axi_araddr[3]),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE \axi_araddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[6]_i_1_n_0 ),
        .D(s00_axi_araddr[4]),
        .Q(sel0[4]),
        .R(1'b0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_reg_1),
        .Q(axi_arready_reg_0),
        .R(\trig_v_detect/p_0_in ));
  LUT4 #(
    .INIT(16'h8000)) 
    \axi_awaddr[6]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\FSM_onehot_state_write_reg[1]_0 ),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_awvalid),
        .O(\axi_awaddr[6]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[6]_i_1_n_0 ),
        .D(s00_axi_awaddr[0]),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[6]_i_1_n_0 ),
        .D(s00_axi_awaddr[1]),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[6]_i_1_n_0 ),
        .D(s00_axi_awaddr[2]),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[6]_i_1_n_0 ),
        .D(s00_axi_awaddr[3]),
        .Q(\axi_awaddr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \axi_awaddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[6]_i_1_n_0 ),
        .D(s00_axi_awaddr[4]),
        .Q(\axi_awaddr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_reg_1),
        .Q(axi_awready_reg_0),
        .R(\trig_v_detect/p_0_in ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    axi_bvalid_i_2
       (.I0(\FSM_onehot_state_write_reg[2]_0 ),
        .I1(\FSM_onehot_state_write_reg[1]_0 ),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\FSM_onehot_state_write_reg[2]_1 ));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(s00_axi_bvalid),
        .R(\trig_v_detect/p_0_in ));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_reg_1),
        .Q(axi_rvalid_reg_0),
        .R(\trig_v_detect/p_0_in ));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_reg_0),
        .Q(s00_axi_wready),
        .R(\trig_v_detect/p_0_in ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lab2_fsm control
       (.CO(datapath_n_56),
        .\FSM_onehot_state_reg[2]_0 (control_n_0),
        .\FSM_onehot_state_reg[2]_1 (datapath_n_57),
        .Q(slv_reg1),
        .SR(\trig_v_detect/p_0_in ),
        .SS(control_n_1),
        .WREN(WREN),
        .s00_axi_aclk(s00_axi_aclk),
        .sw(sw),
        .switch(switch[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lab2_datapath datapath
       (.BCLK_int_reg(BCLK_int_reg),
        .CO(datapath_n_56),
        .E(control_n_0),
        .LRCLK_reg(LRCLK_reg),
        .Q({datapath_n_12,Lbus_out}),
        .SR(\trig_v_detect/p_0_in ),
        .SS(control_n_1),
        .WREN(WREN),
        .ac_adc_sdata(ac_adc_sdata),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_mclk(ac_mclk),
        .btn(btn),
        .\ch2_reg[incoming_sample][15]_0 ({datapath_n_40,Rbus_out}),
        .flagQ(flagQ),
        .process_Q_reg(slv_reg10),
        .\process_q_reg[10] (trig_time),
        .\process_q_reg[9] (datapath_n_57),
        .q(trig_volt),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .scl(scl),
        .sda(sda),
        .\sdp_bl.ramb18_dp_bl.ram18_bl (slv_reg7),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_0 (slv_reg8),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_1 (slv_reg0),
        .sw(sw),
        .switch(switch),
        .tmds(tmds),
        .tmdsb(tmdsb));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[0]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[0]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[0]));
  MUXF7 \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(\s00_axi_rdata[0]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[0]_INST_0_i_10 
       (.I0(slv_reg15[0]),
        .I1(slv_reg14[0]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg13[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_11 
       (.I0(slv_reg3[0]),
        .I1(slv_reg2[0]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg1),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg0[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_12 
       (.I0(slv_reg7[0]),
        .I1(Rbus_out[0]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(Lbus_out[0]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_12_n_0 ));
  MUXF7 \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(\s00_axi_rdata[0]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[0]_INST_0_i_3 
       (.I0(\s00_axi_rdata[0]_INST_0_i_9_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[0]_INST_0_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[0]_INST_0_i_4 
       (.I0(\s00_axi_rdata[0]_INST_0_i_11_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_12_n_0 ),
        .O(\s00_axi_rdata[0]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_5 
       (.I0(slv_reg27[0]),
        .I1(slv_reg26[0]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[0]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_6 
       (.I0(slv_reg31[0]),
        .I1(slv_reg30[0]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[0]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_7 
       (.I0(slv_reg19[0]),
        .I1(slv_reg18[0]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[0]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_8 
       (.I0(slv_reg23[0]),
        .I1(slv_reg22[0]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[0]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[0]_INST_0_i_9 
       (.I0(slv_reg10),
        .I1(\axi_araddr_reg[3]_rep_n_0 ),
        .I2(flagQ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg8[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[10]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[10]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[10]));
  MUXF7 \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(\s00_axi_rdata[10]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_10 
       (.I0(slv_reg15[10]),
        .I1(slv_reg14[10]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg13[10]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_time[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_11 
       (.I0(slv_reg3[10]),
        .I1(slv_reg2[10]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg1__0[10]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg0__0[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_12 
       (.I0(slv_reg7[10]),
        .I1(Rbus_out[10]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(Lbus_out[10]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_12_n_0 ));
  MUXF7 \s00_axi_rdata[10]_INST_0_i_2 
       (.I0(\s00_axi_rdata[10]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[10]_INST_0_i_3 
       (.I0(\s00_axi_rdata[10]_INST_0_i_9_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[10]_INST_0_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[10]_INST_0_i_4 
       (.I0(\s00_axi_rdata[10]_INST_0_i_11_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_12_n_0 ),
        .O(\s00_axi_rdata[10]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_5 
       (.I0(slv_reg27[10]),
        .I1(slv_reg26[10]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[10]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_6 
       (.I0(slv_reg31[10]),
        .I1(slv_reg30[10]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[10]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_7 
       (.I0(slv_reg19[10]),
        .I1(slv_reg18[10]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[10]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_8 
       (.I0(slv_reg23[10]),
        .I1(slv_reg22[10]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[10]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[10]_INST_0_i_9 
       (.I0(trig_volt[10]),
        .I1(slv_reg10__0[10]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg8[10]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .O(\s00_axi_rdata[10]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[11]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[11]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[11]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[11]));
  MUXF7 \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(\s00_axi_rdata[11]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[11]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_10 
       (.I0(slv_reg3[11]),
        .I1(slv_reg2[11]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg1__0[11]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg0__0[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_11 
       (.I0(slv_reg7[11]),
        .I1(Rbus_out[11]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(Lbus_out[11]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_11_n_0 ));
  MUXF7 \s00_axi_rdata[11]_INST_0_i_2 
       (.I0(\s00_axi_rdata[11]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[11]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[11]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[11]_INST_0_i_3 
       (.I0(\s00_axi_rdata[11]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[11]),
        .I3(\axi_araddr_reg[3]_rep_n_0 ),
        .I4(slv_reg8[11]),
        .I5(\axi_araddr_reg[2]_rep_n_0 ),
        .O(\s00_axi_rdata[11]_INST_0_i_3_n_0 ));
  MUXF7 \s00_axi_rdata[11]_INST_0_i_4 
       (.I0(\s00_axi_rdata[11]_INST_0_i_10_n_0 ),
        .I1(\s00_axi_rdata[11]_INST_0_i_11_n_0 ),
        .O(\s00_axi_rdata[11]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_5 
       (.I0(slv_reg27[11]),
        .I1(slv_reg26[11]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[11]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_6 
       (.I0(slv_reg31[11]),
        .I1(slv_reg30[11]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[11]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_7 
       (.I0(slv_reg19[11]),
        .I1(slv_reg18[11]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[11]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_8 
       (.I0(slv_reg23[11]),
        .I1(slv_reg22[11]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[11]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[11]_INST_0_i_9 
       (.I0(slv_reg15[11]),
        .I1(slv_reg14[11]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg13[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[12]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[12]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[12]));
  MUXF7 \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(\s00_axi_rdata[12]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[12]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_10 
       (.I0(slv_reg3[12]),
        .I1(slv_reg2[12]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg1__0[12]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg0__0[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_11 
       (.I0(slv_reg7[12]),
        .I1(Rbus_out[12]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(Lbus_out[12]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_11_n_0 ));
  MUXF7 \s00_axi_rdata[12]_INST_0_i_2 
       (.I0(\s00_axi_rdata[12]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[12]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[12]_INST_0_i_3 
       (.I0(\s00_axi_rdata[12]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[12]),
        .I3(\axi_araddr_reg[3]_rep_n_0 ),
        .I4(slv_reg8[12]),
        .I5(\axi_araddr_reg[2]_rep_n_0 ),
        .O(\s00_axi_rdata[12]_INST_0_i_3_n_0 ));
  MUXF7 \s00_axi_rdata[12]_INST_0_i_4 
       (.I0(\s00_axi_rdata[12]_INST_0_i_10_n_0 ),
        .I1(\s00_axi_rdata[12]_INST_0_i_11_n_0 ),
        .O(\s00_axi_rdata[12]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_5 
       (.I0(slv_reg27[12]),
        .I1(slv_reg26[12]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[12]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_6 
       (.I0(slv_reg31[12]),
        .I1(slv_reg30[12]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[12]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_7 
       (.I0(slv_reg19[12]),
        .I1(slv_reg18[12]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[12]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_8 
       (.I0(slv_reg23[12]),
        .I1(slv_reg22[12]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[12]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[12]_INST_0_i_9 
       (.I0(slv_reg15[12]),
        .I1(slv_reg14[12]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg13[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[13]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[13]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[13]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[13]));
  MUXF7 \s00_axi_rdata[13]_INST_0_i_1 
       (.I0(\s00_axi_rdata[13]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[13]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_10 
       (.I0(slv_reg3[13]),
        .I1(slv_reg2[13]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg1__0[13]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg0__0[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_11 
       (.I0(slv_reg7[13]),
        .I1(Rbus_out[13]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(Lbus_out[13]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_11_n_0 ));
  MUXF7 \s00_axi_rdata[13]_INST_0_i_2 
       (.I0(\s00_axi_rdata[13]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[13]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[13]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[13]_INST_0_i_3 
       (.I0(\s00_axi_rdata[13]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[13]),
        .I3(\axi_araddr_reg[3]_rep_n_0 ),
        .I4(slv_reg8[13]),
        .I5(\axi_araddr_reg[2]_rep_n_0 ),
        .O(\s00_axi_rdata[13]_INST_0_i_3_n_0 ));
  MUXF7 \s00_axi_rdata[13]_INST_0_i_4 
       (.I0(\s00_axi_rdata[13]_INST_0_i_10_n_0 ),
        .I1(\s00_axi_rdata[13]_INST_0_i_11_n_0 ),
        .O(\s00_axi_rdata[13]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_5 
       (.I0(slv_reg27[13]),
        .I1(slv_reg26[13]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[13]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_6 
       (.I0(slv_reg31[13]),
        .I1(slv_reg30[13]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[13]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_7 
       (.I0(slv_reg19[13]),
        .I1(slv_reg18[13]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[13]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_8 
       (.I0(slv_reg23[13]),
        .I1(slv_reg22[13]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[13]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[13]_INST_0_i_9 
       (.I0(slv_reg15[13]),
        .I1(slv_reg14[13]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg13[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[14]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[14]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[14]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[14]));
  MUXF7 \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(\s00_axi_rdata[14]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[14]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_10 
       (.I0(slv_reg3[14]),
        .I1(slv_reg2[14]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg1__0[14]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg0__0[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_11 
       (.I0(slv_reg7[14]),
        .I1(Rbus_out[14]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(Lbus_out[14]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_11_n_0 ));
  MUXF7 \s00_axi_rdata[14]_INST_0_i_2 
       (.I0(\s00_axi_rdata[14]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[14]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[14]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[14]_INST_0_i_3 
       (.I0(\s00_axi_rdata[14]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[14]),
        .I3(\axi_araddr_reg[3]_rep_n_0 ),
        .I4(slv_reg8[14]),
        .I5(\axi_araddr_reg[2]_rep_n_0 ),
        .O(\s00_axi_rdata[14]_INST_0_i_3_n_0 ));
  MUXF7 \s00_axi_rdata[14]_INST_0_i_4 
       (.I0(\s00_axi_rdata[14]_INST_0_i_10_n_0 ),
        .I1(\s00_axi_rdata[14]_INST_0_i_11_n_0 ),
        .O(\s00_axi_rdata[14]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_5 
       (.I0(slv_reg27[14]),
        .I1(slv_reg26[14]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[14]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_6 
       (.I0(slv_reg31[14]),
        .I1(slv_reg30[14]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[14]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_7 
       (.I0(slv_reg19[14]),
        .I1(slv_reg18[14]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[14]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_8 
       (.I0(slv_reg23[14]),
        .I1(slv_reg22[14]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[14]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[14]_INST_0_i_9 
       (.I0(slv_reg15[14]),
        .I1(slv_reg14[14]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg13[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[15]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[15]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[15]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[15]));
  MUXF7 \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(\s00_axi_rdata[15]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[15]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_10 
       (.I0(slv_reg3[15]),
        .I1(slv_reg2[15]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg1__0[15]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg0__0[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3F3FA0AF3030)) 
    \s00_axi_rdata[15]_INST_0_i_11 
       (.I0(slv_reg7[15]),
        .I1(datapath_n_40),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(datapath_n_12),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_11_n_0 ));
  MUXF7 \s00_axi_rdata[15]_INST_0_i_2 
       (.I0(\s00_axi_rdata[15]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[15]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[15]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[15]_INST_0_i_3 
       (.I0(\s00_axi_rdata[15]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[15]),
        .I3(\axi_araddr_reg[3]_rep_n_0 ),
        .I4(slv_reg8[15]),
        .I5(\axi_araddr_reg[2]_rep_n_0 ),
        .O(\s00_axi_rdata[15]_INST_0_i_3_n_0 ));
  MUXF7 \s00_axi_rdata[15]_INST_0_i_4 
       (.I0(\s00_axi_rdata[15]_INST_0_i_10_n_0 ),
        .I1(\s00_axi_rdata[15]_INST_0_i_11_n_0 ),
        .O(\s00_axi_rdata[15]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_5 
       (.I0(slv_reg27[15]),
        .I1(slv_reg26[15]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[15]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_6 
       (.I0(slv_reg31[15]),
        .I1(slv_reg30[15]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[15]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_7 
       (.I0(slv_reg19[15]),
        .I1(slv_reg18[15]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[15]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_8 
       (.I0(slv_reg23[15]),
        .I1(slv_reg22[15]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[15]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[15]_INST_0_i_9 
       (.I0(slv_reg15[15]),
        .I1(slv_reg14[15]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg13[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[16]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[16]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[16]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[16]));
  MUXF7 \s00_axi_rdata[16]_INST_0_i_1 
       (.I0(\s00_axi_rdata[16]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[16]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_10 
       (.I0(slv_reg3[16]),
        .I1(slv_reg2[16]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[16]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[16]_INST_0_i_2 
       (.I0(\s00_axi_rdata[16]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[16]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[16]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[16]_INST_0_i_3 
       (.I0(\s00_axi_rdata[16]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[16]),
        .I3(sel0[1]),
        .I4(slv_reg8__0[16]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[16]_INST_0_i_4 
       (.I0(slv_reg7__0[16]),
        .I1(sel0[1]),
        .I2(slv_reg4[16]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[16]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_5 
       (.I0(slv_reg27[16]),
        .I1(slv_reg26[16]),
        .I2(sel0[1]),
        .I3(slv_reg25[16]),
        .I4(sel0[0]),
        .I5(slv_reg24[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_6 
       (.I0(slv_reg31[16]),
        .I1(slv_reg30[16]),
        .I2(sel0[1]),
        .I3(slv_reg29[16]),
        .I4(sel0[0]),
        .I5(slv_reg28[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_7 
       (.I0(slv_reg19[16]),
        .I1(slv_reg18[16]),
        .I2(sel0[1]),
        .I3(slv_reg17[16]),
        .I4(sel0[0]),
        .I5(slv_reg16[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_8 
       (.I0(slv_reg23[16]),
        .I1(slv_reg22[16]),
        .I2(sel0[1]),
        .I3(slv_reg21[16]),
        .I4(sel0[0]),
        .I5(slv_reg20[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[16]_INST_0_i_9 
       (.I0(slv_reg15[16]),
        .I1(slv_reg14[16]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[17]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[17]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[17]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[17]));
  MUXF7 \s00_axi_rdata[17]_INST_0_i_1 
       (.I0(\s00_axi_rdata[17]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[17]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_10 
       (.I0(slv_reg3[17]),
        .I1(slv_reg2[17]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[17]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[17]_INST_0_i_2 
       (.I0(\s00_axi_rdata[17]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[17]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[17]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[17]_INST_0_i_3 
       (.I0(\s00_axi_rdata[17]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[17]),
        .I3(sel0[1]),
        .I4(slv_reg8__0[17]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[17]_INST_0_i_4 
       (.I0(slv_reg7__0[17]),
        .I1(sel0[1]),
        .I2(slv_reg4[17]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[17]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_5 
       (.I0(slv_reg27[17]),
        .I1(slv_reg26[17]),
        .I2(sel0[1]),
        .I3(slv_reg25[17]),
        .I4(sel0[0]),
        .I5(slv_reg24[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_6 
       (.I0(slv_reg31[17]),
        .I1(slv_reg30[17]),
        .I2(sel0[1]),
        .I3(slv_reg29[17]),
        .I4(sel0[0]),
        .I5(slv_reg28[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_7 
       (.I0(slv_reg19[17]),
        .I1(slv_reg18[17]),
        .I2(sel0[1]),
        .I3(slv_reg17[17]),
        .I4(sel0[0]),
        .I5(slv_reg16[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_8 
       (.I0(slv_reg23[17]),
        .I1(slv_reg22[17]),
        .I2(sel0[1]),
        .I3(slv_reg21[17]),
        .I4(sel0[0]),
        .I5(slv_reg20[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[17]_INST_0_i_9 
       (.I0(slv_reg15[17]),
        .I1(slv_reg14[17]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[18]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[18]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[18]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[18]));
  MUXF7 \s00_axi_rdata[18]_INST_0_i_1 
       (.I0(\s00_axi_rdata[18]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[18]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_10 
       (.I0(slv_reg3[18]),
        .I1(slv_reg2[18]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[18]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[18]_INST_0_i_2 
       (.I0(\s00_axi_rdata[18]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[18]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[18]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[18]_INST_0_i_3 
       (.I0(\s00_axi_rdata[18]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[18]),
        .I3(sel0[1]),
        .I4(slv_reg8__0[18]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[18]_INST_0_i_4 
       (.I0(slv_reg7__0[18]),
        .I1(sel0[1]),
        .I2(slv_reg4[18]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[18]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_5 
       (.I0(slv_reg27[18]),
        .I1(slv_reg26[18]),
        .I2(sel0[1]),
        .I3(slv_reg25[18]),
        .I4(sel0[0]),
        .I5(slv_reg24[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_6 
       (.I0(slv_reg31[18]),
        .I1(slv_reg30[18]),
        .I2(sel0[1]),
        .I3(slv_reg29[18]),
        .I4(sel0[0]),
        .I5(slv_reg28[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_7 
       (.I0(slv_reg19[18]),
        .I1(slv_reg18[18]),
        .I2(sel0[1]),
        .I3(slv_reg17[18]),
        .I4(sel0[0]),
        .I5(slv_reg16[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_8 
       (.I0(slv_reg23[18]),
        .I1(slv_reg22[18]),
        .I2(sel0[1]),
        .I3(slv_reg21[18]),
        .I4(sel0[0]),
        .I5(slv_reg20[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[18]_INST_0_i_9 
       (.I0(slv_reg15[18]),
        .I1(slv_reg14[18]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[19]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[19]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[19]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[19]));
  MUXF7 \s00_axi_rdata[19]_INST_0_i_1 
       (.I0(\s00_axi_rdata[19]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[19]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_10 
       (.I0(slv_reg3[19]),
        .I1(slv_reg2[19]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[19]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[19]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[19]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[19]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[19]_INST_0_i_3 
       (.I0(\s00_axi_rdata[19]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[19]),
        .I3(sel0[1]),
        .I4(slv_reg8__0[19]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[19]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[19]_INST_0_i_4 
       (.I0(slv_reg7__0[19]),
        .I1(sel0[1]),
        .I2(slv_reg4[19]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[19]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[19]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_5 
       (.I0(slv_reg27[19]),
        .I1(slv_reg26[19]),
        .I2(sel0[1]),
        .I3(slv_reg25[19]),
        .I4(sel0[0]),
        .I5(slv_reg24[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_6 
       (.I0(slv_reg31[19]),
        .I1(slv_reg30[19]),
        .I2(sel0[1]),
        .I3(slv_reg29[19]),
        .I4(sel0[0]),
        .I5(slv_reg28[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_7 
       (.I0(slv_reg19[19]),
        .I1(slv_reg18[19]),
        .I2(sel0[1]),
        .I3(slv_reg17[19]),
        .I4(sel0[0]),
        .I5(slv_reg16[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_8 
       (.I0(slv_reg23[19]),
        .I1(slv_reg22[19]),
        .I2(sel0[1]),
        .I3(slv_reg21[19]),
        .I4(sel0[0]),
        .I5(slv_reg20[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[19]_INST_0_i_9 
       (.I0(slv_reg15[19]),
        .I1(slv_reg14[19]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[1]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[1]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[1]));
  MUXF7 \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(\s00_axi_rdata[1]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_10 
       (.I0(slv_reg15[1]),
        .I1(slv_reg14[1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg13[1]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_time[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_11 
       (.I0(slv_reg3[1]),
        .I1(slv_reg2[1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg1__0[1]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg0[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_12 
       (.I0(slv_reg7[1]),
        .I1(Rbus_out[1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(Lbus_out[1]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_12_n_0 ));
  MUXF7 \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(\s00_axi_rdata[1]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[1]_INST_0_i_3 
       (.I0(\s00_axi_rdata[1]_INST_0_i_9_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[1]_INST_0_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[1]_INST_0_i_4 
       (.I0(\s00_axi_rdata[1]_INST_0_i_11_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_12_n_0 ),
        .O(\s00_axi_rdata[1]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_5 
       (.I0(slv_reg27[1]),
        .I1(slv_reg26[1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[1]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_6 
       (.I0(slv_reg31[1]),
        .I1(slv_reg30[1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[1]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_7 
       (.I0(slv_reg19[1]),
        .I1(slv_reg18[1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[1]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_8 
       (.I0(slv_reg23[1]),
        .I1(slv_reg22[1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[1]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[1]_INST_0_i_9 
       (.I0(trig_volt[1]),
        .I1(slv_reg10__0[1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg8[1]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .O(\s00_axi_rdata[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[20]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[20]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[20]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[20]));
  MUXF7 \s00_axi_rdata[20]_INST_0_i_1 
       (.I0(\s00_axi_rdata[20]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[20]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_10 
       (.I0(slv_reg3[20]),
        .I1(slv_reg2[20]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[20]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[20]_INST_0_i_2 
       (.I0(\s00_axi_rdata[20]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[20]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[20]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[20]_INST_0_i_3 
       (.I0(\s00_axi_rdata[20]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[20]),
        .I3(sel0[1]),
        .I4(slv_reg8__0[20]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[20]_INST_0_i_4 
       (.I0(slv_reg7__0[20]),
        .I1(sel0[1]),
        .I2(slv_reg4[20]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[20]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[20]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_5 
       (.I0(slv_reg27[20]),
        .I1(slv_reg26[20]),
        .I2(sel0[1]),
        .I3(slv_reg25[20]),
        .I4(sel0[0]),
        .I5(slv_reg24[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_6 
       (.I0(slv_reg31[20]),
        .I1(slv_reg30[20]),
        .I2(sel0[1]),
        .I3(slv_reg29[20]),
        .I4(sel0[0]),
        .I5(slv_reg28[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_7 
       (.I0(slv_reg19[20]),
        .I1(slv_reg18[20]),
        .I2(sel0[1]),
        .I3(slv_reg17[20]),
        .I4(sel0[0]),
        .I5(slv_reg16[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_8 
       (.I0(slv_reg23[20]),
        .I1(slv_reg22[20]),
        .I2(sel0[1]),
        .I3(slv_reg21[20]),
        .I4(sel0[0]),
        .I5(slv_reg20[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[20]_INST_0_i_9 
       (.I0(slv_reg15[20]),
        .I1(slv_reg14[20]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[21]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[21]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[21]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[21]));
  MUXF7 \s00_axi_rdata[21]_INST_0_i_1 
       (.I0(\s00_axi_rdata[21]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[21]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0_i_10 
       (.I0(slv_reg3[21]),
        .I1(slv_reg2[21]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[21]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[21]_INST_0_i_2 
       (.I0(\s00_axi_rdata[21]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[21]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[21]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[21]_INST_0_i_3 
       (.I0(\s00_axi_rdata[21]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[21]),
        .I3(sel0[1]),
        .I4(slv_reg8__0[21]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[21]_INST_0_i_4 
       (.I0(slv_reg7__0[21]),
        .I1(sel0[1]),
        .I2(slv_reg4[21]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[21]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[21]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0_i_5 
       (.I0(slv_reg27[21]),
        .I1(slv_reg26[21]),
        .I2(sel0[1]),
        .I3(slv_reg25[21]),
        .I4(sel0[0]),
        .I5(slv_reg24[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0_i_6 
       (.I0(slv_reg31[21]),
        .I1(slv_reg30[21]),
        .I2(sel0[1]),
        .I3(slv_reg29[21]),
        .I4(sel0[0]),
        .I5(slv_reg28[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0_i_7 
       (.I0(slv_reg19[21]),
        .I1(slv_reg18[21]),
        .I2(sel0[1]),
        .I3(slv_reg17[21]),
        .I4(sel0[0]),
        .I5(slv_reg16[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0_i_8 
       (.I0(slv_reg23[21]),
        .I1(slv_reg22[21]),
        .I2(sel0[1]),
        .I3(slv_reg21[21]),
        .I4(sel0[0]),
        .I5(slv_reg20[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[21]_INST_0_i_9 
       (.I0(slv_reg15[21]),
        .I1(slv_reg14[21]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[22]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[22]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[22]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[22]));
  MUXF7 \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(\s00_axi_rdata[22]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[22]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0_i_10 
       (.I0(slv_reg3[22]),
        .I1(slv_reg2[22]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[22]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[22]_INST_0_i_2 
       (.I0(\s00_axi_rdata[22]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[22]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[22]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[22]_INST_0_i_3 
       (.I0(\s00_axi_rdata[22]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[22]),
        .I3(sel0[1]),
        .I4(slv_reg8__0[22]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[22]_INST_0_i_4 
       (.I0(slv_reg7__0[22]),
        .I1(sel0[1]),
        .I2(slv_reg4[22]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[22]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0_i_5 
       (.I0(slv_reg27[22]),
        .I1(slv_reg26[22]),
        .I2(sel0[1]),
        .I3(slv_reg25[22]),
        .I4(sel0[0]),
        .I5(slv_reg24[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0_i_6 
       (.I0(slv_reg31[22]),
        .I1(slv_reg30[22]),
        .I2(sel0[1]),
        .I3(slv_reg29[22]),
        .I4(sel0[0]),
        .I5(slv_reg28[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0_i_7 
       (.I0(slv_reg19[22]),
        .I1(slv_reg18[22]),
        .I2(sel0[1]),
        .I3(slv_reg17[22]),
        .I4(sel0[0]),
        .I5(slv_reg16[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0_i_8 
       (.I0(slv_reg23[22]),
        .I1(slv_reg22[22]),
        .I2(sel0[1]),
        .I3(slv_reg21[22]),
        .I4(sel0[0]),
        .I5(slv_reg20[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[22]_INST_0_i_9 
       (.I0(slv_reg15[22]),
        .I1(slv_reg14[22]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[23]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[23]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[23]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[23]));
  MUXF7 \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(\s00_axi_rdata[23]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[23]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0_i_10 
       (.I0(slv_reg3[23]),
        .I1(slv_reg2[23]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[23]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[23]_INST_0_i_2 
       (.I0(\s00_axi_rdata[23]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[23]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[23]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[23]_INST_0_i_3 
       (.I0(\s00_axi_rdata[23]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[23]),
        .I3(sel0[1]),
        .I4(slv_reg8__0[23]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[23]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[23]_INST_0_i_4 
       (.I0(slv_reg7__0[23]),
        .I1(sel0[1]),
        .I2(slv_reg4[23]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[23]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[23]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0_i_5 
       (.I0(slv_reg27[23]),
        .I1(slv_reg26[23]),
        .I2(sel0[1]),
        .I3(slv_reg25[23]),
        .I4(sel0[0]),
        .I5(slv_reg24[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0_i_6 
       (.I0(slv_reg31[23]),
        .I1(slv_reg30[23]),
        .I2(sel0[1]),
        .I3(slv_reg29[23]),
        .I4(sel0[0]),
        .I5(slv_reg28[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0_i_7 
       (.I0(slv_reg19[23]),
        .I1(slv_reg18[23]),
        .I2(sel0[1]),
        .I3(slv_reg17[23]),
        .I4(sel0[0]),
        .I5(slv_reg16[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0_i_8 
       (.I0(slv_reg23[23]),
        .I1(slv_reg22[23]),
        .I2(sel0[1]),
        .I3(slv_reg21[23]),
        .I4(sel0[0]),
        .I5(slv_reg20[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[23]_INST_0_i_9 
       (.I0(slv_reg15[23]),
        .I1(slv_reg14[23]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[24]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[24]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[24]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[24]));
  MUXF7 \s00_axi_rdata[24]_INST_0_i_1 
       (.I0(\s00_axi_rdata[24]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[24]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0_i_10 
       (.I0(slv_reg3[24]),
        .I1(slv_reg2[24]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[24]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[24]_INST_0_i_2 
       (.I0(\s00_axi_rdata[24]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[24]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[24]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[24]_INST_0_i_3 
       (.I0(\s00_axi_rdata[24]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[24]),
        .I3(sel0[1]),
        .I4(slv_reg8__0[24]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[24]_INST_0_i_4 
       (.I0(slv_reg7__0[24]),
        .I1(sel0[1]),
        .I2(slv_reg4[24]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[24]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[24]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0_i_5 
       (.I0(slv_reg27[24]),
        .I1(slv_reg26[24]),
        .I2(sel0[1]),
        .I3(slv_reg25[24]),
        .I4(sel0[0]),
        .I5(slv_reg24[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0_i_6 
       (.I0(slv_reg31[24]),
        .I1(slv_reg30[24]),
        .I2(sel0[1]),
        .I3(slv_reg29[24]),
        .I4(sel0[0]),
        .I5(slv_reg28[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0_i_7 
       (.I0(slv_reg19[24]),
        .I1(slv_reg18[24]),
        .I2(sel0[1]),
        .I3(slv_reg17[24]),
        .I4(sel0[0]),
        .I5(slv_reg16[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0_i_8 
       (.I0(slv_reg23[24]),
        .I1(slv_reg22[24]),
        .I2(sel0[1]),
        .I3(slv_reg21[24]),
        .I4(sel0[0]),
        .I5(slv_reg20[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[24]_INST_0_i_9 
       (.I0(slv_reg15[24]),
        .I1(slv_reg14[24]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[25]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[25]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[25]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[25]));
  MUXF7 \s00_axi_rdata[25]_INST_0_i_1 
       (.I0(\s00_axi_rdata[25]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[25]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0_i_10 
       (.I0(slv_reg3[25]),
        .I1(slv_reg2[25]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[25]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[25]_INST_0_i_2 
       (.I0(\s00_axi_rdata[25]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[25]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[25]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[25]_INST_0_i_3 
       (.I0(\s00_axi_rdata[25]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[25]),
        .I3(sel0[1]),
        .I4(slv_reg8__0[25]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[25]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[25]_INST_0_i_4 
       (.I0(slv_reg7__0[25]),
        .I1(sel0[1]),
        .I2(slv_reg4[25]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[25]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[25]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0_i_5 
       (.I0(slv_reg27[25]),
        .I1(slv_reg26[25]),
        .I2(sel0[1]),
        .I3(slv_reg25[25]),
        .I4(sel0[0]),
        .I5(slv_reg24[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0_i_6 
       (.I0(slv_reg31[25]),
        .I1(slv_reg30[25]),
        .I2(sel0[1]),
        .I3(slv_reg29[25]),
        .I4(sel0[0]),
        .I5(slv_reg28[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0_i_7 
       (.I0(slv_reg19[25]),
        .I1(slv_reg18[25]),
        .I2(sel0[1]),
        .I3(slv_reg17[25]),
        .I4(sel0[0]),
        .I5(slv_reg16[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0_i_8 
       (.I0(slv_reg23[25]),
        .I1(slv_reg22[25]),
        .I2(sel0[1]),
        .I3(slv_reg21[25]),
        .I4(sel0[0]),
        .I5(slv_reg20[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[25]_INST_0_i_9 
       (.I0(slv_reg15[25]),
        .I1(slv_reg14[25]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[26]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[26]));
  MUXF7 \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(\s00_axi_rdata[26]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[26]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0_i_10 
       (.I0(slv_reg3[26]),
        .I1(slv_reg2[26]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[26]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[26]_INST_0_i_2 
       (.I0(\s00_axi_rdata[26]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[26]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[26]_INST_0_i_3 
       (.I0(\s00_axi_rdata[26]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[26]),
        .I3(sel0[1]),
        .I4(slv_reg8__0[26]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[26]_INST_0_i_4 
       (.I0(slv_reg7__0[26]),
        .I1(sel0[1]),
        .I2(slv_reg4[26]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[26]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[26]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0_i_5 
       (.I0(slv_reg27[26]),
        .I1(slv_reg26[26]),
        .I2(sel0[1]),
        .I3(slv_reg25[26]),
        .I4(sel0[0]),
        .I5(slv_reg24[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0_i_6 
       (.I0(slv_reg31[26]),
        .I1(slv_reg30[26]),
        .I2(sel0[1]),
        .I3(slv_reg29[26]),
        .I4(sel0[0]),
        .I5(slv_reg28[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0_i_7 
       (.I0(slv_reg19[26]),
        .I1(slv_reg18[26]),
        .I2(sel0[1]),
        .I3(slv_reg17[26]),
        .I4(sel0[0]),
        .I5(slv_reg16[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0_i_8 
       (.I0(slv_reg23[26]),
        .I1(slv_reg22[26]),
        .I2(sel0[1]),
        .I3(slv_reg21[26]),
        .I4(sel0[0]),
        .I5(slv_reg20[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[26]_INST_0_i_9 
       (.I0(slv_reg15[26]),
        .I1(slv_reg14[26]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[27]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[27]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[27]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[27]));
  MUXF7 \s00_axi_rdata[27]_INST_0_i_1 
       (.I0(\s00_axi_rdata[27]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[27]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0_i_10 
       (.I0(slv_reg3[27]),
        .I1(slv_reg2[27]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[27]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[27]_INST_0_i_2 
       (.I0(\s00_axi_rdata[27]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[27]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[27]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[27]_INST_0_i_3 
       (.I0(\s00_axi_rdata[27]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[27]),
        .I3(sel0[1]),
        .I4(slv_reg8__0[27]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[27]_INST_0_i_4 
       (.I0(slv_reg7__0[27]),
        .I1(sel0[1]),
        .I2(slv_reg4[27]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[27]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0_i_5 
       (.I0(slv_reg27[27]),
        .I1(slv_reg26[27]),
        .I2(sel0[1]),
        .I3(slv_reg25[27]),
        .I4(sel0[0]),
        .I5(slv_reg24[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0_i_6 
       (.I0(slv_reg31[27]),
        .I1(slv_reg30[27]),
        .I2(sel0[1]),
        .I3(slv_reg29[27]),
        .I4(sel0[0]),
        .I5(slv_reg28[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0_i_7 
       (.I0(slv_reg19[27]),
        .I1(slv_reg18[27]),
        .I2(sel0[1]),
        .I3(slv_reg17[27]),
        .I4(sel0[0]),
        .I5(slv_reg16[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0_i_8 
       (.I0(slv_reg23[27]),
        .I1(slv_reg22[27]),
        .I2(sel0[1]),
        .I3(slv_reg21[27]),
        .I4(sel0[0]),
        .I5(slv_reg20[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[27]_INST_0_i_9 
       (.I0(slv_reg15[27]),
        .I1(slv_reg14[27]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[28]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[28]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[28]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[28]));
  MUXF7 \s00_axi_rdata[28]_INST_0_i_1 
       (.I0(\s00_axi_rdata[28]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[28]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0_i_10 
       (.I0(slv_reg3[28]),
        .I1(slv_reg2[28]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[28]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[28]_INST_0_i_2 
       (.I0(\s00_axi_rdata[28]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[28]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[28]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[28]_INST_0_i_3 
       (.I0(\s00_axi_rdata[28]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[28]),
        .I3(sel0[1]),
        .I4(slv_reg8__0[28]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[28]_INST_0_i_4 
       (.I0(slv_reg7__0[28]),
        .I1(sel0[1]),
        .I2(slv_reg4[28]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[28]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[28]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0_i_5 
       (.I0(slv_reg27[28]),
        .I1(slv_reg26[28]),
        .I2(sel0[1]),
        .I3(slv_reg25[28]),
        .I4(sel0[0]),
        .I5(slv_reg24[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0_i_6 
       (.I0(slv_reg31[28]),
        .I1(slv_reg30[28]),
        .I2(sel0[1]),
        .I3(slv_reg29[28]),
        .I4(sel0[0]),
        .I5(slv_reg28[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0_i_7 
       (.I0(slv_reg19[28]),
        .I1(slv_reg18[28]),
        .I2(sel0[1]),
        .I3(slv_reg17[28]),
        .I4(sel0[0]),
        .I5(slv_reg16[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0_i_8 
       (.I0(slv_reg23[28]),
        .I1(slv_reg22[28]),
        .I2(sel0[1]),
        .I3(slv_reg21[28]),
        .I4(sel0[0]),
        .I5(slv_reg20[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[28]_INST_0_i_9 
       (.I0(slv_reg15[28]),
        .I1(slv_reg14[28]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[29]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[29]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[29]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[29]));
  MUXF7 \s00_axi_rdata[29]_INST_0_i_1 
       (.I0(\s00_axi_rdata[29]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[29]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0_i_10 
       (.I0(slv_reg3[29]),
        .I1(slv_reg2[29]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[29]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[29]_INST_0_i_2 
       (.I0(\s00_axi_rdata[29]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[29]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[29]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[29]_INST_0_i_3 
       (.I0(\s00_axi_rdata[29]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[29]),
        .I3(sel0[1]),
        .I4(slv_reg8__0[29]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[29]_INST_0_i_4 
       (.I0(slv_reg7__0[29]),
        .I1(sel0[1]),
        .I2(slv_reg4[29]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[29]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[29]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0_i_5 
       (.I0(slv_reg27[29]),
        .I1(slv_reg26[29]),
        .I2(sel0[1]),
        .I3(slv_reg25[29]),
        .I4(sel0[0]),
        .I5(slv_reg24[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0_i_6 
       (.I0(slv_reg31[29]),
        .I1(slv_reg30[29]),
        .I2(sel0[1]),
        .I3(slv_reg29[29]),
        .I4(sel0[0]),
        .I5(slv_reg28[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0_i_7 
       (.I0(slv_reg19[29]),
        .I1(slv_reg18[29]),
        .I2(sel0[1]),
        .I3(slv_reg17[29]),
        .I4(sel0[0]),
        .I5(slv_reg16[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0_i_8 
       (.I0(slv_reg23[29]),
        .I1(slv_reg22[29]),
        .I2(sel0[1]),
        .I3(slv_reg21[29]),
        .I4(sel0[0]),
        .I5(slv_reg20[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[29]_INST_0_i_9 
       (.I0(slv_reg15[29]),
        .I1(slv_reg14[29]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[2]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[2]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[2]));
  MUXF7 \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(\s00_axi_rdata[2]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_10 
       (.I0(slv_reg15[2]),
        .I1(slv_reg14[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg13[2]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_time[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_11 
       (.I0(slv_reg3[2]),
        .I1(slv_reg2[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg1__0[2]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg0[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_12 
       (.I0(slv_reg7[2]),
        .I1(Rbus_out[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(Lbus_out[2]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_12_n_0 ));
  MUXF7 \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(\s00_axi_rdata[2]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[2]_INST_0_i_3 
       (.I0(\s00_axi_rdata[2]_INST_0_i_9_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[2]_INST_0_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[2]_INST_0_i_4 
       (.I0(\s00_axi_rdata[2]_INST_0_i_11_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_12_n_0 ),
        .O(\s00_axi_rdata[2]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_5 
       (.I0(slv_reg27[2]),
        .I1(slv_reg26[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[2]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_6 
       (.I0(slv_reg31[2]),
        .I1(slv_reg30[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[2]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_7 
       (.I0(slv_reg19[2]),
        .I1(slv_reg18[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[2]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_8 
       (.I0(slv_reg23[2]),
        .I1(slv_reg22[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[2]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[2]_INST_0_i_9 
       (.I0(trig_volt[2]),
        .I1(slv_reg10__0[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg8[2]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .O(\s00_axi_rdata[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[30]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[30]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[30]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[30]));
  MUXF7 \s00_axi_rdata[30]_INST_0_i_1 
       (.I0(\s00_axi_rdata[30]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[30]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0_i_10 
       (.I0(slv_reg3[30]),
        .I1(slv_reg2[30]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[30]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[30]_INST_0_i_2 
       (.I0(\s00_axi_rdata[30]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[30]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[30]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[30]_INST_0_i_3 
       (.I0(\s00_axi_rdata[30]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[30]),
        .I3(sel0[1]),
        .I4(slv_reg8__0[30]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[30]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[30]_INST_0_i_4 
       (.I0(slv_reg7__0[30]),
        .I1(sel0[1]),
        .I2(slv_reg4[30]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[30]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[30]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0_i_5 
       (.I0(slv_reg27[30]),
        .I1(slv_reg26[30]),
        .I2(sel0[1]),
        .I3(slv_reg25[30]),
        .I4(sel0[0]),
        .I5(slv_reg24[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0_i_6 
       (.I0(slv_reg31[30]),
        .I1(slv_reg30[30]),
        .I2(sel0[1]),
        .I3(slv_reg29[30]),
        .I4(sel0[0]),
        .I5(slv_reg28[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0_i_7 
       (.I0(slv_reg19[30]),
        .I1(slv_reg18[30]),
        .I2(sel0[1]),
        .I3(slv_reg17[30]),
        .I4(sel0[0]),
        .I5(slv_reg16[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0_i_8 
       (.I0(slv_reg23[30]),
        .I1(slv_reg22[30]),
        .I2(sel0[1]),
        .I3(slv_reg21[30]),
        .I4(sel0[0]),
        .I5(slv_reg20[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[30]_INST_0_i_9 
       (.I0(slv_reg15[30]),
        .I1(slv_reg14[30]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[31]));
  MUXF7 \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0_i_10 
       (.I0(slv_reg3[31]),
        .I1(slv_reg2[31]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[31]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[31]_INST_0_i_2 
       (.I0(\s00_axi_rdata[31]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \s00_axi_rdata[31]_INST_0_i_3 
       (.I0(\s00_axi_rdata[31]_INST_0_i_9_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg10__0[31]),
        .I3(sel0[1]),
        .I4(slv_reg8__0[31]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[31]_INST_0_i_4 
       (.I0(slv_reg7__0[31]),
        .I1(sel0[1]),
        .I2(slv_reg4[31]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[31]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0_i_5 
       (.I0(slv_reg27[31]),
        .I1(slv_reg26[31]),
        .I2(sel0[1]),
        .I3(slv_reg25[31]),
        .I4(sel0[0]),
        .I5(slv_reg24[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0_i_6 
       (.I0(slv_reg31[31]),
        .I1(slv_reg30[31]),
        .I2(sel0[1]),
        .I3(slv_reg29[31]),
        .I4(sel0[0]),
        .I5(slv_reg28[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0_i_7 
       (.I0(slv_reg19[31]),
        .I1(slv_reg18[31]),
        .I2(sel0[1]),
        .I3(slv_reg17[31]),
        .I4(sel0[0]),
        .I5(slv_reg16[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0_i_8 
       (.I0(slv_reg23[31]),
        .I1(slv_reg22[31]),
        .I2(sel0[1]),
        .I3(slv_reg21[31]),
        .I4(sel0[0]),
        .I5(slv_reg20[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[31]_INST_0_i_9 
       (.I0(slv_reg15[31]),
        .I1(slv_reg14[31]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[3]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[3]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[3]));
  MUXF7 \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(\s00_axi_rdata[3]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_10 
       (.I0(slv_reg15[3]),
        .I1(slv_reg14[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg13[3]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_time[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_11 
       (.I0(slv_reg3[3]),
        .I1(slv_reg2[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg1__0[3]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg0[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_12 
       (.I0(slv_reg7[3]),
        .I1(Rbus_out[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(Lbus_out[3]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_12_n_0 ));
  MUXF7 \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(\s00_axi_rdata[3]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[3]_INST_0_i_3 
       (.I0(\s00_axi_rdata[3]_INST_0_i_9_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[3]_INST_0_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[3]_INST_0_i_4 
       (.I0(\s00_axi_rdata[3]_INST_0_i_11_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_12_n_0 ),
        .O(\s00_axi_rdata[3]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_5 
       (.I0(slv_reg27[3]),
        .I1(slv_reg26[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[3]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_6 
       (.I0(slv_reg31[3]),
        .I1(slv_reg30[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[3]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_7 
       (.I0(slv_reg19[3]),
        .I1(slv_reg18[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[3]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_8 
       (.I0(slv_reg23[3]),
        .I1(slv_reg22[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[3]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[3]_INST_0_i_9 
       (.I0(trig_volt[3]),
        .I1(slv_reg10__0[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg8[3]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .O(\s00_axi_rdata[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[4]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[4]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[4]));
  MUXF7 \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(\s00_axi_rdata[4]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_10 
       (.I0(slv_reg15[4]),
        .I1(slv_reg14[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg13[4]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_time[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_11 
       (.I0(slv_reg3[4]),
        .I1(slv_reg2[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg1__0[4]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg0[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_12 
       (.I0(slv_reg7[4]),
        .I1(Rbus_out[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(Lbus_out[4]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_12_n_0 ));
  MUXF7 \s00_axi_rdata[4]_INST_0_i_2 
       (.I0(\s00_axi_rdata[4]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[4]_INST_0_i_3 
       (.I0(\s00_axi_rdata[4]_INST_0_i_9_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[4]_INST_0_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[4]_INST_0_i_4 
       (.I0(\s00_axi_rdata[4]_INST_0_i_11_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_12_n_0 ),
        .O(\s00_axi_rdata[4]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_5 
       (.I0(slv_reg27[4]),
        .I1(slv_reg26[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[4]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_6 
       (.I0(slv_reg31[4]),
        .I1(slv_reg30[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[4]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_7 
       (.I0(slv_reg19[4]),
        .I1(slv_reg18[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[4]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_8 
       (.I0(slv_reg23[4]),
        .I1(slv_reg22[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[4]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[4]_INST_0_i_9 
       (.I0(trig_volt[4]),
        .I1(slv_reg10__0[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg8[4]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .O(\s00_axi_rdata[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[5]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[5]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[5]));
  MUXF7 \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(\s00_axi_rdata[5]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_10 
       (.I0(slv_reg15[5]),
        .I1(slv_reg14[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg13[5]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_time[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_11 
       (.I0(slv_reg3[5]),
        .I1(slv_reg2[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg1__0[5]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg0[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_12 
       (.I0(slv_reg7[5]),
        .I1(Rbus_out[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(Lbus_out[5]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_12_n_0 ));
  MUXF7 \s00_axi_rdata[5]_INST_0_i_2 
       (.I0(\s00_axi_rdata[5]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[5]_INST_0_i_3 
       (.I0(\s00_axi_rdata[5]_INST_0_i_9_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[5]_INST_0_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[5]_INST_0_i_4 
       (.I0(\s00_axi_rdata[5]_INST_0_i_11_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_12_n_0 ),
        .O(\s00_axi_rdata[5]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_5 
       (.I0(slv_reg27[5]),
        .I1(slv_reg26[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[5]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_6 
       (.I0(slv_reg31[5]),
        .I1(slv_reg30[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[5]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_7 
       (.I0(slv_reg19[5]),
        .I1(slv_reg18[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[5]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_8 
       (.I0(slv_reg23[5]),
        .I1(slv_reg22[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[5]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[5]_INST_0_i_9 
       (.I0(trig_volt[5]),
        .I1(slv_reg10__0[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg8[5]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .O(\s00_axi_rdata[5]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[6]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[6]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[6]));
  MUXF7 \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(\s00_axi_rdata[6]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_10 
       (.I0(slv_reg15[6]),
        .I1(slv_reg14[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg13[6]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_time[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_11 
       (.I0(slv_reg3[6]),
        .I1(slv_reg2[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg1__0[6]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg0[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_12 
       (.I0(slv_reg7[6]),
        .I1(Rbus_out[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(Lbus_out[6]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_12_n_0 ));
  MUXF7 \s00_axi_rdata[6]_INST_0_i_2 
       (.I0(\s00_axi_rdata[6]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[6]_INST_0_i_3 
       (.I0(\s00_axi_rdata[6]_INST_0_i_9_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[6]_INST_0_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[6]_INST_0_i_4 
       (.I0(\s00_axi_rdata[6]_INST_0_i_11_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_12_n_0 ),
        .O(\s00_axi_rdata[6]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_5 
       (.I0(slv_reg27[6]),
        .I1(slv_reg26[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[6]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_6 
       (.I0(slv_reg31[6]),
        .I1(slv_reg30[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[6]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_7 
       (.I0(slv_reg19[6]),
        .I1(slv_reg18[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[6]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_8 
       (.I0(slv_reg23[6]),
        .I1(slv_reg22[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[6]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[6]_INST_0_i_9 
       (.I0(trig_volt[6]),
        .I1(slv_reg10__0[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg8[6]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .O(\s00_axi_rdata[6]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[7]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[7]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[7]));
  MUXF7 \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(\s00_axi_rdata[7]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_10 
       (.I0(slv_reg15[7]),
        .I1(slv_reg14[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg13[7]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_time[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_11 
       (.I0(slv_reg3[7]),
        .I1(slv_reg2[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg1__0[7]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg0[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_12 
       (.I0(slv_reg7[7]),
        .I1(Rbus_out[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(Lbus_out[7]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_12_n_0 ));
  MUXF7 \s00_axi_rdata[7]_INST_0_i_2 
       (.I0(\s00_axi_rdata[7]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[7]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[7]_INST_0_i_3 
       (.I0(\s00_axi_rdata[7]_INST_0_i_9_n_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[7]_INST_0_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[7]_INST_0_i_4 
       (.I0(\s00_axi_rdata[7]_INST_0_i_11_n_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_12_n_0 ),
        .O(\s00_axi_rdata[7]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_5 
       (.I0(slv_reg27[7]),
        .I1(slv_reg26[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[7]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_6 
       (.I0(slv_reg31[7]),
        .I1(slv_reg30[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[7]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_7 
       (.I0(slv_reg19[7]),
        .I1(slv_reg18[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[7]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_8 
       (.I0(slv_reg23[7]),
        .I1(slv_reg22[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[7]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[7]_INST_0_i_9 
       (.I0(trig_volt[7]),
        .I1(slv_reg10__0[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg8[7]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .O(\s00_axi_rdata[7]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[8]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[8]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[8]));
  MUXF7 \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(\s00_axi_rdata[8]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_10 
       (.I0(slv_reg15[8]),
        .I1(slv_reg14[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg13[8]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_time[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_11 
       (.I0(slv_reg3[8]),
        .I1(slv_reg2[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg1__0[8]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg0[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_12 
       (.I0(slv_reg7[8]),
        .I1(Rbus_out[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(Lbus_out[8]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_12_n_0 ));
  MUXF7 \s00_axi_rdata[8]_INST_0_i_2 
       (.I0(\s00_axi_rdata[8]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[8]_INST_0_i_3 
       (.I0(\s00_axi_rdata[8]_INST_0_i_9_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[8]_INST_0_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[8]_INST_0_i_4 
       (.I0(\s00_axi_rdata[8]_INST_0_i_11_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_12_n_0 ),
        .O(\s00_axi_rdata[8]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_5 
       (.I0(slv_reg27[8]),
        .I1(slv_reg26[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[8]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_6 
       (.I0(slv_reg31[8]),
        .I1(slv_reg30[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[8]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_7 
       (.I0(slv_reg19[8]),
        .I1(slv_reg18[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[8]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_8 
       (.I0(slv_reg23[8]),
        .I1(slv_reg22[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[8]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[8]_INST_0_i_9 
       (.I0(trig_volt[8]),
        .I1(slv_reg10__0[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg8[8]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .O(\s00_axi_rdata[8]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[9]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[9]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[9]));
  MUXF7 \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(\s00_axi_rdata[9]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_10 
       (.I0(slv_reg15[9]),
        .I1(slv_reg14[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg13[9]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_time[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_11 
       (.I0(slv_reg3[9]),
        .I1(slv_reg2[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg1__0[9]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg0[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_12 
       (.I0(slv_reg7[9]),
        .I1(Rbus_out[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(Lbus_out[9]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_12_n_0 ));
  MUXF7 \s00_axi_rdata[9]_INST_0_i_2 
       (.I0(\s00_axi_rdata[9]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[9]_INST_0_i_3 
       (.I0(\s00_axi_rdata[9]_INST_0_i_9_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[9]_INST_0_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[9]_INST_0_i_4 
       (.I0(\s00_axi_rdata[9]_INST_0_i_11_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_12_n_0 ),
        .O(\s00_axi_rdata[9]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_5 
       (.I0(slv_reg27[9]),
        .I1(slv_reg26[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[9]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_6 
       (.I0(slv_reg31[9]),
        .I1(slv_reg30[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[9]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_7 
       (.I0(slv_reg19[9]),
        .I1(slv_reg18[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[9]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_8 
       (.I0(slv_reg23[9]),
        .I1(slv_reg22[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[9]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[9]_INST_0_i_9 
       (.I0(trig_volt[9]),
        .I1(slv_reg10__0[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg8[9]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .O(\s00_axi_rdata[9]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h00000000001D0000)) 
    \slv_reg0[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awaddr[0]),
        .I3(mem_logic[5]),
        .I4(\slv_reg0[31]_i_3_n_0 ),
        .I5(mem_logic[4]),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \slv_reg0[31]_i_3 
       (.I0(s00_axi_awaddr[4]),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_wvalid),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[1]),
        .O(\slv_reg0[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0__0[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0__0[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0__0[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0__0[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0__0[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0__0[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0__0[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0__0[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0__0[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0__0[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0__0[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0__0[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0__0[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0__0[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0__0[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0__0[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0__0[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0__0[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0__0[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0__0[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0__0[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0__0[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg10[15]_i_1 
       (.I0(\slv_reg7[15]_i_2_n_0 ),
        .I1(\slv_reg10[31]_i_2_n_0 ),
        .O(\slv_reg10[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg10[23]_i_1 
       (.I0(\slv_reg7[23]_i_2_n_0 ),
        .I1(\slv_reg10[31]_i_2_n_0 ),
        .O(\slv_reg10[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg10[31]_i_1 
       (.I0(\slv_reg7[31]_i_2_n_0 ),
        .I1(\slv_reg10[31]_i_2_n_0 ),
        .O(\slv_reg10[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000047034400)) 
    \slv_reg10[31]_i_2 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awaddr[3]),
        .I4(\axi_awaddr_reg_n_0_[5] ),
        .I5(mem_logic[4]),
        .O(\slv_reg10[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg10[7]_i_1 
       (.I0(\slv_reg7[7]_i_2_n_0 ),
        .I1(\slv_reg10[31]_i_2_n_0 ),
        .O(\slv_reg10[7]_i_1_n_0 ));
  FDRE \slv_reg10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg10),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg10__0[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg10__0[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg10__0[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg10__0[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg10__0[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg10__0[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg10__0[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg10__0[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg10__0[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg10__0[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg10__0[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg10__0[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg10__0[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg10__0[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg10__0[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg10__0[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg10__0[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg10__0[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg10__0[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg10__0[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg10__0[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg10__0[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg10__0[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg10__0[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg10__0[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg10__0[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg10__0[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg10__0[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg10__0[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg10__0[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg10_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg10__0[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg13[15]_i_1 
       (.I0(\slv_reg13[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg13[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg13[23]_i_1 
       (.I0(\slv_reg13[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg13[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg13[31]_i_1 
       (.I0(\slv_reg13[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg13[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA808000000000000)) 
    \slv_reg13[31]_i_2 
       (.I0(mem_logic[5]),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(mem_logic[4]),
        .I5(\slv_reg0[31]_i_3_n_0 ),
        .O(\slv_reg13[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg13[7]_i_1 
       (.I0(\slv_reg13[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg13[7]_i_1_n_0 ));
  FDRE \slv_reg13_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg13[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg13[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg13[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg13[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg13[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg13[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg13[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg13[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg13[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg13[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg13[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg13[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg13[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg13[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg13[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg13[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg13[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg13[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg13[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg13[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg13[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg13[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg13[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg13[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg13[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg13[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg13[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg13[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg13[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg13[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg13[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg13_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg13[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg14[15]_i_1 
       (.I0(\slv_reg7[15]_i_2_n_0 ),
        .I1(\slv_reg14[31]_i_2_n_0 ),
        .O(\slv_reg14[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg14[23]_i_1 
       (.I0(\slv_reg7[23]_i_2_n_0 ),
        .I1(\slv_reg14[31]_i_2_n_0 ),
        .O(\slv_reg14[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg14[31]_i_1 
       (.I0(\slv_reg7[31]_i_2_n_0 ),
        .I1(\slv_reg14[31]_i_2_n_0 ),
        .O(\slv_reg14[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4703440000000000)) 
    \slv_reg14[31]_i_2 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awaddr[3]),
        .I4(\axi_awaddr_reg_n_0_[5] ),
        .I5(mem_logic[4]),
        .O(\slv_reg14[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg14[7]_i_1 
       (.I0(\slv_reg7[7]_i_2_n_0 ),
        .I1(\slv_reg14[31]_i_2_n_0 ),
        .O(\slv_reg14[7]_i_1_n_0 ));
  FDRE \slv_reg14_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg14[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg14[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg14[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg14[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg14[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg14[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg14[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg14[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg14[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg14[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg14[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg14[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg14[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg14[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg14[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg14[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg14[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg14[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg14[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg14[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg14[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg14[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg14[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg14[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg14[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg14[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg14[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg14[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg14[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg14[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg14[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg14_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg14[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg15[15]_i_1 
       (.I0(\slv_reg7[15]_i_2_n_0 ),
        .I1(\slv_reg15[31]_i_2_n_0 ),
        .O(\slv_reg15[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg15[23]_i_1 
       (.I0(\slv_reg7[23]_i_2_n_0 ),
        .I1(\slv_reg15[31]_i_2_n_0 ),
        .O(\slv_reg15[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg15[31]_i_1 
       (.I0(\slv_reg7[31]_i_2_n_0 ),
        .I1(\slv_reg15[31]_i_2_n_0 ),
        .O(\slv_reg15[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC000A0A0C0000000)) 
    \slv_reg15[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awaddr[0]),
        .I2(mem_logic[4]),
        .I3(s00_axi_awaddr[3]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[5] ),
        .O(\slv_reg15[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg15[7]_i_1 
       (.I0(\slv_reg7[7]_i_2_n_0 ),
        .I1(\slv_reg15[31]_i_2_n_0 ),
        .O(\slv_reg15[7]_i_1_n_0 ));
  FDRE \slv_reg15_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg15[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg15[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg15[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg15[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg15[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg15[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg15[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg15[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg15[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg15[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg15[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg15[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg15[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg15[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg15[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg15[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg15[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg15[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg15[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg15[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg15[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg15[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg15[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg15[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg15[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg15[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg15[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg15[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg15[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg15[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg15[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg15_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg15[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg16[15]_i_1 
       (.I0(\slv_reg16[15]_i_2_n_0 ),
        .I1(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg16[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5404000000000000)) 
    \slv_reg16[15]_i_2 
       (.I0(mem_logic[3]),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg16[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg16[23]_i_1 
       (.I0(\slv_reg16[23]_i_2_n_0 ),
        .I1(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg16[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5404000000000000)) 
    \slv_reg16[23]_i_2 
       (.I0(mem_logic[3]),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg16[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg16[31]_i_1 
       (.I0(\slv_reg16[31]_i_2_n_0 ),
        .I1(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg16[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5404000000000000)) 
    \slv_reg16[31]_i_2 
       (.I0(mem_logic[3]),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg16[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg16[7]_i_1 
       (.I0(\slv_reg16[7]_i_2_n_0 ),
        .I1(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg16[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5404000000000000)) 
    \slv_reg16[7]_i_2 
       (.I0(mem_logic[3]),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg16[7]_i_2_n_0 ));
  FDRE \slv_reg16_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg16[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg16[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg16[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg16[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg16[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg16[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg16[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg16[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg16[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg16[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg16[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg16[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg16[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg16[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg16[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg16[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg16[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg16[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg16[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg16[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg16[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg16[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg16[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg16[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg16[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg16[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg16[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg16[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg16[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg16[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg16[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg16_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg16[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg17[15]_i_1 
       (.I0(\slv_reg17[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg17[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg17[23]_i_1 
       (.I0(\slv_reg17[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg17[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg17[31]_i_1 
       (.I0(\slv_reg17[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg17[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000404040000000)) 
    \slv_reg17[31]_i_2 
       (.I0(\slv_reg1[31]_i_3_n_0 ),
        .I1(\slv_reg1[31]_i_4_n_0 ),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[6] ),
        .O(\slv_reg17[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg17[7]_i_1 
       (.I0(\slv_reg17[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg17[7]_i_1_n_0 ));
  FDRE \slv_reg17_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg17[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg17[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg17[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg17[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg17[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg17[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg17[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg17[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg17[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg17[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg17[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg17[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg17[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg17[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg17[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg17[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg17[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg17[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg17[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg17[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg17[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg17[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg17[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg17[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg17[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg17[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg17[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg17[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg17[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg17[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg17[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg17_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg17[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg18[15]_i_1 
       (.I0(\slv_reg18[15]_i_2_n_0 ),
        .I1(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg18[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA808000000000000)) 
    \slv_reg18[15]_i_2 
       (.I0(mem_logic[3]),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg18[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg18[23]_i_1 
       (.I0(\slv_reg18[23]_i_2_n_0 ),
        .I1(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg18[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA808000000000000)) 
    \slv_reg18[23]_i_2 
       (.I0(mem_logic[3]),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg18[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg18[31]_i_1 
       (.I0(\slv_reg18[31]_i_2_n_0 ),
        .I1(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg18[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA808000000000000)) 
    \slv_reg18[31]_i_2 
       (.I0(mem_logic[3]),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg18[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg18[7]_i_1 
       (.I0(\slv_reg18[7]_i_2_n_0 ),
        .I1(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg18[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA808000000000000)) 
    \slv_reg18[7]_i_2 
       (.I0(mem_logic[3]),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg18[7]_i_2_n_0 ));
  FDRE \slv_reg18_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg18[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg18[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg18[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg18[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg18[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg18[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg18[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg18[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg18[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg18[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg18[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg18[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg18[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg18[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg18[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg18[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg18[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg18[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg18[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg18[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg18[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg18[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg18[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg18[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg18[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg18[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg18[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg18[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg18[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg18[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg18[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg18_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg18[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg19[15]_i_1 
       (.I0(\slv_reg18[15]_i_2_n_0 ),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg19[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg19[23]_i_1 
       (.I0(\slv_reg18[23]_i_2_n_0 ),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg19[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg19[31]_i_1 
       (.I0(\slv_reg18[31]_i_2_n_0 ),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg19[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg19[7]_i_1 
       (.I0(\slv_reg18[7]_i_2_n_0 ),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg19[7]_i_1_n_0 ));
  FDRE \slv_reg19_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg19[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg19[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg19[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg19[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg19[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg19[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg19[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg19[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg19[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg19[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg19[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg19[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg19[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg19[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg19[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg19[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg19[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg19[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg19[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg19[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg19[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg19[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg19[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg19[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg19[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg19[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg19[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg19[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg19[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg19[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg19[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg19_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg19[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[15]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[23]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[31]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400044400000000)) 
    \slv_reg1[31]_i_2 
       (.I0(\slv_reg1[31]_i_3_n_0 ),
        .I1(\slv_reg1[31]_i_4_n_0 ),
        .I2(s00_axi_awaddr[4]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[6] ),
        .I5(s00_axi_wvalid),
        .O(\slv_reg1[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \slv_reg1[31]_i_3 
       (.I0(\axi_awaddr_reg_n_0_[5] ),
        .I1(s00_axi_awaddr[3]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[1]),
        .O(\slv_reg1[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \slv_reg1[31]_i_4 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awaddr[0]),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .O(\slv_reg1[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[7]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1__0[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1__0[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1__0[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1__0[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1__0[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1__0[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1__0[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1__0[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1__0[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1__0[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1__0[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1__0[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1__0[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1__0[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1__0[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1__0[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1__0[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1__0[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1__0[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1__0[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1__0[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1__0[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1__0[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1__0[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1__0[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1__0[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1__0[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1__0[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1__0[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1__0[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1__0[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg20[15]_i_1 
       (.I0(\slv_reg16[15]_i_2_n_0 ),
        .I1(\slv_reg20[31]_i_2_n_0 ),
        .O(\slv_reg20[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg20[23]_i_1 
       (.I0(\slv_reg16[23]_i_2_n_0 ),
        .I1(\slv_reg20[31]_i_2_n_0 ),
        .O(\slv_reg20[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg20[31]_i_1 
       (.I0(\slv_reg16[31]_i_2_n_0 ),
        .I1(\slv_reg20[31]_i_2_n_0 ),
        .O(\slv_reg20[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00002020000A202A)) 
    \slv_reg20[31]_i_2 
       (.I0(mem_logic[4]),
        .I1(s00_axi_awaddr[3]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[5] ),
        .I4(s00_axi_awaddr[0]),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg20[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg20[7]_i_1 
       (.I0(\slv_reg16[7]_i_2_n_0 ),
        .I1(\slv_reg20[31]_i_2_n_0 ),
        .O(\slv_reg20[7]_i_1_n_0 ));
  FDRE \slv_reg20_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg20[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg20[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg20[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg20[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg20[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg20[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg20[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg20[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg20[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg20[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg20[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg20[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg20[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg20[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg20[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg20[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg20[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg20[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg20[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg20[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg20[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg20[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg20[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg20[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg20[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg20[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg20[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg20[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg20[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg20[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg20[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg20_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg20[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg21[15]_i_1 
       (.I0(\slv_reg21[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg21[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg21[23]_i_1 
       (.I0(\slv_reg21[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg21[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg21[31]_i_1 
       (.I0(\slv_reg21[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg21[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \slv_reg21[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[6] ),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awaddr[4]),
        .I3(s00_axi_wvalid),
        .I4(\slv_reg21[31]_i_3_n_0 ),
        .I5(\slv_reg1[31]_i_3_n_0 ),
        .O(\slv_reg21[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \slv_reg21[31]_i_3 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awaddr[0]),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .O(\slv_reg21[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg21[7]_i_1 
       (.I0(\slv_reg21[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg21[7]_i_1_n_0 ));
  FDRE \slv_reg21_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg21[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg21[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg21[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg21[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg21[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg21[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg21[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg21[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg21[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg21[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg21[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg21[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg21[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg21[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg21[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg21[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg21[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg21[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg21[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg21[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg21[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg21[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg21[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg21[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg21[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg21[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg21[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg21[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg21[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg21[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg21[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg21_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg21[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg22[15]_i_1 
       (.I0(\slv_reg18[15]_i_2_n_0 ),
        .I1(\slv_reg20[31]_i_2_n_0 ),
        .O(\slv_reg22[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg22[23]_i_1 
       (.I0(\slv_reg18[23]_i_2_n_0 ),
        .I1(\slv_reg20[31]_i_2_n_0 ),
        .O(\slv_reg22[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg22[31]_i_1 
       (.I0(\slv_reg18[31]_i_2_n_0 ),
        .I1(\slv_reg20[31]_i_2_n_0 ),
        .O(\slv_reg22[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg22[7]_i_1 
       (.I0(\slv_reg18[7]_i_2_n_0 ),
        .I1(\slv_reg20[31]_i_2_n_0 ),
        .O(\slv_reg22[7]_i_1_n_0 ));
  FDRE \slv_reg22_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg22[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg22[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg22[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg22[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg22[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg22[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg22[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg22[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg22[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg22[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg22[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg22[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg22[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg22[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg22[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg22[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg22[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg22[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg22[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg22[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg22[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg22[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg22[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg22[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg22[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg22[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg22[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg22[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg22[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg22[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg22[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg22_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg22[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg23[15]_i_1 
       (.I0(\slv_reg18[15]_i_2_n_0 ),
        .I1(\slv_reg7[31]_i_3_n_0 ),
        .O(\slv_reg23[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg23[23]_i_1 
       (.I0(\slv_reg18[23]_i_2_n_0 ),
        .I1(\slv_reg7[31]_i_3_n_0 ),
        .O(\slv_reg23[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg23[31]_i_1 
       (.I0(\slv_reg18[31]_i_2_n_0 ),
        .I1(\slv_reg7[31]_i_3_n_0 ),
        .O(\slv_reg23[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg23[7]_i_1 
       (.I0(\slv_reg18[7]_i_2_n_0 ),
        .I1(\slv_reg7[31]_i_3_n_0 ),
        .O(\slv_reg23[7]_i_1_n_0 ));
  FDRE \slv_reg23_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg23[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg23[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg23[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg23[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg23[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg23[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg23[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg23[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg23[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg23[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg23[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg23[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg23[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg23[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg23[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg23[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg23[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg23[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg23[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg23[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg23[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg23[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg23[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg23[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg23[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg23[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg23[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg23[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg23[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg23[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg23[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg23_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg23[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg24[15]_i_1 
       (.I0(\slv_reg16[15]_i_2_n_0 ),
        .I1(\slv_reg10[31]_i_2_n_0 ),
        .O(\slv_reg24[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg24[23]_i_1 
       (.I0(\slv_reg16[23]_i_2_n_0 ),
        .I1(\slv_reg10[31]_i_2_n_0 ),
        .O(\slv_reg24[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg24[31]_i_1 
       (.I0(\slv_reg16[31]_i_2_n_0 ),
        .I1(\slv_reg10[31]_i_2_n_0 ),
        .O(\slv_reg24[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg24[7]_i_1 
       (.I0(\slv_reg16[7]_i_2_n_0 ),
        .I1(\slv_reg10[31]_i_2_n_0 ),
        .O(\slv_reg24[7]_i_1_n_0 ));
  FDRE \slv_reg24_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg24[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg24[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg24[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg24[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg24[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg24[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg24[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg24[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg24[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg24[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg24[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg24[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg24[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg24[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg24[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg24[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg24[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg24[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg24[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg24[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg24[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg24[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg24[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg24[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg24[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg24[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg24[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg24[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg24[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg24[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg24[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg24_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg24[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg25[15]_i_1 
       (.I0(\slv_reg16[15]_i_2_n_0 ),
        .I1(\slv_reg25[31]_i_2_n_0 ),
        .O(\slv_reg25[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg25[23]_i_1 
       (.I0(\slv_reg16[23]_i_2_n_0 ),
        .I1(\slv_reg25[31]_i_2_n_0 ),
        .O(\slv_reg25[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg25[31]_i_1 
       (.I0(\slv_reg16[31]_i_2_n_0 ),
        .I1(\slv_reg25[31]_i_2_n_0 ),
        .O(\slv_reg25[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444500000005000)) 
    \slv_reg25[31]_i_2 
       (.I0(mem_logic[4]),
        .I1(s00_axi_awaddr[0]),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\axi_awaddr_reg_n_0_[5] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[3]),
        .O(\slv_reg25[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg25[7]_i_1 
       (.I0(\slv_reg16[7]_i_2_n_0 ),
        .I1(\slv_reg25[31]_i_2_n_0 ),
        .O(\slv_reg25[7]_i_1_n_0 ));
  FDRE \slv_reg25_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg25[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg25[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg25[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg25[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg25[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg25[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg25[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg25[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg25[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg25[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg25[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg25[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg25[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg25[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg25[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg25[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg25[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg25[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg25[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg25[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg25[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg25[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg25[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg25[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg25[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg25[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg25[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg25[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg25[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg25[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg25[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg25_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg25[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg26[15]_i_1 
       (.I0(\slv_reg18[15]_i_2_n_0 ),
        .I1(\slv_reg10[31]_i_2_n_0 ),
        .O(\slv_reg26[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg26[23]_i_1 
       (.I0(\slv_reg18[23]_i_2_n_0 ),
        .I1(\slv_reg10[31]_i_2_n_0 ),
        .O(\slv_reg26[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg26[31]_i_1 
       (.I0(\slv_reg18[31]_i_2_n_0 ),
        .I1(\slv_reg10[31]_i_2_n_0 ),
        .O(\slv_reg26[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg26[7]_i_1 
       (.I0(\slv_reg18[7]_i_2_n_0 ),
        .I1(\slv_reg10[31]_i_2_n_0 ),
        .O(\slv_reg26[7]_i_1_n_0 ));
  FDRE \slv_reg26_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg26[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg26[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg26[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg26[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg26[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg26[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg26[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg26[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg26[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg26[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg26[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg26[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg26[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg26[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg26[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg26[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg26[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg26[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg26[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg26[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg26[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg26[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg26[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg26[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg26[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg26[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg26[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg26[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg26[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg26[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg26[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg26_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg26[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg27[15]_i_1 
       (.I0(\slv_reg18[15]_i_2_n_0 ),
        .I1(\slv_reg25[31]_i_2_n_0 ),
        .O(\slv_reg27[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg27[23]_i_1 
       (.I0(\slv_reg18[23]_i_2_n_0 ),
        .I1(\slv_reg25[31]_i_2_n_0 ),
        .O(\slv_reg27[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg27[31]_i_1 
       (.I0(\slv_reg18[31]_i_2_n_0 ),
        .I1(\slv_reg25[31]_i_2_n_0 ),
        .O(\slv_reg27[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg27[7]_i_1 
       (.I0(\slv_reg18[7]_i_2_n_0 ),
        .I1(\slv_reg25[31]_i_2_n_0 ),
        .O(\slv_reg27[7]_i_1_n_0 ));
  FDRE \slv_reg27_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg27[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg27[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg27[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg27[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg27[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg27[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg27[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg27[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg27[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg27[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg27[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg27[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg27[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg27[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg27[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg27[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg27[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg27[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg27[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg27[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg27[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg27[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg27[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg27[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg27[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg27[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg27[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg27[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg27[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg27[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg27[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg27_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg27[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg28[15]_i_1 
       (.I0(\slv_reg16[15]_i_2_n_0 ),
        .I1(\slv_reg14[31]_i_2_n_0 ),
        .O(\slv_reg28[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg28[23]_i_1 
       (.I0(\slv_reg16[23]_i_2_n_0 ),
        .I1(\slv_reg14[31]_i_2_n_0 ),
        .O(\slv_reg28[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg28[31]_i_1 
       (.I0(\slv_reg16[31]_i_2_n_0 ),
        .I1(\slv_reg14[31]_i_2_n_0 ),
        .O(\slv_reg28[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg28[7]_i_1 
       (.I0(\slv_reg16[7]_i_2_n_0 ),
        .I1(\slv_reg14[31]_i_2_n_0 ),
        .O(\slv_reg28[7]_i_1_n_0 ));
  FDRE \slv_reg28_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg28[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg28[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg28[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg28[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg28[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg28[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg28[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg28[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg28[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg28[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg28[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg28[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg28[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg28[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg28[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg28[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg28[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg28[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg28[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg28[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg28[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg28[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg28[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg28[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg28[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg28[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg28[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg28[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg28[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg28[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg28[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg28_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg28[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg29[15]_i_1 
       (.I0(\slv_reg16[15]_i_2_n_0 ),
        .I1(\slv_reg15[31]_i_2_n_0 ),
        .O(\slv_reg29[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg29[23]_i_1 
       (.I0(\slv_reg16[23]_i_2_n_0 ),
        .I1(\slv_reg15[31]_i_2_n_0 ),
        .O(\slv_reg29[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg29[31]_i_1 
       (.I0(\slv_reg16[31]_i_2_n_0 ),
        .I1(\slv_reg15[31]_i_2_n_0 ),
        .O(\slv_reg29[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg29[7]_i_1 
       (.I0(\slv_reg16[7]_i_2_n_0 ),
        .I1(\slv_reg15[31]_i_2_n_0 ),
        .O(\slv_reg29[7]_i_1_n_0 ));
  FDRE \slv_reg29_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg29[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg29[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg29[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg29[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg29[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg29[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg29[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg29[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg29[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg29[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg29[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg29[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg29[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg29[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg29[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg29[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg29[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg29[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg29[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg29[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg29[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg29[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg29[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg29[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg29[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg29[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg29[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg29[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg29[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg29[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg29[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg29_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg29[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[15]_i_1 
       (.I0(\slv_reg7[15]_i_2_n_0 ),
        .I1(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[23]_i_1 
       (.I0(\slv_reg7[23]_i_2_n_0 ),
        .I1(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[31]_i_1 
       (.I0(\slv_reg7[31]_i_2_n_0 ),
        .I1(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \slv_reg2[31]_i_2 
       (.I0(s00_axi_awaddr[3]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[5] ),
        .I3(s00_axi_awaddr[0]),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .I5(mem_logic[4]),
        .O(\slv_reg2[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg7[7]_i_2_n_0 ),
        .I1(\slv_reg2[31]_i_2_n_0 ),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT6 #(
    .INIT(64'h4700000000000000)) 
    \slv_reg30[15]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(mem_logic[5]),
        .I4(mem_logic[4]),
        .I5(\slv_reg18[15]_i_2_n_0 ),
        .O(\slv_reg30[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4700000000000000)) 
    \slv_reg30[23]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(mem_logic[5]),
        .I4(mem_logic[4]),
        .I5(\slv_reg18[23]_i_2_n_0 ),
        .O(\slv_reg30[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4700000000000000)) 
    \slv_reg30[31]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(mem_logic[5]),
        .I4(mem_logic[4]),
        .I5(\slv_reg18[31]_i_2_n_0 ),
        .O(\slv_reg30[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg30[31]_i_2 
       (.I0(s00_axi_awaddr[3]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[5] ),
        .O(mem_logic[5]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg30[31]_i_3 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .O(mem_logic[4]));
  LUT6 #(
    .INIT(64'h4700000000000000)) 
    \slv_reg30[7]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(mem_logic[5]),
        .I4(mem_logic[4]),
        .I5(\slv_reg18[7]_i_2_n_0 ),
        .O(\slv_reg30[7]_i_1_n_0 ));
  FDRE \slv_reg30_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg30[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg30[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg30[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg30[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg30[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg30[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg30[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg30[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg30[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg30[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg30[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg30[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg30[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg30[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg30[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg30[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg30[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg30[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg30[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg30[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg30[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg30[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg30[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg30[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg30[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg30[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg30[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg30[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg30[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg30[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg30[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg30_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg30[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg31[15]_i_1 
       (.I0(\slv_reg18[15]_i_2_n_0 ),
        .I1(\slv_reg15[31]_i_2_n_0 ),
        .O(\slv_reg31[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg31[23]_i_1 
       (.I0(\slv_reg18[23]_i_2_n_0 ),
        .I1(\slv_reg15[31]_i_2_n_0 ),
        .O(\slv_reg31[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg31[31]_i_1 
       (.I0(\slv_reg18[31]_i_2_n_0 ),
        .I1(\slv_reg15[31]_i_2_n_0 ),
        .O(\slv_reg31[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg31[7]_i_1 
       (.I0(\slv_reg18[7]_i_2_n_0 ),
        .I1(\slv_reg15[31]_i_2_n_0 ),
        .O(\slv_reg31[7]_i_1_n_0 ));
  FDRE \slv_reg31_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg31[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg31[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg31[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg31[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg31[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg31[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg31[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg31[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg31[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg31[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg31[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg31[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg31[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg31[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg31[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg31[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg31[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg31[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg31[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg31[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg31[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg31[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg31[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg31[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg31[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg31[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg31[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg31[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg31[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg31[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg31[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg31_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg31[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[15]_i_1 
       (.I0(\slv_reg7[15]_i_2_n_0 ),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[23]_i_1 
       (.I0(\slv_reg7[23]_i_2_n_0 ),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[31]_i_1 
       (.I0(\slv_reg7[31]_i_2_n_0 ),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000005044440050)) 
    \slv_reg3[31]_i_2 
       (.I0(mem_logic[4]),
        .I1(s00_axi_awaddr[0]),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\axi_awaddr_reg_n_0_[5] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[3]),
        .O(\slv_reg3[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[7]_i_1 
       (.I0(\slv_reg7[7]_i_2_n_0 ),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg4[15]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg4[23]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg4[31]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000888)) 
    \slv_reg4[31]_i_2 
       (.I0(mem_logic[4]),
        .I1(\slv_reg4[31]_i_3_n_0 ),
        .I2(s00_axi_awaddr[0]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .I5(\slv_reg1[31]_i_3_n_0 ),
        .O(\slv_reg4[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \slv_reg4[31]_i_3 
       (.I0(s00_axi_wvalid),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .O(\slv_reg4[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg4[7]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg7[15]_i_1 
       (.I0(\slv_reg7[15]_i_2_n_0 ),
        .I1(\slv_reg7[31]_i_3_n_0 ),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008880800000000)) 
    \slv_reg7[15]_i_2 
       (.I0(mem_logic[3]),
        .I1(s00_axi_wvalid),
        .I2(\axi_awaddr_reg_n_0_[6] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[4]),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg7[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg7[23]_i_1 
       (.I0(\slv_reg7[23]_i_2_n_0 ),
        .I1(\slv_reg7[31]_i_3_n_0 ),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008880800000000)) 
    \slv_reg7[23]_i_2 
       (.I0(mem_logic[3]),
        .I1(s00_axi_wvalid),
        .I2(\axi_awaddr_reg_n_0_[6] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[4]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg7[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg7[31]_i_1 
       (.I0(\slv_reg7[31]_i_2_n_0 ),
        .I1(\slv_reg7[31]_i_3_n_0 ),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008880800000000)) 
    \slv_reg7[31]_i_2 
       (.I0(mem_logic[3]),
        .I1(s00_axi_wvalid),
        .I2(\axi_awaddr_reg_n_0_[6] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[4]),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg7[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000A0888800A0)) 
    \slv_reg7[31]_i_3 
       (.I0(mem_logic[4]),
        .I1(s00_axi_awaddr[0]),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\axi_awaddr_reg_n_0_[5] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[3]),
        .O(\slv_reg7[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg7[31]_i_4 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .O(mem_logic[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg7[7]_i_1 
       (.I0(\slv_reg7[7]_i_2_n_0 ),
        .I1(\slv_reg7[31]_i_3_n_0 ),
        .O(\slv_reg7[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008880800000000)) 
    \slv_reg7[7]_i_2 
       (.I0(mem_logic[3]),
        .I1(s00_axi_wvalid),
        .I2(\axi_awaddr_reg_n_0_[6] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[4]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg7[7]_i_2_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7__0[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7__0[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7__0[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7__0[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7__0[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7__0[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7__0[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7__0[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7__0[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7__0[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7__0[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7__0[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7__0[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7__0[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7__0[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7__0[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(\trig_v_detect/p_0_in ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg8[15]_i_1 
       (.I0(\slv_reg8[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg8[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg8[23]_i_1 
       (.I0(\slv_reg8[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg8[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg8[31]_i_1 
       (.I0(\slv_reg8[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg8[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004440400000000)) 
    \slv_reg8[31]_i_2 
       (.I0(mem_logic[3]),
        .I1(s00_axi_wvalid),
        .I2(\axi_awaddr_reg_n_0_[6] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[4]),
        .I5(\slv_reg10[31]_i_2_n_0 ),
        .O(\slv_reg8[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg8[7]_i_1 
       (.I0(\slv_reg8[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg8[7]_i_1_n_0 ));
  FDRE \slv_reg8_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg8[0]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg8[10]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg8[11]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg8[12]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg8[13]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg8[14]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg8[15]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg8__0[16]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg8__0[17]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg8__0[18]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg8__0[19]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg8[1]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg8__0[20]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg8__0[21]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg8__0[22]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg8__0[23]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg8__0[24]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg8__0[25]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg8__0[26]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg8__0[27]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg8__0[28]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg8__0[29]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg8[2]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg8__0[30]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg8__0[31]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg8[3]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg8[4]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg8[5]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg8[6]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg8[7]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg8[8]),
        .R(\trig_v_detect/p_0_in ));
  FDRE \slv_reg8_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg8[9]),
        .R(\trig_v_detect/p_0_in ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder
   (Q,
    \dc_bias_reg[2]_0 ,
    D,
    \dc_bias_reg[1]_0 ,
    \encoded_reg[8]_0 ,
    \dc_bias_reg[3]_0 ,
    \dc_bias_reg[3]_1 ,
    \dc_bias_reg[3]_2 ,
    \dc_bias_reg[3]_3 ,
    \dc_bias_reg[3]_4 ,
    SR,
    CLK,
    \encoded_reg[4]_0 ,
    \encoded_reg[9]_0 ,
    \encoded_reg[9]_1 ,
    h_sync_is_low,
    v_blank_is_low,
    h_blank_is_low);
  output [0:0]Q;
  output \dc_bias_reg[2]_0 ;
  output [5:0]D;
  input \dc_bias_reg[1]_0 ;
  input \encoded_reg[8]_0 ;
  input \dc_bias_reg[3]_0 ;
  input \dc_bias_reg[3]_1 ;
  input \dc_bias_reg[3]_2 ;
  input \dc_bias_reg[3]_3 ;
  input \dc_bias_reg[3]_4 ;
  input [0:0]SR;
  input CLK;
  input [3:0]\encoded_reg[4]_0 ;
  input \encoded_reg[9]_0 ;
  input \encoded_reg[9]_1 ;
  input h_sync_is_low;
  input v_blank_is_low;
  input h_blank_is_low;

  wire CLK;
  wire [5:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \dc_bias[0]_i_1_n_0 ;
  wire \dc_bias[1]_i_1_n_0 ;
  wire \dc_bias[2]_i_1__0_n_0 ;
  wire \dc_bias[3]_i_1__1_n_0 ;
  wire \dc_bias[3]_i_2_n_0 ;
  wire \dc_bias[3]_i_5__1_n_0 ;
  wire \dc_bias_reg[1]_0 ;
  wire \dc_bias_reg[2]_0 ;
  wire \dc_bias_reg[3]_0 ;
  wire \dc_bias_reg[3]_1 ;
  wire \dc_bias_reg[3]_2 ;
  wire \dc_bias_reg[3]_3 ;
  wire \dc_bias_reg[3]_4 ;
  wire \dc_bias_reg_n_0_[0] ;
  wire \dc_bias_reg_n_0_[1] ;
  wire \dc_bias_reg_n_0_[2] ;
  wire \encoded[8]_i_1_n_0 ;
  wire \encoded[9]_i_1_n_0 ;
  wire [3:0]\encoded_reg[4]_0 ;
  wire \encoded_reg[8]_0 ;
  wire \encoded_reg[9]_0 ;
  wire \encoded_reg[9]_1 ;
  wire h_blank_is_low;
  wire h_sync_is_low;
  wire v_blank_is_low;

  LUT6 #(
    .INIT(64'h6969969669699690)) 
    \dc_bias[0]_i_1 
       (.I0(\encoded_reg[8]_0 ),
        .I1(\dc_bias_reg[1]_0 ),
        .I2(\dc_bias_reg_n_0_[0] ),
        .I3(\dc_bias_reg_n_0_[1] ),
        .I4(Q),
        .I5(\dc_bias_reg_n_0_[2] ),
        .O(\dc_bias[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h5CBDA342)) 
    \dc_bias[1]_i_1 
       (.I0(Q),
        .I1(\dc_bias_reg[1]_0 ),
        .I2(\dc_bias_reg_n_0_[0] ),
        .I3(\encoded_reg[8]_0 ),
        .I4(\dc_bias_reg_n_0_[1] ),
        .O(\dc_bias[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h804564407FBA9BBB)) 
    \dc_bias[2]_i_1__0 
       (.I0(\dc_bias_reg[1]_0 ),
        .I1(\encoded_reg[8]_0 ),
        .I2(\dc_bias_reg_n_0_[0] ),
        .I3(\dc_bias_reg_n_0_[1] ),
        .I4(Q),
        .I5(\dc_bias_reg_n_0_[2] ),
        .O(\dc_bias[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00E0EEEE00E0E0E0)) 
    \dc_bias[3]_i_1__1 
       (.I0(\dc_bias[3]_i_2_n_0 ),
        .I1(\dc_bias_reg[3]_0 ),
        .I2(Q),
        .I3(\dc_bias_reg_n_0_[1] ),
        .I4(\dc_bias_reg_n_0_[2] ),
        .I5(\dc_bias_reg[3]_1 ),
        .O(\dc_bias[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEE00AEAEAE)) 
    \dc_bias[3]_i_2 
       (.I0(\dc_bias[3]_i_5__1_n_0 ),
        .I1(\dc_bias_reg[3]_2 ),
        .I2(\dc_bias_reg[3]_3 ),
        .I3(\dc_bias_reg_n_0_[0] ),
        .I4(\dc_bias_reg_n_0_[2] ),
        .I5(\dc_bias_reg[3]_4 ),
        .O(\dc_bias[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    \dc_bias[3]_i_5__1 
       (.I0(\dc_bias_reg_n_0_[2] ),
        .I1(\dc_bias_reg_n_0_[0] ),
        .I2(Q),
        .I3(\dc_bias_reg_n_0_[1] ),
        .O(\dc_bias[3]_i_5__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[0]_i_1_n_0 ),
        .Q(\dc_bias_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[1]_i_1_n_0 ),
        .Q(\dc_bias_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[2]_i_1__0_n_0 ),
        .Q(\dc_bias_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[3]_i_1__1_n_0 ),
        .Q(Q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \encoded[4]_i_2 
       (.I0(\dc_bias_reg_n_0_[2] ),
        .I1(Q),
        .I2(\dc_bias_reg_n_0_[1] ),
        .I3(\dc_bias_reg_n_0_[0] ),
        .O(\dc_bias_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \encoded[8]_i_1 
       (.I0(h_sync_is_low),
        .I1(v_blank_is_low),
        .I2(h_blank_is_low),
        .I3(\encoded_reg[8]_0 ),
        .O(\encoded[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F0F9F0FFF0F9F0)) 
    \encoded[9]_i_1 
       (.I0(Q),
        .I1(\dc_bias_reg[1]_0 ),
        .I2(\encoded_reg[9]_0 ),
        .I3(\encoded_reg[9]_1 ),
        .I4(\dc_bias_reg[2]_0 ),
        .I5(\encoded_reg[8]_0 ),
        .O(\encoded[9]_i_1_n_0 ));
  FDRE \encoded_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded_reg[4]_0 [0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE \encoded_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded_reg[4]_0 [1]),
        .Q(D[1]),
        .R(1'b0));
  FDRE \encoded_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded_reg[4]_0 [2]),
        .Q(D[2]),
        .R(1'b0));
  FDRE \encoded_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded_reg[4]_0 [3]),
        .Q(D[3]),
        .R(1'b0));
  FDRE \encoded_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded[8]_i_1_n_0 ),
        .Q(D[4]),
        .R(1'b0));
  FDRE \encoded_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded[9]_i_1_n_0 ),
        .Q(D[5]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TDMS_encoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0
   (Q,
    \dc_bias_reg[2]_0 ,
    \dc_bias_reg[3]_0 ,
    \dc_bias_reg[2]_1 ,
    \dc_bias_reg[0]_0 ,
    \encoded_reg[9]_0 ,
    \encoded_reg[8]_0 ,
    \dc_bias_reg[1]_0 ,
    \dc_bias_reg[2]_2 ,
    \dc_bias_reg[3]_1 ,
    \dc_bias_reg[3]_2 ,
    \dc_bias_reg[3]_3 ,
    \dc_bias_reg[3]_4 ,
    SR,
    D,
    CLK,
    \encoded_reg[2]_0 ,
    v_blank_is_low,
    h_blank_is_low,
    \encoded_reg[8]_1 );
  output [2:0]Q;
  output \dc_bias_reg[2]_0 ;
  output \dc_bias_reg[3]_0 ;
  output \dc_bias_reg[2]_1 ;
  output \dc_bias_reg[0]_0 ;
  output [3:0]\encoded_reg[9]_0 ;
  input \encoded_reg[8]_0 ;
  input \dc_bias_reg[1]_0 ;
  input \dc_bias_reg[2]_2 ;
  input \dc_bias_reg[3]_1 ;
  input \dc_bias_reg[3]_2 ;
  input \dc_bias_reg[3]_3 ;
  input \dc_bias_reg[3]_4 ;
  input [0:0]SR;
  input [0:0]D;
  input CLK;
  input [1:0]\encoded_reg[2]_0 ;
  input v_blank_is_low;
  input h_blank_is_low;
  input \encoded_reg[8]_1 ;

  wire CLK;
  wire [0:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire \dc_bias[0]_i_1__1_n_0 ;
  wire \dc_bias[1]_i_1__1_n_0 ;
  wire \dc_bias[2]_i_1_n_0 ;
  wire \dc_bias_reg[0]_0 ;
  wire \dc_bias_reg[1]_0 ;
  wire \dc_bias_reg[2]_0 ;
  wire \dc_bias_reg[2]_1 ;
  wire \dc_bias_reg[2]_2 ;
  wire \dc_bias_reg[3]_0 ;
  wire \dc_bias_reg[3]_1 ;
  wire \dc_bias_reg[3]_2 ;
  wire \dc_bias_reg[3]_3 ;
  wire \dc_bias_reg[3]_4 ;
  wire \dc_bias_reg_n_0_[2] ;
  wire \encoded[8]_i_1_n_0 ;
  wire \encoded[9]_i_1_n_0 ;
  wire [1:0]\encoded_reg[2]_0 ;
  wire \encoded_reg[8]_0 ;
  wire \encoded_reg[8]_1 ;
  wire [3:0]\encoded_reg[9]_0 ;
  wire h_blank_is_low;
  wire v_blank_is_low;

  LUT6 #(
    .INIT(64'h00FEFF00FF0000FE)) 
    \dc_bias[0]_i_1__1 
       (.I0(\dc_bias_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\encoded_reg[8]_0 ),
        .I5(\dc_bias_reg[1]_0 ),
        .O(\dc_bias[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0FFFFFF0F000000E)) 
    \dc_bias[1]_i_1__1 
       (.I0(\dc_bias_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(\dc_bias_reg[1]_0 ),
        .I3(Q[0]),
        .I4(\encoded_reg[8]_0 ),
        .I5(Q[1]),
        .O(\dc_bias[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0380FC7F80017FFF)) 
    \dc_bias[2]_i_1 
       (.I0(\encoded_reg[8]_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\dc_bias_reg[2]_2 ),
        .I4(\dc_bias_reg_n_0_[2] ),
        .I5(Q[2]),
        .O(\dc_bias[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h999A555A999A5559)) 
    \dc_bias[3]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\dc_bias_reg[3]_4 ),
        .I3(\dc_bias_reg[3]_3 ),
        .I4(\dc_bias_reg_n_0_[2] ),
        .I5(Q[0]),
        .O(\dc_bias_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h556A556AAAAAAA95)) 
    \dc_bias[3]_i_5 
       (.I0(\dc_bias_reg_n_0_[2] ),
        .I1(\dc_bias_reg[3]_1 ),
        .I2(\dc_bias_reg[3]_2 ),
        .I3(\dc_bias_reg[3]_3 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\dc_bias_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \dc_bias[3]_i_7 
       (.I0(\dc_bias_reg_n_0_[2] ),
        .I1(Q[1]),
        .I2(\encoded_reg[8]_0 ),
        .I3(Q[0]),
        .O(\dc_bias_reg[2]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[2]_i_1_n_0 ),
        .Q(\dc_bias_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D),
        .Q(Q[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \encoded[2]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\dc_bias_reg_n_0_[2] ),
        .O(\dc_bias_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hD)) 
    \encoded[8]_i_1 
       (.I0(\encoded_reg[8]_1 ),
        .I1(\encoded_reg[8]_0 ),
        .O(\encoded[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3FBFFFBF)) 
    \encoded[9]_i_1 
       (.I0(\dc_bias_reg[1]_0 ),
        .I1(v_blank_is_low),
        .I2(h_blank_is_low),
        .I3(\dc_bias_reg[0]_0 ),
        .I4(\encoded_reg[8]_0 ),
        .O(\encoded[9]_i_1_n_0 ));
  FDRE \encoded_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded_reg[2]_0 [0]),
        .Q(\encoded_reg[9]_0 [0]),
        .R(1'b0));
  FDRE \encoded_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded_reg[2]_0 [1]),
        .Q(\encoded_reg[9]_0 [1]),
        .R(1'b0));
  FDRE \encoded_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded[8]_i_1_n_0 ),
        .Q(\encoded_reg[9]_0 [2]),
        .R(1'b0));
  FDRE \encoded_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded[9]_i_1_n_0 ),
        .Q(\encoded_reg[9]_0 [3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TDMS_encoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1
   (Q,
    D,
    \encoded_reg[9]_0 ,
    SR,
    CLK,
    \encoded_reg[2]_0 ,
    \encoded_reg[9]_1 );
  output [0:0]Q;
  output [3:0]D;
  input \encoded_reg[9]_0 ;
  input [0:0]SR;
  input CLK;
  input [1:0]\encoded_reg[2]_0 ;
  input \encoded_reg[9]_1 ;

  wire CLK;
  wire [3:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \dc_bias[0]_i_1__0_n_0 ;
  wire \dc_bias[1]_i_1__0_n_0 ;
  wire \dc_bias[2]_i_1__1_n_0 ;
  wire \dc_bias[3]_i_2__0_n_0 ;
  wire \dc_bias_reg_n_0_[0] ;
  wire \dc_bias_reg_n_0_[1] ;
  wire \dc_bias_reg_n_0_[2] ;
  wire \encoded[8]_i_1_n_0 ;
  wire \encoded[9]_i_1_n_0 ;
  wire [1:0]\encoded_reg[2]_0 ;
  wire \encoded_reg[9]_0 ;
  wire \encoded_reg[9]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dc_bias[0]_i_1__0 
       (.I0(Q),
        .I1(\dc_bias_reg_n_0_[0] ),
        .O(\dc_bias[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \dc_bias[1]_i_1__0 
       (.I0(\dc_bias_reg_n_0_[1] ),
        .I1(\dc_bias_reg_n_0_[0] ),
        .I2(\encoded_reg[9]_0 ),
        .I3(Q),
        .O(\dc_bias[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h95565555)) 
    \dc_bias[2]_i_1__1 
       (.I0(\dc_bias_reg_n_0_[2] ),
        .I1(\dc_bias_reg_n_0_[1] ),
        .I2(\encoded_reg[9]_0 ),
        .I3(\dc_bias_reg_n_0_[0] ),
        .I4(Q),
        .O(\dc_bias[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h070F0F2F)) 
    \dc_bias[3]_i_2__0 
       (.I0(Q),
        .I1(\encoded_reg[9]_0 ),
        .I2(\dc_bias_reg_n_0_[2] ),
        .I3(\dc_bias_reg_n_0_[1] ),
        .I4(\dc_bias_reg_n_0_[0] ),
        .O(\dc_bias[3]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[0]_i_1__0_n_0 ),
        .Q(\dc_bias_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[1]_i_1__0_n_0 ),
        .Q(\dc_bias_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[2]_i_1__1_n_0 ),
        .Q(\dc_bias_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[3]_i_2__0_n_0 ),
        .Q(Q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \encoded[8]_i_1 
       (.I0(\encoded_reg[9]_1 ),
        .I1(\encoded_reg[9]_0 ),
        .O(\encoded[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \encoded[9]_i_1 
       (.I0(\encoded_reg[9]_1 ),
        .I1(Q),
        .I2(\encoded_reg[9]_0 ),
        .O(\encoded[9]_i_1_n_0 ));
  FDRE \encoded_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded_reg[2]_0 [0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE \encoded_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded_reg[2]_0 [1]),
        .Q(D[1]),
        .R(1'b0));
  FDRE \encoded_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded[8]_i_1_n_0 ),
        .Q(D[2]),
        .R(1'b0));
  FDRE \encoded_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded[9]_i_1_n_0 ),
        .Q(D[3]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TWICtl
   (D,
    E,
    \state_reg[0] ,
    \state_reg[2] ,
    scl,
    sda,
    CLK,
    Q,
    stb,
    \FSM_gray_state_reg[2]_0 ,
    s00_axi_aresetn,
    \state_reg[1] ,
    \state_reg[1]_0 ,
    \state_reg[1]_1 ,
    \initA_reg[0] ,
    \initA_reg[0]_0 ,
    \initA_reg[0]_1 ,
    \state_reg[2]_0 ,
    \state_reg[2]_1 ,
    \state_reg[3] ,
    initEn_reg,
    \state_reg[1]_2 ,
    \state_reg[1]_3 ,
    initEn_reg_0,
    initEn);
  output [3:0]D;
  output [0:0]E;
  output [0:0]\state_reg[0] ;
  output \state_reg[2] ;
  inout scl;
  inout sda;
  input CLK;
  input [7:0]Q;
  input stb;
  input \FSM_gray_state_reg[2]_0 ;
  input s00_axi_aresetn;
  input [1:0]\state_reg[1] ;
  input \state_reg[1]_0 ;
  input \state_reg[1]_1 ;
  input \initA_reg[0] ;
  input [6:0]\initA_reg[0]_0 ;
  input \initA_reg[0]_1 ;
  input \state_reg[2]_0 ;
  input [3:0]\state_reg[2]_1 ;
  input \state_reg[3] ;
  input initEn_reg;
  input \state_reg[1]_2 ;
  input \state_reg[1]_3 ;
  input initEn_reg_0;
  input initEn;

  wire CLK;
  wire [3:0]D;
  wire DONE_O_i_1_n_0;
  wire DONE_O_i_2_n_0;
  wire DONE_O_i_3_n_0;
  wire DONE_O_i_4_n_0;
  wire [0:0]E;
  wire ERR_O_i_1_n_0;
  wire ERR_O_i_2_n_0;
  wire \FSM_gray_state[0]_i_1_n_0 ;
  wire \FSM_gray_state[0]_i_2_n_0 ;
  wire \FSM_gray_state[1]_i_1_n_0 ;
  wire \FSM_gray_state[1]_i_2_n_0 ;
  wire \FSM_gray_state[2]_i_1_n_0 ;
  wire \FSM_gray_state[2]_i_2_n_0 ;
  wire \FSM_gray_state[2]_i_3_n_0 ;
  wire \FSM_gray_state[3]_i_10_n_0 ;
  wire \FSM_gray_state[3]_i_11_n_0 ;
  wire \FSM_gray_state[3]_i_1_n_0 ;
  wire \FSM_gray_state[3]_i_2_n_0 ;
  wire \FSM_gray_state[3]_i_3_n_0 ;
  wire \FSM_gray_state[3]_i_4_n_0 ;
  wire \FSM_gray_state[3]_i_5_n_0 ;
  wire \FSM_gray_state[3]_i_6_n_0 ;
  wire \FSM_gray_state[3]_i_7_n_0 ;
  wire \FSM_gray_state[3]_i_8_n_0 ;
  wire \FSM_gray_state[3]_i_9_n_0 ;
  wire \FSM_gray_state_reg[2]_0 ;
  wire [7:0]Q;
  wire addrNData;
  wire addrNData_i_1_n_0;
  wire [2:0]bitCount;
  wire \bitCount[0]_i_1_n_0 ;
  wire \bitCount[1]_i_1_n_0 ;
  wire \bitCount[2]_i_1_n_0 ;
  wire [6:0]busFreeCnt0;
  wire busFreeCnt0_1;
  wire \busFreeCnt[6]_i_3_n_0 ;
  wire [6:0]busFreeCnt_reg;
  wire busState0;
  wire \busState[0]_i_1_n_0 ;
  wire \busState[1]_i_1_n_0 ;
  wire \busState_reg_n_0_[0] ;
  wire \busState_reg_n_0_[1] ;
  wire dScl;
  wire [7:1]dataByte;
  wire dataByte0;
  wire \dataByte[7]_i_1_n_0 ;
  wire \dataByte[7]_i_3_n_0 ;
  wire \dataByte[7]_i_4_n_0 ;
  wire \dataByte[7]_i_5_n_0 ;
  wire \dataByte[7]_i_6_n_0 ;
  wire \dataByte[7]_i_7_n_0 ;
  wire \dataByte[7]_i_8_n_0 ;
  wire \dataByte[7]_i_9_n_0 ;
  wire \dataByte_reg_n_0_[0] ;
  wire ddSda;
  wire done;
  wire error;
  wire \initA[6]_i_4_n_0 ;
  wire \initA_reg[0] ;
  wire [6:0]\initA_reg[0]_0 ;
  wire \initA_reg[0]_1 ;
  wire initEn;
  wire initEn_i_2_n_0;
  wire initEn_reg;
  wire initEn_reg_0;
  wire int_Rst;
  wire int_Rst_i_1_n_0;
  wire [0:0]p_0_in;
  wire [7:0]p_1_in;
  wire rScl;
  wire rScl_i_1_n_0;
  wire rScl_i_2_n_0;
  wire rSda;
  wire rSda_i_1_n_0;
  wire rSda_i_2_n_0;
  wire rSda_i_3_n_0;
  wire s00_axi_aresetn;
  wire scl;
  wire [6:0]sclCnt0;
  wire sclCnt0_0;
  wire \sclCnt[6]_i_2_n_0 ;
  wire \sclCnt[6]_i_4_n_0 ;
  wire [6:0]sclCnt_reg;
  wire scl_INST_0_i_1_n_0;
  wire sda;
  wire sda_INST_0_i_1_n_0;
  wire [3:0]state;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_5_n_0 ;
  wire \state[3]_i_5_n_0 ;
  wire [0:0]\state_reg[0] ;
  wire [1:0]\state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[1]_2 ;
  wire \state_reg[1]_3 ;
  wire \state_reg[2] ;
  wire \state_reg[2]_0 ;
  wire [3:0]\state_reg[2]_1 ;
  wire \state_reg[3] ;
  wire stb;
  wire \subState[0]_i_1_n_0 ;
  wire \subState[1]_i_1_n_0 ;
  wire \subState[1]_i_2_n_0 ;
  wire \subState[1]_i_3_n_0 ;
  wire \subState_reg_n_0_[0] ;
  wire \subState_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'hFFFFFFFF23222323)) 
    DONE_O_i_1
       (.I0(DONE_O_i_2_n_0),
        .I1(\dataByte[7]_i_4_n_0 ),
        .I2(DONE_O_i_3_n_0),
        .I3(p_0_in),
        .I4(addrNData),
        .I5(DONE_O_i_4_n_0),
        .O(DONE_O_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    DONE_O_i_2
       (.I0(bitCount[0]),
        .I1(bitCount[1]),
        .I2(bitCount[2]),
        .I3(state[0]),
        .I4(\FSM_gray_state[2]_i_3_n_0 ),
        .O(DONE_O_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    DONE_O_i_3
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[0]),
        .O(DONE_O_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    DONE_O_i_4
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\FSM_gray_state[3]_i_7_n_0 ),
        .O(DONE_O_i_4_n_0));
  FDRE DONE_O_reg
       (.C(CLK),
        .CE(1'b1),
        .D(DONE_O_i_1_n_0),
        .Q(done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0030000500000005)) 
    ERR_O_i_1
       (.I0(\FSM_gray_state[3]_i_7_n_0 ),
        .I1(\dataByte[7]_i_4_n_0 ),
        .I2(state[0]),
        .I3(ERR_O_i_2_n_0),
        .I4(state[1]),
        .I5(p_0_in),
        .O(ERR_O_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ERR_O_i_2
       (.I0(state[2]),
        .I1(state[3]),
        .O(ERR_O_i_2_n_0));
  FDRE ERR_O_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ERR_O_i_1_n_0),
        .Q(error),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0161)) 
    \FSM_gray_state[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(\FSM_gray_state[3]_i_7_n_0 ),
        .I4(\FSM_gray_state[0]_i_2_n_0 ),
        .I5(state[3]),
        .O(\FSM_gray_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h11011111)) 
    \FSM_gray_state[0]_i_2 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(\FSM_gray_state_reg[2]_0 ),
        .I3(int_Rst),
        .I4(stb),
        .O(\FSM_gray_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CC000322)) 
    \FSM_gray_state[1]_i_1 
       (.I0(\FSM_gray_state[3]_i_7_n_0 ),
        .I1(state[0]),
        .I2(\FSM_gray_state[1]_i_2_n_0 ),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[3]),
        .O(\FSM_gray_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_gray_state[1]_i_2 
       (.I0(int_Rst),
        .I1(stb),
        .O(\FSM_gray_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAAAFAAAFAAAA)) 
    \FSM_gray_state[2]_i_1 
       (.I0(\FSM_gray_state[2]_i_2_n_0 ),
        .I1(\FSM_gray_state[3]_i_9_n_0 ),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\FSM_gray_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808FF0808)) 
    \FSM_gray_state[2]_i_2 
       (.I0(\FSM_gray_state[3]_i_7_n_0 ),
        .I1(\FSM_gray_state[3]_i_8_n_0 ),
        .I2(state[3]),
        .I3(\FSM_gray_state[2]_i_3_n_0 ),
        .I4(\FSM_gray_state_reg[2]_0 ),
        .I5(addrNData),
        .O(\FSM_gray_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_gray_state[2]_i_3 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[1]),
        .O(\FSM_gray_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFAEEFEEAFAEAFAE)) 
    \FSM_gray_state[3]_i_1 
       (.I0(\FSM_gray_state[3]_i_3_n_0 ),
        .I1(\FSM_gray_state[3]_i_4_n_0 ),
        .I2(\FSM_gray_state[3]_i_5_n_0 ),
        .I3(\FSM_gray_state[3]_i_6_n_0 ),
        .I4(\FSM_gray_state[3]_i_7_n_0 ),
        .I5(\FSM_gray_state[3]_i_8_n_0 ),
        .O(\FSM_gray_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \FSM_gray_state[3]_i_10 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(s00_axi_aresetn),
        .O(\FSM_gray_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \FSM_gray_state[3]_i_11 
       (.I0(\subState_reg_n_0_[1] ),
        .I1(\subState_reg_n_0_[0] ),
        .I2(state[3]),
        .I3(state[2]),
        .I4(\dataByte[7]_i_8_n_0 ),
        .I5(\subState[1]_i_2_n_0 ),
        .O(\FSM_gray_state[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h002C000000200000)) 
    \FSM_gray_state[3]_i_2 
       (.I0(\FSM_gray_state[3]_i_7_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\FSM_gray_state[3]_i_9_n_0 ),
        .O(\FSM_gray_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0008)) 
    \FSM_gray_state[3]_i_3 
       (.I0(\busState_reg_n_0_[0] ),
        .I1(stb),
        .I2(\busState_reg_n_0_[1] ),
        .I3(\FSM_gray_state[3]_i_10_n_0 ),
        .I4(DONE_O_i_4_n_0),
        .I5(\FSM_gray_state[3]_i_11_n_0 ),
        .O(\FSM_gray_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_gray_state[3]_i_4 
       (.I0(state[2]),
        .I1(state[3]),
        .O(\FSM_gray_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \FSM_gray_state[3]_i_5 
       (.I0(\subState_reg_n_0_[1] ),
        .I1(\subState_reg_n_0_[0] ),
        .I2(\subState[1]_i_2_n_0 ),
        .O(\FSM_gray_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EAAA0001)) 
    \FSM_gray_state[3]_i_6 
       (.I0(state[0]),
        .I1(bitCount[2]),
        .I2(bitCount[1]),
        .I3(bitCount[0]),
        .I4(state[1]),
        .I5(state[3]),
        .O(\FSM_gray_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_gray_state[3]_i_7 
       (.I0(dScl),
        .I1(p_0_in),
        .I2(rSda),
        .O(\FSM_gray_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_gray_state[3]_i_8 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\FSM_gray_state[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFAB)) 
    \FSM_gray_state[3]_i_9 
       (.I0(\dataByte_reg_n_0_[0] ),
        .I1(stb),
        .I2(addrNData),
        .I3(int_Rst),
        .O(\FSM_gray_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "stwrite:0000,stread:0010,ststart:0100,stidle:0001,stmnackstart:0110,stmack:0111,stsack:0011,stmnackstop:0101,ststop:1100" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_gray_state_reg[0] 
       (.C(CLK),
        .CE(\FSM_gray_state[3]_i_1_n_0 ),
        .D(\FSM_gray_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stwrite:0000,stread:0010,ststart:0100,stidle:0001,stmnackstart:0110,stmack:0111,stsack:0011,stmnackstop:0101,ststop:1100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_state_reg[1] 
       (.C(CLK),
        .CE(\FSM_gray_state[3]_i_1_n_0 ),
        .D(\FSM_gray_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stwrite:0000,stread:0010,ststart:0100,stidle:0001,stmnackstart:0110,stmack:0111,stsack:0011,stmnackstop:0101,ststop:1100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_state_reg[2] 
       (.C(CLK),
        .CE(\FSM_gray_state[3]_i_1_n_0 ),
        .D(\FSM_gray_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stwrite:0000,stread:0010,ststart:0100,stidle:0001,stmnackstart:0110,stmack:0111,stsack:0011,stmnackstop:0101,ststop:1100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_state_reg[3] 
       (.C(CLK),
        .CE(\FSM_gray_state[3]_i_1_n_0 ),
        .D(\FSM_gray_state[3]_i_2_n_0 ),
        .Q(state[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE0)) 
    addrNData_i_1
       (.I0(addrNData),
        .I1(\dataByte[7]_i_3_n_0 ),
        .I2(\dataByte[7]_i_6_n_0 ),
        .O(addrNData_i_1_n_0));
  FDRE addrNData_reg
       (.C(CLK),
        .CE(1'b1),
        .D(addrNData_i_1_n_0),
        .Q(addrNData),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFF6F)) 
    \bitCount[0]_i_1 
       (.I0(bitCount[0]),
        .I1(dataByte0),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(\dataByte[7]_i_3_n_0 ),
        .O(\bitCount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFFFFA6FF)) 
    \bitCount[1]_i_1 
       (.I0(bitCount[1]),
        .I1(dataByte0),
        .I2(bitCount[0]),
        .I3(\dataByte[7]_i_6_n_0 ),
        .I4(\dataByte[7]_i_3_n_0 ),
        .O(\bitCount[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA6FFFF)) 
    \bitCount[2]_i_1 
       (.I0(bitCount[2]),
        .I1(dataByte0),
        .I2(bitCount[0]),
        .I3(bitCount[1]),
        .I4(\dataByte[7]_i_6_n_0 ),
        .I5(\dataByte[7]_i_3_n_0 ),
        .O(\bitCount[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000408)) 
    \bitCount[2]_i_2 
       (.I0(\subState_reg_n_0_[1] ),
        .I1(\subState_reg_n_0_[0] ),
        .I2(\subState[1]_i_2_n_0 ),
        .I3(state[1]),
        .I4(state[0]),
        .I5(ERR_O_i_2_n_0),
        .O(dataByte0));
  FDRE #(
    .INIT(1'b1)) 
    \bitCount_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitCount[0]_i_1_n_0 ),
        .Q(bitCount[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bitCount_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitCount[1]_i_1_n_0 ),
        .Q(bitCount[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bitCount_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitCount[2]_i_1_n_0 ),
        .Q(bitCount[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \busFreeCnt[0]_i_1 
       (.I0(busFreeCnt_reg[0]),
        .O(busFreeCnt0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \busFreeCnt[1]_i_1 
       (.I0(busFreeCnt_reg[1]),
        .I1(busFreeCnt_reg[0]),
        .O(busFreeCnt0[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \busFreeCnt[2]_i_1 
       (.I0(busFreeCnt_reg[2]),
        .I1(busFreeCnt_reg[0]),
        .I2(busFreeCnt_reg[1]),
        .O(busFreeCnt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \busFreeCnt[3]_i_1 
       (.I0(busFreeCnt_reg[3]),
        .I1(busFreeCnt_reg[1]),
        .I2(busFreeCnt_reg[0]),
        .I3(busFreeCnt_reg[2]),
        .O(busFreeCnt0[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \busFreeCnt[4]_i_1 
       (.I0(busFreeCnt_reg[4]),
        .I1(busFreeCnt_reg[2]),
        .I2(busFreeCnt_reg[0]),
        .I3(busFreeCnt_reg[1]),
        .I4(busFreeCnt_reg[3]),
        .O(busFreeCnt0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \busFreeCnt[5]_i_1 
       (.I0(busFreeCnt_reg[5]),
        .I1(busFreeCnt_reg[3]),
        .I2(busFreeCnt_reg[1]),
        .I3(busFreeCnt_reg[0]),
        .I4(busFreeCnt_reg[2]),
        .I5(busFreeCnt_reg[4]),
        .O(busFreeCnt0[5]));
  LUT3 #(
    .INIT(8'hDF)) 
    \busFreeCnt[6]_i_1 
       (.I0(p_0_in),
        .I1(int_Rst),
        .I2(dScl),
        .O(busFreeCnt0_1));
  LUT2 #(
    .INIT(4'h9)) 
    \busFreeCnt[6]_i_2 
       (.I0(\busFreeCnt[6]_i_3_n_0 ),
        .I1(busFreeCnt_reg[6]),
        .O(busFreeCnt0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \busFreeCnt[6]_i_3 
       (.I0(busFreeCnt_reg[4]),
        .I1(busFreeCnt_reg[2]),
        .I2(busFreeCnt_reg[0]),
        .I3(busFreeCnt_reg[1]),
        .I4(busFreeCnt_reg[3]),
        .I5(busFreeCnt_reg[5]),
        .O(\busFreeCnt[6]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[0]),
        .Q(busFreeCnt_reg[0]),
        .S(busFreeCnt0_1));
  FDRE #(
    .INIT(1'b0)) 
    \busFreeCnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[1]),
        .Q(busFreeCnt_reg[1]),
        .R(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[2]),
        .Q(busFreeCnt_reg[2]),
        .S(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[3]),
        .Q(busFreeCnt_reg[3]),
        .S(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[4]),
        .Q(busFreeCnt_reg[4]),
        .S(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[5]),
        .Q(busFreeCnt_reg[5]),
        .S(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[6]),
        .Q(busFreeCnt_reg[6]),
        .S(busFreeCnt0_1));
  LUT6 #(
    .INIT(64'h00DFFFFF00DF0000)) 
    \busState[0]_i_1 
       (.I0(dScl),
        .I1(p_0_in),
        .I2(ddSda),
        .I3(int_Rst),
        .I4(busState0),
        .I5(\busState_reg_n_0_[0] ),
        .O(\busState[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200000)) 
    \busState[1]_i_1 
       (.I0(ddSda),
        .I1(p_0_in),
        .I2(dScl),
        .I3(int_Rst),
        .I4(busState0),
        .I5(\busState_reg_n_0_[1] ),
        .O(\busState[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF20FF20FF20FFFF)) 
    \busState[1]_i_2 
       (.I0(dScl),
        .I1(p_0_in),
        .I2(ddSda),
        .I3(int_Rst),
        .I4(busFreeCnt_reg[6]),
        .I5(\busFreeCnt[6]_i_3_n_0 ),
        .O(busState0));
  FDRE #(
    .INIT(1'b0)) 
    \busState_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\busState[0]_i_1_n_0 ),
        .Q(\busState_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \busState_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\busState[1]_i_1_n_0 ),
        .Q(\busState_reg_n_0_[1] ),
        .R(1'b0));
  FDRE dScl_reg
       (.C(CLK),
        .CE(1'b1),
        .D(scl),
        .Q(dScl),
        .R(1'b0));
  FDRE dSda_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sda),
        .Q(p_0_in),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8F88)) 
    \dataByte[0]_i_1 
       (.I0(p_0_in),
        .I1(\dataByte[7]_i_7_n_0 ),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(Q[0]),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'hEFEA)) 
    \dataByte[1]_i_1 
       (.I0(\dataByte[7]_i_3_n_0 ),
        .I1(\dataByte_reg_n_0_[0] ),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(Q[1]),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hEFEA)) 
    \dataByte[2]_i_1 
       (.I0(\dataByte[7]_i_3_n_0 ),
        .I1(dataByte[1]),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(Q[2]),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hF444)) 
    \dataByte[3]_i_1 
       (.I0(\dataByte[7]_i_6_n_0 ),
        .I1(Q[3]),
        .I2(dataByte[2]),
        .I3(\dataByte[7]_i_7_n_0 ),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'hEFEA)) 
    \dataByte[4]_i_1 
       (.I0(\dataByte[7]_i_3_n_0 ),
        .I1(dataByte[3]),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(Q[4]),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'hEFEA)) 
    \dataByte[5]_i_1 
       (.I0(\dataByte[7]_i_3_n_0 ),
        .I1(dataByte[4]),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(Q[5]),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'hEFEA)) 
    \dataByte[6]_i_1 
       (.I0(\dataByte[7]_i_3_n_0 ),
        .I1(dataByte[5]),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(Q[6]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAABA)) 
    \dataByte[7]_i_1 
       (.I0(\dataByte[7]_i_3_n_0 ),
        .I1(\dataByte[7]_i_4_n_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[3]),
        .I5(\dataByte[7]_i_5_n_0 ),
        .O(\dataByte[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \dataByte[7]_i_2 
       (.I0(\dataByte[7]_i_6_n_0 ),
        .I1(Q[7]),
        .I2(dataByte[6]),
        .I3(\dataByte[7]_i_7_n_0 ),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \dataByte[7]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(\subState[1]_i_2_n_0 ),
        .O(\dataByte[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \dataByte[7]_i_4 
       (.I0(\subState_reg_n_0_[0] ),
        .I1(\subState_reg_n_0_[1] ),
        .I2(\subState[1]_i_2_n_0 ),
        .O(\dataByte[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000FF0000)) 
    \dataByte[7]_i_5 
       (.I0(\subState_reg_n_0_[1] ),
        .I1(\dataByte[7]_i_8_n_0 ),
        .I2(state[3]),
        .I3(\subState[1]_i_2_n_0 ),
        .I4(\subState_reg_n_0_[0] ),
        .I5(DONE_O_i_3_n_0),
        .O(\dataByte[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \dataByte[7]_i_6 
       (.I0(\FSM_gray_state[3]_i_5_n_0 ),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\dataByte[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFAFF)) 
    \dataByte[7]_i_7 
       (.I0(state[1]),
        .I1(\dataByte[7]_i_9_n_0 ),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(\subState[1]_i_2_n_0 ),
        .O(\dataByte[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \dataByte[7]_i_8 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\dataByte[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataByte[7]_i_9 
       (.I0(\subState_reg_n_0_[0] ),
        .I1(\subState_reg_n_0_[1] ),
        .O(\dataByte[7]_i_9_n_0 ));
  FDRE \dataByte_reg[0] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\dataByte_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dataByte_reg[1] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(dataByte[1]),
        .R(1'b0));
  FDRE \dataByte_reg[2] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(dataByte[2]),
        .R(1'b0));
  FDRE \dataByte_reg[3] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(dataByte[3]),
        .R(1'b0));
  FDRE \dataByte_reg[4] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(dataByte[4]),
        .R(1'b0));
  FDRE \dataByte_reg[5] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(dataByte[5]),
        .R(1'b0));
  FDRE \dataByte_reg[6] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(dataByte[6]),
        .R(1'b0));
  FDRE \dataByte_reg[7] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(dataByte[7]),
        .R(1'b0));
  FDRE ddSda_reg
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(ddSda),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAAAAA)) 
    \initA[6]_i_1 
       (.I0(\initA_reg[0] ),
        .I1(\initA[6]_i_4_n_0 ),
        .I2(\initA_reg[0]_0 [0]),
        .I3(\initA_reg[0]_0 [1]),
        .I4(\initA_reg[0]_0 [2]),
        .I5(\initA_reg[0]_1 ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \initA[6]_i_4 
       (.I0(\initA_reg[0]_0 [5]),
        .I1(\initA_reg[0]_0 [6]),
        .I2(\initA_reg[0]_0 [3]),
        .I3(\initA_reg[0]_0 [4]),
        .I4(error),
        .I5(done),
        .O(\initA[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h75774544)) 
    initEn_i_1
       (.I0(\state_reg[2]_1 [2]),
        .I1(initEn_i_2_n_0),
        .I2(initEn_reg),
        .I3(initEn_reg_0),
        .I4(initEn),
        .O(\state_reg[2] ));
  LUT4 #(
    .INIT(16'h4000)) 
    initEn_i_2
       (.I0(error),
        .I1(done),
        .I2(s00_axi_aresetn),
        .I3(\state_reg[2]_0 ),
        .O(initEn_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFDFFFF0000FFFF)) 
    int_Rst_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(s00_axi_aresetn),
        .I5(int_Rst),
        .O(int_Rst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_Rst_reg
       (.C(CLK),
        .CE(1'b1),
        .D(int_Rst_i_1_n_0),
        .Q(int_Rst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFBFBFFF3C3C3C28)) 
    rScl_i_1
       (.I0(state[3]),
        .I1(\subState_reg_n_0_[0] ),
        .I2(\subState_reg_n_0_[1] ),
        .I3(state[2]),
        .I4(rScl_i_2_n_0),
        .I5(rScl),
        .O(rScl_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    rScl_i_2
       (.I0(state[1]),
        .I1(state[0]),
        .O(rScl_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    rScl_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rScl_i_1_n_0),
        .Q(rScl),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hABEAFFFFABEA0000)) 
    rSda_i_1
       (.I0(rSda_i_2_n_0),
        .I1(state[3]),
        .I2(\subState_reg_n_0_[1] ),
        .I3(\subState_reg_n_0_[0] ),
        .I4(rSda_i_3_n_0),
        .I5(rSda),
        .O(rSda_i_1_n_0));
  LUT6 #(
    .INIT(64'h0003000F000F000E)) 
    rSda_i_2
       (.I0(dataByte[7]),
        .I1(state[0]),
        .I2(\subState_reg_n_0_[1] ),
        .I3(state[3]),
        .I4(state[2]),
        .I5(state[1]),
        .O(rSda_i_2_n_0));
  LUT6 #(
    .INIT(64'h0100ABAAABAAFFFB)) 
    rSda_i_3
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(\subState_reg_n_0_[0] ),
        .I5(\subState_reg_n_0_[1] ),
        .O(rSda_i_3_n_0));
  FDRE #(
    .INIT(1'b1)) 
    rSda_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rSda_i_1_n_0),
        .Q(rSda),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \sclCnt[0]_i_1 
       (.I0(sclCnt_reg[0]),
        .O(sclCnt0[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \sclCnt[1]_i_1 
       (.I0(sclCnt_reg[1]),
        .I1(sclCnt_reg[0]),
        .O(sclCnt0[1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \sclCnt[2]_i_1 
       (.I0(sclCnt_reg[2]),
        .I1(sclCnt_reg[0]),
        .I2(sclCnt_reg[1]),
        .O(sclCnt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \sclCnt[3]_i_1 
       (.I0(sclCnt_reg[3]),
        .I1(sclCnt_reg[1]),
        .I2(sclCnt_reg[0]),
        .I3(sclCnt_reg[2]),
        .O(sclCnt0[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \sclCnt[4]_i_1 
       (.I0(sclCnt_reg[4]),
        .I1(sclCnt_reg[2]),
        .I2(sclCnt_reg[0]),
        .I3(sclCnt_reg[1]),
        .I4(sclCnt_reg[3]),
        .O(sclCnt0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \sclCnt[5]_i_1 
       (.I0(sclCnt_reg[5]),
        .I1(sclCnt_reg[3]),
        .I2(sclCnt_reg[1]),
        .I3(sclCnt_reg[0]),
        .I4(sclCnt_reg[2]),
        .I5(sclCnt_reg[4]),
        .O(sclCnt0[5]));
  LUT5 #(
    .INIT(32'h0100FFFF)) 
    \sclCnt[6]_i_1 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\subState[1]_i_2_n_0 ),
        .O(sclCnt0_0));
  LUT2 #(
    .INIT(4'hB)) 
    \sclCnt[6]_i_2 
       (.I0(dScl),
        .I1(rScl),
        .O(\sclCnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \sclCnt[6]_i_3 
       (.I0(sclCnt_reg[6]),
        .I1(\sclCnt[6]_i_4_n_0 ),
        .O(sclCnt0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sclCnt[6]_i_4 
       (.I0(sclCnt_reg[4]),
        .I1(sclCnt_reg[2]),
        .I2(sclCnt_reg[0]),
        .I3(sclCnt_reg[1]),
        .I4(sclCnt_reg[3]),
        .I5(sclCnt_reg[5]),
        .O(\sclCnt[6]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \sclCnt_reg[0] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[0]),
        .Q(sclCnt_reg[0]),
        .S(sclCnt0_0));
  FDSE #(
    .INIT(1'b0)) 
    \sclCnt_reg[1] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[1]),
        .Q(sclCnt_reg[1]),
        .S(sclCnt0_0));
  FDSE #(
    .INIT(1'b1)) 
    \sclCnt_reg[2] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[2]),
        .Q(sclCnt_reg[2]),
        .S(sclCnt0_0));
  FDSE #(
    .INIT(1'b1)) 
    \sclCnt_reg[3] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[3]),
        .Q(sclCnt_reg[3]),
        .S(sclCnt0_0));
  FDSE #(
    .INIT(1'b1)) 
    \sclCnt_reg[4] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[4]),
        .Q(sclCnt_reg[4]),
        .S(sclCnt0_0));
  FDRE #(
    .INIT(1'b1)) 
    \sclCnt_reg[5] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[5]),
        .Q(sclCnt_reg[5]),
        .R(sclCnt0_0));
  FDRE #(
    .INIT(1'b1)) 
    \sclCnt_reg[6] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[6]),
        .Q(sclCnt_reg[6]),
        .R(sclCnt0_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    scl_INST_0
       (.I0(1'b0),
        .I1(scl_INST_0_i_1_n_0),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(scl));
  LUT1 #(
    .INIT(2'h1)) 
    scl_INST_0_i_1
       (.I0(rScl),
        .O(scl_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sda_INST_0
       (.I0(1'b0),
        .I1(sda_INST_0_i_1_n_0),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(sda));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT1 #(
    .INIT(2'h1)) 
    sda_INST_0_i_1
       (.I0(rSda),
        .O(sda_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00FF000B)) 
    \state[0]_i_1 
       (.I0(\state_reg[2]_1 [1]),
        .I1(\state_reg[2]_1 [0]),
        .I2(\state_reg[2]_1 [2]),
        .I3(error),
        .I4(\state_reg[2]_1 [3]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFDFF00FF00)) 
    \state[1]_i_1 
       (.I0(\state_reg[1] [0]),
        .I1(\state_reg[1] [1]),
        .I2(\state_reg[1]_0 ),
        .I3(\state[1]_i_3_n_0 ),
        .I4(\state_reg[1]_1 ),
        .I5(\state[1]_i_5_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h05000D0000000000)) 
    \state[1]_i_3 
       (.I0(\state_reg[2]_1 [1]),
        .I1(\state_reg[1]_2 ),
        .I2(error),
        .I3(\state_reg[2]_1 [0]),
        .I4(\initA_reg[0]_0 [0]),
        .I5(\state_reg[1]_3 ),
        .O(\state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \state[1]_i_5 
       (.I0(\state_reg[2]_1 [1]),
        .I1(\state_reg[2]_1 [2]),
        .I2(\state_reg[2]_1 [3]),
        .I3(error),
        .O(\state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF8A)) 
    \state[2]_i_1 
       (.I0(error),
        .I1(\state_reg[2]_1 [3]),
        .I2(\state_reg[2]_1 [2]),
        .I3(\state_reg[2]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h880000005F55CCCC)) 
    \state[3]_i_1 
       (.I0(\state_reg[2]_1 [0]),
        .I1(done),
        .I2(initEn_reg),
        .I3(\state_reg[2]_1 [1]),
        .I4(\state_reg[2]_1 [2]),
        .I5(\state_reg[2]_1 [3]),
        .O(\state_reg[0] ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \state[3]_i_2 
       (.I0(\state_reg[2]_1 [3]),
        .I1(\state_reg[2]_1 [2]),
        .I2(\state_reg[3] ),
        .I3(\initA_reg[0]_0 [1]),
        .I4(\initA_reg[0]_0 [0]),
        .I5(\state[3]_i_5_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \state[3]_i_5 
       (.I0(\initA_reg[0]_0 [4]),
        .I1(\initA_reg[0]_0 [5]),
        .I2(\initA_reg[0]_0 [2]),
        .I3(\initA_reg[0]_0 [3]),
        .I4(error),
        .I5(\initA_reg[0]_0 [6]),
        .O(\state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999909)) 
    \subState[0]_i_1 
       (.I0(\subState_reg_n_0_[0] ),
        .I1(\subState[1]_i_2_n_0 ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[3]),
        .I5(state[2]),
        .O(\subState[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h9A00)) 
    \subState[1]_i_1 
       (.I0(\subState_reg_n_0_[1] ),
        .I1(\subState[1]_i_2_n_0 ),
        .I2(\subState_reg_n_0_[0] ),
        .I3(\subState[1]_i_3_n_0 ),
        .O(\subState[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \subState[1]_i_2 
       (.I0(\sclCnt[6]_i_4_n_0 ),
        .I1(sclCnt_reg[6]),
        .O(\subState[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \subState[1]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .O(\subState[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \subState_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\subState[0]_i_1_n_0 ),
        .Q(\subState_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \subState_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\subState[1]_i_1_n_0 ),
        .Q(\subState_reg_n_0_[1] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_init
   (scl,
    sda,
    CLK,
    s00_axi_aresetn,
    SR);
  inout scl;
  inout sda;
  input CLK;
  input s00_axi_aresetn;
  input [0:0]SR;

  wire CLK;
  wire [0:0]SR;
  wire [6:6]data0;
  wire [7:0]data1;
  wire [7:0]data2;
  wire [7:0]data_i;
  wire \data_i[0]_i_1_n_0 ;
  wire \data_i[0]_i_2_n_0 ;
  wire \data_i[1]_i_1_n_0 ;
  wire \data_i[2]_i_1_n_0 ;
  wire \data_i[3]_i_1_n_0 ;
  wire \data_i[4]_i_1_n_0 ;
  wire \data_i[4]_i_2_n_0 ;
  wire \data_i[5]_i_1_n_0 ;
  wire \data_i[5]_i_2_n_0 ;
  wire \data_i[6]_i_1_n_0 ;
  wire \data_i[6]_i_2_n_0 ;
  wire \data_i[6]_i_3_n_0 ;
  wire \data_i[6]_i_4_n_0 ;
  wire \data_i[7]_i_1_n_0 ;
  wire delayEn;
  wire delayEn_i_1_n_0;
  wire [31:0]delaycnt;
  wire delaycnt0;
  wire delaycnt0_carry__0_i_1_n_0;
  wire delaycnt0_carry__0_i_2_n_0;
  wire delaycnt0_carry__0_i_3_n_0;
  wire delaycnt0_carry__0_i_4_n_0;
  wire delaycnt0_carry__0_n_0;
  wire delaycnt0_carry__0_n_1;
  wire delaycnt0_carry__0_n_2;
  wire delaycnt0_carry__0_n_3;
  wire delaycnt0_carry__0_n_4;
  wire delaycnt0_carry__0_n_5;
  wire delaycnt0_carry__0_n_6;
  wire delaycnt0_carry__0_n_7;
  wire delaycnt0_carry__1_i_1_n_0;
  wire delaycnt0_carry__1_i_2_n_0;
  wire delaycnt0_carry__1_i_3_n_0;
  wire delaycnt0_carry__1_i_4_n_0;
  wire delaycnt0_carry__1_n_0;
  wire delaycnt0_carry__1_n_1;
  wire delaycnt0_carry__1_n_2;
  wire delaycnt0_carry__1_n_3;
  wire delaycnt0_carry__1_n_4;
  wire delaycnt0_carry__1_n_5;
  wire delaycnt0_carry__1_n_6;
  wire delaycnt0_carry__1_n_7;
  wire delaycnt0_carry__2_i_1_n_0;
  wire delaycnt0_carry__2_i_2_n_0;
  wire delaycnt0_carry__2_i_3_n_0;
  wire delaycnt0_carry__2_i_4_n_0;
  wire delaycnt0_carry__2_n_0;
  wire delaycnt0_carry__2_n_1;
  wire delaycnt0_carry__2_n_2;
  wire delaycnt0_carry__2_n_3;
  wire delaycnt0_carry__2_n_4;
  wire delaycnt0_carry__2_n_5;
  wire delaycnt0_carry__2_n_6;
  wire delaycnt0_carry__2_n_7;
  wire delaycnt0_carry__3_i_1_n_0;
  wire delaycnt0_carry__3_i_2_n_0;
  wire delaycnt0_carry__3_i_3_n_0;
  wire delaycnt0_carry__3_i_4_n_0;
  wire delaycnt0_carry__3_n_0;
  wire delaycnt0_carry__3_n_1;
  wire delaycnt0_carry__3_n_2;
  wire delaycnt0_carry__3_n_3;
  wire delaycnt0_carry__3_n_4;
  wire delaycnt0_carry__3_n_5;
  wire delaycnt0_carry__3_n_6;
  wire delaycnt0_carry__3_n_7;
  wire delaycnt0_carry__4_i_1_n_0;
  wire delaycnt0_carry__4_i_2_n_0;
  wire delaycnt0_carry__4_i_3_n_0;
  wire delaycnt0_carry__4_i_4_n_0;
  wire delaycnt0_carry__4_n_0;
  wire delaycnt0_carry__4_n_1;
  wire delaycnt0_carry__4_n_2;
  wire delaycnt0_carry__4_n_3;
  wire delaycnt0_carry__4_n_4;
  wire delaycnt0_carry__4_n_5;
  wire delaycnt0_carry__4_n_6;
  wire delaycnt0_carry__4_n_7;
  wire delaycnt0_carry__5_i_1_n_0;
  wire delaycnt0_carry__5_i_2_n_0;
  wire delaycnt0_carry__5_i_3_n_0;
  wire delaycnt0_carry__5_i_4_n_0;
  wire delaycnt0_carry__5_n_0;
  wire delaycnt0_carry__5_n_1;
  wire delaycnt0_carry__5_n_2;
  wire delaycnt0_carry__5_n_3;
  wire delaycnt0_carry__5_n_4;
  wire delaycnt0_carry__5_n_5;
  wire delaycnt0_carry__5_n_6;
  wire delaycnt0_carry__5_n_7;
  wire delaycnt0_carry__6_i_1_n_0;
  wire delaycnt0_carry__6_i_2_n_0;
  wire delaycnt0_carry__6_i_3_n_0;
  wire delaycnt0_carry__6_n_2;
  wire delaycnt0_carry__6_n_3;
  wire delaycnt0_carry__6_n_5;
  wire delaycnt0_carry__6_n_6;
  wire delaycnt0_carry__6_n_7;
  wire delaycnt0_carry_i_1_n_0;
  wire delaycnt0_carry_i_2_n_0;
  wire delaycnt0_carry_i_3_n_0;
  wire delaycnt0_carry_i_4_n_0;
  wire delaycnt0_carry_n_0;
  wire delaycnt0_carry_n_1;
  wire delaycnt0_carry_n_2;
  wire delaycnt0_carry_n_3;
  wire delaycnt0_carry_n_4;
  wire delaycnt0_carry_n_5;
  wire delaycnt0_carry_n_6;
  wire delaycnt0_carry_n_7;
  wire \delaycnt[0]_i_1_n_0 ;
  wire \initA[0]_i_1_n_0 ;
  wire \initA[6]_i_3_n_0 ;
  wire \initA[6]_i_5_n_0 ;
  wire [6:0]initA_reg;
  wire initEn;
  wire initEn_i_3_n_0;
  wire \initWord[0]_i_1_n_0 ;
  wire \initWord[10]_i_1_n_0 ;
  wire \initWord[11]_i_1_n_0 ;
  wire \initWord[12]_i_1_n_0 ;
  wire \initWord[13]_i_1_n_0 ;
  wire \initWord[14]_i_1_n_0 ;
  wire \initWord[15]_i_1_n_0 ;
  wire \initWord[16]_i_1_n_0 ;
  wire \initWord[17]_i_1_n_0 ;
  wire \initWord[18]_i_1_n_0 ;
  wire \initWord[19]_i_1_n_0 ;
  wire \initWord[20]_i_1_n_0 ;
  wire \initWord[21]_i_1_n_0 ;
  wire \initWord[23]_i_1_n_0 ;
  wire \initWord[30]_i_1_n_0 ;
  wire \initWord[30]_i_2_n_0 ;
  wire \initWord[30]_i_3_n_0 ;
  wire \initWord[5]_i_1_n_0 ;
  wire \initWord[8]_i_1_n_0 ;
  wire \initWord[9]_i_1_n_0 ;
  wire \initWord_reg_n_0_[0] ;
  wire \initWord_reg_n_0_[5] ;
  wire msg_i_1_n_0;
  wire msg_reg_n_0;
  wire [6:1]p_1_in__0;
  wire s00_axi_aresetn;
  wire scl;
  wire sda;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[1]_i_6_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[3]_i_10_n_0 ;
  wire \state[3]_i_11_n_0 ;
  wire \state[3]_i_12_n_0 ;
  wire \state[3]_i_13_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire \state[3]_i_6_n_0 ;
  wire \state[3]_i_7_n_0 ;
  wire \state[3]_i_8_n_0 ;
  wire \state[3]_i_9_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire stb;
  wire stb_i_1_n_0;
  wire twi_controller_n_0;
  wire twi_controller_n_1;
  wire twi_controller_n_2;
  wire twi_controller_n_3;
  wire twi_controller_n_4;
  wire twi_controller_n_5;
  wire twi_controller_n_6;
  wire [3:2]NLW_delaycnt0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_delaycnt0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFF7F747F70)) 
    \data_i[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(data2[0]),
        .I5(\data_i[0]_i_2_n_0 ),
        .O(\data_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74FF444474444444)) 
    \data_i[0]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\initWord_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(data1[0]),
        .O(\data_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A000C0000)) 
    \data_i[1]_i_1 
       (.I0(data2[1]),
        .I1(data1[1]),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\data_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hAAEEFAAA)) 
    \data_i[2]_i_1 
       (.I0(\data_i[5]_i_2_n_0 ),
        .I1(data1[2]),
        .I2(data2[2]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\data_i[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAEEFAAA)) 
    \data_i[3]_i_1 
       (.I0(\data_i[5]_i_2_n_0 ),
        .I1(data1[3]),
        .I2(data2[3]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\data_i[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCAA0000F0000000)) 
    \data_i[4]_i_1 
       (.I0(data1[4]),
        .I1(\initWord_reg_n_0_[5] ),
        .I2(data2[4]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\data_i[4]_i_2_n_0 ),
        .I5(\state_reg_n_0_[0] ),
        .O(\data_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \data_i[4]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\data_i[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAEEFAAA)) 
    \data_i[5]_i_1 
       (.I0(\data_i[5]_i_2_n_0 ),
        .I1(data1[5]),
        .I2(data2[5]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\data_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h3EFCFCFC)) 
    \data_i[5]_i_2 
       (.I0(\initWord_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\data_i[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAEAAAEAAAEA)) 
    \data_i[6]_i_1 
       (.I0(\data_i[6]_i_2_n_0 ),
        .I1(data0),
        .I2(\data_i[6]_i_3_n_0 ),
        .I3(\state[3]_i_4_n_0 ),
        .I4(\data_i[6]_i_4_n_0 ),
        .I5(data2[6]),
        .O(\data_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0FC0000A00C0000)) 
    \data_i[6]_i_2 
       (.I0(\initWord_reg_n_0_[5] ),
        .I1(data0),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\data_i[4]_i_2_n_0 ),
        .I5(data1[7]),
        .O(\data_i[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data_i[6]_i_3 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\data_i[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \data_i[6]_i_4 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\data_i[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A000C0000)) 
    \data_i[7]_i_1 
       (.I0(data2[7]),
        .I1(data1[7]),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\data_i[7]_i_1_n_0 ));
  FDRE \data_i_reg[0] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[0]_i_1_n_0 ),
        .Q(data_i[0]),
        .R(1'b0));
  FDRE \data_i_reg[1] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[1]_i_1_n_0 ),
        .Q(data_i[1]),
        .R(1'b0));
  FDRE \data_i_reg[2] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[2]_i_1_n_0 ),
        .Q(data_i[2]),
        .R(1'b0));
  FDRE \data_i_reg[3] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[3]_i_1_n_0 ),
        .Q(data_i[3]),
        .R(1'b0));
  FDRE \data_i_reg[4] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[4]_i_1_n_0 ),
        .Q(data_i[4]),
        .R(1'b0));
  FDRE \data_i_reg[5] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[5]_i_1_n_0 ),
        .Q(data_i[5]),
        .R(1'b0));
  FDRE \data_i_reg[6] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[6]_i_1_n_0 ),
        .Q(data_i[6]),
        .R(1'b0));
  FDRE \data_i_reg[7] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[7]_i_1_n_0 ),
        .Q(data_i[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hABAAA8AA00000000)) 
    delayEn_i_1
       (.I0(delayEn),
        .I1(\state[3]_i_4_n_0 ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state[3]_i_3_n_0 ),
        .I5(s00_axi_aresetn),
        .O(delayEn_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    delayEn_reg
       (.C(CLK),
        .CE(1'b1),
        .D(delayEn_i_1_n_0),
        .Q(delayEn),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delaycnt0_carry
       (.CI(1'b0),
        .CO({delaycnt0_carry_n_0,delaycnt0_carry_n_1,delaycnt0_carry_n_2,delaycnt0_carry_n_3}),
        .CYINIT(delaycnt[0]),
        .DI(delaycnt[4:1]),
        .O({delaycnt0_carry_n_4,delaycnt0_carry_n_5,delaycnt0_carry_n_6,delaycnt0_carry_n_7}),
        .S({delaycnt0_carry_i_1_n_0,delaycnt0_carry_i_2_n_0,delaycnt0_carry_i_3_n_0,delaycnt0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delaycnt0_carry__0
       (.CI(delaycnt0_carry_n_0),
        .CO({delaycnt0_carry__0_n_0,delaycnt0_carry__0_n_1,delaycnt0_carry__0_n_2,delaycnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delaycnt[8:5]),
        .O({delaycnt0_carry__0_n_4,delaycnt0_carry__0_n_5,delaycnt0_carry__0_n_6,delaycnt0_carry__0_n_7}),
        .S({delaycnt0_carry__0_i_1_n_0,delaycnt0_carry__0_i_2_n_0,delaycnt0_carry__0_i_3_n_0,delaycnt0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__0_i_1
       (.I0(delaycnt[8]),
        .O(delaycnt0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__0_i_2
       (.I0(delaycnt[7]),
        .O(delaycnt0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__0_i_3
       (.I0(delaycnt[6]),
        .O(delaycnt0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__0_i_4
       (.I0(delaycnt[5]),
        .O(delaycnt0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delaycnt0_carry__1
       (.CI(delaycnt0_carry__0_n_0),
        .CO({delaycnt0_carry__1_n_0,delaycnt0_carry__1_n_1,delaycnt0_carry__1_n_2,delaycnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delaycnt[12:9]),
        .O({delaycnt0_carry__1_n_4,delaycnt0_carry__1_n_5,delaycnt0_carry__1_n_6,delaycnt0_carry__1_n_7}),
        .S({delaycnt0_carry__1_i_1_n_0,delaycnt0_carry__1_i_2_n_0,delaycnt0_carry__1_i_3_n_0,delaycnt0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__1_i_1
       (.I0(delaycnt[12]),
        .O(delaycnt0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__1_i_2
       (.I0(delaycnt[11]),
        .O(delaycnt0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__1_i_3
       (.I0(delaycnt[10]),
        .O(delaycnt0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__1_i_4
       (.I0(delaycnt[9]),
        .O(delaycnt0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delaycnt0_carry__2
       (.CI(delaycnt0_carry__1_n_0),
        .CO({delaycnt0_carry__2_n_0,delaycnt0_carry__2_n_1,delaycnt0_carry__2_n_2,delaycnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(delaycnt[16:13]),
        .O({delaycnt0_carry__2_n_4,delaycnt0_carry__2_n_5,delaycnt0_carry__2_n_6,delaycnt0_carry__2_n_7}),
        .S({delaycnt0_carry__2_i_1_n_0,delaycnt0_carry__2_i_2_n_0,delaycnt0_carry__2_i_3_n_0,delaycnt0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__2_i_1
       (.I0(delaycnt[16]),
        .O(delaycnt0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__2_i_2
       (.I0(delaycnt[15]),
        .O(delaycnt0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__2_i_3
       (.I0(delaycnt[14]),
        .O(delaycnt0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__2_i_4
       (.I0(delaycnt[13]),
        .O(delaycnt0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delaycnt0_carry__3
       (.CI(delaycnt0_carry__2_n_0),
        .CO({delaycnt0_carry__3_n_0,delaycnt0_carry__3_n_1,delaycnt0_carry__3_n_2,delaycnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(delaycnt[20:17]),
        .O({delaycnt0_carry__3_n_4,delaycnt0_carry__3_n_5,delaycnt0_carry__3_n_6,delaycnt0_carry__3_n_7}),
        .S({delaycnt0_carry__3_i_1_n_0,delaycnt0_carry__3_i_2_n_0,delaycnt0_carry__3_i_3_n_0,delaycnt0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__3_i_1
       (.I0(delaycnt[20]),
        .O(delaycnt0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__3_i_2
       (.I0(delaycnt[19]),
        .O(delaycnt0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__3_i_3
       (.I0(delaycnt[18]),
        .O(delaycnt0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__3_i_4
       (.I0(delaycnt[17]),
        .O(delaycnt0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delaycnt0_carry__4
       (.CI(delaycnt0_carry__3_n_0),
        .CO({delaycnt0_carry__4_n_0,delaycnt0_carry__4_n_1,delaycnt0_carry__4_n_2,delaycnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(delaycnt[24:21]),
        .O({delaycnt0_carry__4_n_4,delaycnt0_carry__4_n_5,delaycnt0_carry__4_n_6,delaycnt0_carry__4_n_7}),
        .S({delaycnt0_carry__4_i_1_n_0,delaycnt0_carry__4_i_2_n_0,delaycnt0_carry__4_i_3_n_0,delaycnt0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__4_i_1
       (.I0(delaycnt[24]),
        .O(delaycnt0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__4_i_2
       (.I0(delaycnt[23]),
        .O(delaycnt0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__4_i_3
       (.I0(delaycnt[22]),
        .O(delaycnt0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__4_i_4
       (.I0(delaycnt[21]),
        .O(delaycnt0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delaycnt0_carry__5
       (.CI(delaycnt0_carry__4_n_0),
        .CO({delaycnt0_carry__5_n_0,delaycnt0_carry__5_n_1,delaycnt0_carry__5_n_2,delaycnt0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(delaycnt[28:25]),
        .O({delaycnt0_carry__5_n_4,delaycnt0_carry__5_n_5,delaycnt0_carry__5_n_6,delaycnt0_carry__5_n_7}),
        .S({delaycnt0_carry__5_i_1_n_0,delaycnt0_carry__5_i_2_n_0,delaycnt0_carry__5_i_3_n_0,delaycnt0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__5_i_1
       (.I0(delaycnt[28]),
        .O(delaycnt0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__5_i_2
       (.I0(delaycnt[27]),
        .O(delaycnt0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__5_i_3
       (.I0(delaycnt[26]),
        .O(delaycnt0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__5_i_4
       (.I0(delaycnt[25]),
        .O(delaycnt0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delaycnt0_carry__6
       (.CI(delaycnt0_carry__5_n_0),
        .CO({NLW_delaycnt0_carry__6_CO_UNCONNECTED[3:2],delaycnt0_carry__6_n_2,delaycnt0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,delaycnt[30:29]}),
        .O({NLW_delaycnt0_carry__6_O_UNCONNECTED[3],delaycnt0_carry__6_n_5,delaycnt0_carry__6_n_6,delaycnt0_carry__6_n_7}),
        .S({1'b0,delaycnt0_carry__6_i_1_n_0,delaycnt0_carry__6_i_2_n_0,delaycnt0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__6_i_1
       (.I0(delaycnt[31]),
        .O(delaycnt0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__6_i_2
       (.I0(delaycnt[30]),
        .O(delaycnt0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__6_i_3
       (.I0(delaycnt[29]),
        .O(delaycnt0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry_i_1
       (.I0(delaycnt[4]),
        .O(delaycnt0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry_i_2
       (.I0(delaycnt[3]),
        .O(delaycnt0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry_i_3
       (.I0(delaycnt[2]),
        .O(delaycnt0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry_i_4
       (.I0(delaycnt[1]),
        .O(delaycnt0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \delaycnt[0]_i_1 
       (.I0(delaycnt[0]),
        .O(\delaycnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delaycnt[31]_i_1 
       (.I0(delayEn),
        .O(delaycnt0));
  FDRE \delaycnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\delaycnt[0]_i_1_n_0 ),
        .Q(delaycnt[0]),
        .R(delaycnt0));
  FDSE \delaycnt_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__1_n_6),
        .Q(delaycnt[10]),
        .S(delaycnt0));
  FDSE \delaycnt_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__1_n_5),
        .Q(delaycnt[11]),
        .S(delaycnt0));
  FDSE \delaycnt_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__1_n_4),
        .Q(delaycnt[12]),
        .S(delaycnt0));
  FDRE \delaycnt_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__2_n_7),
        .Q(delaycnt[13]),
        .R(delaycnt0));
  FDSE \delaycnt_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__2_n_6),
        .Q(delaycnt[14]),
        .S(delaycnt0));
  FDRE \delaycnt_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__2_n_5),
        .Q(delaycnt[15]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__2_n_4),
        .Q(delaycnt[16]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__3_n_7),
        .Q(delaycnt[17]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__3_n_6),
        .Q(delaycnt[18]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__3_n_5),
        .Q(delaycnt[19]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry_n_7),
        .Q(delaycnt[1]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__3_n_4),
        .Q(delaycnt[20]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__4_n_7),
        .Q(delaycnt[21]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__4_n_6),
        .Q(delaycnt[22]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__4_n_5),
        .Q(delaycnt[23]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__4_n_4),
        .Q(delaycnt[24]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__5_n_7),
        .Q(delaycnt[25]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__5_n_6),
        .Q(delaycnt[26]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__5_n_5),
        .Q(delaycnt[27]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__5_n_4),
        .Q(delaycnt[28]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__6_n_7),
        .Q(delaycnt[29]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry_n_6),
        .Q(delaycnt[2]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__6_n_6),
        .Q(delaycnt[30]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__6_n_5),
        .Q(delaycnt[31]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry_n_5),
        .Q(delaycnt[3]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry_n_4),
        .Q(delaycnt[4]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__0_n_7),
        .Q(delaycnt[5]),
        .R(delaycnt0));
  FDSE \delaycnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__0_n_6),
        .Q(delaycnt[6]),
        .S(delaycnt0));
  FDSE \delaycnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__0_n_5),
        .Q(delaycnt[7]),
        .S(delaycnt0));
  FDSE \delaycnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__0_n_4),
        .Q(delaycnt[8]),
        .S(delaycnt0));
  FDRE \delaycnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__1_n_7),
        .Q(delaycnt[9]),
        .R(delaycnt0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \initA[0]_i_1 
       (.I0(initA_reg[0]),
        .O(\initA[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \initA[1]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .O(p_1_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \initA[2]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .I2(initA_reg[2]),
        .O(p_1_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \initA[3]_i_1 
       (.I0(initA_reg[2]),
        .I1(initA_reg[3]),
        .I2(initA_reg[0]),
        .I3(initA_reg[1]),
        .O(p_1_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \initA[4]_i_1 
       (.I0(initA_reg[2]),
        .I1(initA_reg[3]),
        .I2(initA_reg[0]),
        .I3(initA_reg[1]),
        .I4(initA_reg[4]),
        .O(p_1_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \initA[5]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .I2(initA_reg[3]),
        .I3(initA_reg[2]),
        .I4(initA_reg[4]),
        .I5(initA_reg[5]),
        .O(p_1_in__0[5]));
  LUT6 #(
    .INIT(64'hCCCC6CCCCCCCCCCC)) 
    \initA[6]_i_2 
       (.I0(initA_reg[5]),
        .I1(initA_reg[6]),
        .I2(initA_reg[2]),
        .I3(initA_reg[3]),
        .I4(\initWord[30]_i_3_n_0 ),
        .I5(initA_reg[4]),
        .O(p_1_in__0[6]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \initA[6]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(initEn),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state[3]_i_3_n_0 ),
        .O(\initA[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \initA[6]_i_5 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\initA[6]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[0] 
       (.C(CLK),
        .CE(twi_controller_n_4),
        .D(\initA[0]_i_1_n_0 ),
        .Q(initA_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[1] 
       (.C(CLK),
        .CE(twi_controller_n_4),
        .D(p_1_in__0[1]),
        .Q(initA_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[2] 
       (.C(CLK),
        .CE(twi_controller_n_4),
        .D(p_1_in__0[2]),
        .Q(initA_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[3] 
       (.C(CLK),
        .CE(twi_controller_n_4),
        .D(p_1_in__0[3]),
        .Q(initA_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[4] 
       (.C(CLK),
        .CE(twi_controller_n_4),
        .D(p_1_in__0[4]),
        .Q(initA_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[5] 
       (.C(CLK),
        .CE(twi_controller_n_4),
        .D(p_1_in__0[5]),
        .Q(initA_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[6] 
       (.C(CLK),
        .CE(twi_controller_n_4),
        .D(p_1_in__0[6]),
        .Q(initA_reg[6]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    initEn_i_3
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(initEn),
        .I3(s00_axi_aresetn),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[3] ),
        .O(initEn_i_3_n_0));
  FDRE initEn_reg
       (.C(CLK),
        .CE(1'b1),
        .D(twi_controller_n_6),
        .Q(initEn),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \initWord[0]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .I2(initA_reg[5]),
        .O(\initWord[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000B004000080090)) 
    \initWord[10]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[2]),
        .I2(initA_reg[3]),
        .I3(initA_reg[5]),
        .I4(initA_reg[4]),
        .I5(initA_reg[1]),
        .O(\initWord[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h000F0002)) 
    \initWord[11]_i_1 
       (.I0(initA_reg[3]),
        .I1(initA_reg[4]),
        .I2(initA_reg[0]),
        .I3(initA_reg[1]),
        .I4(initA_reg[5]),
        .O(\initWord[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010000)) 
    \initWord[12]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[1]),
        .I2(initA_reg[4]),
        .I3(initA_reg[5]),
        .I4(initA_reg[3]),
        .I5(initA_reg[2]),
        .O(\initWord[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA04BE01BA00BA00)) 
    \initWord[13]_i_1 
       (.I0(initA_reg[5]),
        .I1(initA_reg[2]),
        .I2(initA_reg[4]),
        .I3(initA_reg[1]),
        .I4(initA_reg[0]),
        .I5(initA_reg[3]),
        .O(\initWord[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0003004000400090)) 
    \initWord[14]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[2]),
        .I2(initA_reg[3]),
        .I3(initA_reg[5]),
        .I4(initA_reg[4]),
        .I5(initA_reg[1]),
        .O(\initWord[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000902000008)) 
    \initWord[15]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[4]),
        .I2(initA_reg[5]),
        .I3(initA_reg[3]),
        .I4(initA_reg[2]),
        .I5(initA_reg[0]),
        .O(\initWord[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000069E0838F)) 
    \initWord[16]_i_1 
       (.I0(initA_reg[2]),
        .I1(initA_reg[3]),
        .I2(initA_reg[0]),
        .I3(initA_reg[1]),
        .I4(initA_reg[4]),
        .I5(initA_reg[5]),
        .O(\initWord[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h474A454C454C4246)) 
    \initWord[17]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .I2(initA_reg[5]),
        .I3(initA_reg[4]),
        .I4(initA_reg[2]),
        .I5(initA_reg[3]),
        .O(\initWord[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEACA6A8AEA1ACA3)) 
    \initWord[18]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[3]),
        .I2(initA_reg[5]),
        .I3(initA_reg[4]),
        .I4(initA_reg[0]),
        .I5(initA_reg[2]),
        .O(\initWord[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF6100F6FF6200E6)) 
    \initWord[19]_i_1 
       (.I0(initA_reg[2]),
        .I1(initA_reg[3]),
        .I2(initA_reg[4]),
        .I3(initA_reg[5]),
        .I4(initA_reg[1]),
        .I5(initA_reg[0]),
        .O(\initWord[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3002300330010313)) 
    \initWord[20]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[5]),
        .I2(initA_reg[4]),
        .I3(initA_reg[3]),
        .I4(initA_reg[2]),
        .I5(initA_reg[1]),
        .O(\initWord[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F33E3328)) 
    \initWord[21]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[4]),
        .I2(initA_reg[2]),
        .I3(initA_reg[3]),
        .I4(initA_reg[1]),
        .I5(initA_reg[5]),
        .O(\initWord[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C00000800030008)) 
    \initWord[23]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[1]),
        .I2(initA_reg[5]),
        .I3(initA_reg[4]),
        .I4(initA_reg[3]),
        .I5(initA_reg[2]),
        .O(\initWord[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000001000000FFFF)) 
    \initWord[30]_i_1 
       (.I0(initA_reg[3]),
        .I1(initA_reg[2]),
        .I2(initA_reg[4]),
        .I3(\initWord[30]_i_3_n_0 ),
        .I4(initA_reg[6]),
        .I5(initA_reg[5]),
        .O(\initWord[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \initWord[30]_i_2 
       (.I0(initA_reg[1]),
        .I1(initA_reg[5]),
        .O(\initWord[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \initWord[30]_i_3 
       (.I0(initA_reg[0]),
        .I1(initA_reg[1]),
        .O(\initWord[30]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \initWord[5]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .I2(initA_reg[5]),
        .O(\initWord[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFF1CFDAAFFBC7D)) 
    \initWord[8]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[2]),
        .I2(initA_reg[3]),
        .I3(initA_reg[0]),
        .I4(initA_reg[5]),
        .I5(initA_reg[4]),
        .O(\initWord[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000511A45F0)) 
    \initWord[9]_i_1 
       (.I0(initA_reg[4]),
        .I1(initA_reg[0]),
        .I2(initA_reg[3]),
        .I3(initA_reg[2]),
        .I4(initA_reg[1]),
        .I5(initA_reg[5]),
        .O(\initWord[9]_i_1_n_0 ));
  FDRE \initWord_reg[0] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[0]_i_1_n_0 ),
        .Q(\initWord_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \initWord_reg[10] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[10]_i_1_n_0 ),
        .Q(data2[2]),
        .R(1'b0));
  FDRE \initWord_reg[11] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[11]_i_1_n_0 ),
        .Q(data2[3]),
        .R(1'b0));
  FDRE \initWord_reg[12] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[12]_i_1_n_0 ),
        .Q(data2[4]),
        .R(1'b0));
  FDRE \initWord_reg[13] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[13]_i_1_n_0 ),
        .Q(data2[5]),
        .R(1'b0));
  FDRE \initWord_reg[14] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[14]_i_1_n_0 ),
        .Q(data2[6]),
        .R(1'b0));
  FDRE \initWord_reg[15] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[15]_i_1_n_0 ),
        .Q(data2[7]),
        .R(1'b0));
  FDRE \initWord_reg[16] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[16]_i_1_n_0 ),
        .Q(data1[0]),
        .R(1'b0));
  FDRE \initWord_reg[17] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[17]_i_1_n_0 ),
        .Q(data1[1]),
        .R(1'b0));
  FDRE \initWord_reg[18] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[18]_i_1_n_0 ),
        .Q(data1[2]),
        .R(1'b0));
  FDRE \initWord_reg[19] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[19]_i_1_n_0 ),
        .Q(data1[3]),
        .R(1'b0));
  FDRE \initWord_reg[20] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[20]_i_1_n_0 ),
        .Q(data1[4]),
        .R(1'b0));
  FDRE \initWord_reg[21] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[21]_i_1_n_0 ),
        .Q(data1[5]),
        .R(1'b0));
  FDRE \initWord_reg[23] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[23]_i_1_n_0 ),
        .Q(data1[7]),
        .R(1'b0));
  FDRE \initWord_reg[30] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[30]_i_2_n_0 ),
        .Q(data0),
        .R(1'b0));
  FDRE \initWord_reg[5] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[5]_i_1_n_0 ),
        .Q(\initWord_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \initWord_reg[8] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[8]_i_1_n_0 ),
        .Q(data2[0]),
        .R(1'b0));
  FDRE \initWord_reg[9] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[9]_i_1_n_0 ),
        .Q(data2[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    msg_i_1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .O(msg_i_1_n_0));
  FDRE msg_reg
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(msg_i_1_n_0),
        .Q(msg_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \state[1]_i_2 
       (.I0(initA_reg[4]),
        .I1(initA_reg[2]),
        .I2(initA_reg[3]),
        .I3(initA_reg[1]),
        .I4(initA_reg[0]),
        .O(\state[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \state[1]_i_4 
       (.I0(\initWord_reg_n_0_[5] ),
        .I1(\initWord_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[0] ),
        .O(\state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \state[1]_i_6 
       (.I0(data1[3]),
        .I1(data1[4]),
        .I2(data1[1]),
        .I3(data1[2]),
        .I4(data1[7]),
        .I5(data1[5]),
        .O(\state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F100)) 
    \state[2]_i_2 
       (.I0(\initWord_reg_n_0_[0] ),
        .I1(\initWord_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_10 
       (.I0(delaycnt[13]),
        .I1(delaycnt[12]),
        .I2(delaycnt[15]),
        .I3(delaycnt[14]),
        .O(\state[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_11 
       (.I0(delaycnt[5]),
        .I1(delaycnt[4]),
        .I2(delaycnt[7]),
        .I3(delaycnt[6]),
        .O(\state[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_12 
       (.I0(delaycnt[29]),
        .I1(delaycnt[28]),
        .I2(delaycnt[31]),
        .I3(delaycnt[30]),
        .O(\state[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_13 
       (.I0(delaycnt[21]),
        .I1(delaycnt[20]),
        .I2(delaycnt[23]),
        .I3(delaycnt[22]),
        .O(\state[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_3 
       (.I0(\state[3]_i_6_n_0 ),
        .I1(\state[3]_i_7_n_0 ),
        .I2(\state[3]_i_8_n_0 ),
        .I3(\state[3]_i_9_n_0 ),
        .O(\state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \state[3]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\state[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[3]_i_6 
       (.I0(delaycnt[10]),
        .I1(delaycnt[11]),
        .I2(delaycnt[8]),
        .I3(delaycnt[9]),
        .I4(\state[3]_i_10_n_0 ),
        .O(\state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[3]_i_7 
       (.I0(delaycnt[2]),
        .I1(delaycnt[3]),
        .I2(delaycnt[0]),
        .I3(delaycnt[1]),
        .I4(\state[3]_i_11_n_0 ),
        .O(\state[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[3]_i_8 
       (.I0(delaycnt[26]),
        .I1(delaycnt[27]),
        .I2(delaycnt[24]),
        .I3(delaycnt[25]),
        .I4(\state[3]_i_12_n_0 ),
        .O(\state[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[3]_i_9 
       (.I0(delaycnt[18]),
        .I1(delaycnt[19]),
        .I2(delaycnt[16]),
        .I3(delaycnt[17]),
        .I4(\state[3]_i_13_n_0 ),
        .O(\state[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(twi_controller_n_5),
        .D(twi_controller_n_3),
        .Q(\state_reg_n_0_[0] ),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(twi_controller_n_5),
        .D(twi_controller_n_2),
        .Q(\state_reg_n_0_[1] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[2] 
       (.C(CLK),
        .CE(twi_controller_n_5),
        .D(twi_controller_n_1),
        .Q(\state_reg_n_0_[2] ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(CLK),
        .CE(twi_controller_n_5),
        .D(twi_controller_n_0),
        .Q(\state_reg_n_0_[3] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h800F)) 
    stb_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .O(stb_i_1_n_0));
  FDRE stb_reg
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(stb_i_1_n_0),
        .Q(stb),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TWICtl twi_controller
       (.CLK(CLK),
        .D({twi_controller_n_0,twi_controller_n_1,twi_controller_n_2,twi_controller_n_3}),
        .E(twi_controller_n_4),
        .\FSM_gray_state_reg[2]_0 (msg_reg_n_0),
        .Q(data_i),
        .\initA_reg[0] (\initA[6]_i_3_n_0 ),
        .\initA_reg[0]_0 ({data1[7],data1[5:0]}),
        .\initA_reg[0]_1 (\initA[6]_i_5_n_0 ),
        .initEn(initEn),
        .initEn_reg(\state[3]_i_3_n_0 ),
        .initEn_reg_0(initEn_i_3_n_0),
        .s00_axi_aresetn(s00_axi_aresetn),
        .scl(scl),
        .sda(sda),
        .\state_reg[0] (twi_controller_n_5),
        .\state_reg[1] (initA_reg[6:5]),
        .\state_reg[1]_0 (\state[1]_i_2_n_0 ),
        .\state_reg[1]_1 (\state[1]_i_4_n_0 ),
        .\state_reg[1]_2 (\state[1]_i_6_n_0 ),
        .\state_reg[1]_3 (\data_i[4]_i_2_n_0 ),
        .\state_reg[2] (twi_controller_n_6),
        .\state_reg[2]_0 (\state[2]_i_2_n_0 ),
        .\state_reg[2]_1 ({\state_reg_n_0_[3] ,\state_reg_n_0_[2] ,\state_reg_n_0_[1] ,\state_reg_n_0_[0] }),
        .\state_reg[3] (\state[3]_i_4_n_0 ),
        .stb(stb));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_debounce
   (E,
    D,
    btn_0_sp_1,
    \btn[2] ,
    Q,
    \process_q_reg[1] ,
    prev_up_reg,
    s00_axi_aresetn,
    \process_q[10]_i_4_0 ,
    \process_q_reg[1]_0 ,
    prev_down,
    btn,
    S,
    \process_q_reg[7] ,
    \process_q_reg[10] ,
    SS,
    s00_axi_aclk);
  output [0:0]E;
  output [9:0]D;
  output btn_0_sp_1;
  output \btn[2] ;
  input [9:0]Q;
  input \process_q_reg[1] ;
  input prev_up_reg;
  input s00_axi_aresetn;
  input [0:0]\process_q[10]_i_4_0 ;
  input \process_q_reg[1]_0 ;
  input prev_down;
  input [1:0]btn;
  input [0:0]S;
  input [2:0]\process_q_reg[7] ;
  input [2:0]\process_q_reg[10] ;
  input [0:0]SS;
  input s00_axi_aclk;

  wire [9:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[10]_i_1__0_n_0 ;
  wire \FSM_onehot_state[10]_i_2__0_n_0 ;
  wire \FSM_onehot_state[10]_i_3__0_n_0 ;
  wire \FSM_onehot_state[3]_i_1__0_n_0 ;
  wire \FSM_onehot_state[7]_i_1__0_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[10] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire [9:0]Q;
  wire [0:0]S;
  wire [0:0]SS;
  wire [1:0]btn;
  wire \btn[2] ;
  wire btn_0_sn_1;
  wire debounced_down;
  wire delay_counter_n_0;
  wire delay_counter_n_1;
  wire delay_counter_n_2;
  wire delay_counter_n_3;
  wire is_increment;
  wire prev_down;
  wire prev_up_reg;
  wire \process_q[10]_i_11_n_0 ;
  wire [0:0]\process_q[10]_i_4_0 ;
  wire \process_q[10]_i_4_n_0 ;
  wire \process_q[10]_i_9_n_0 ;
  wire \process_q[3]_i_2_n_0 ;
  wire \process_q[3]_i_3_n_0 ;
  wire \process_q[7]_i_5_n_0 ;
  wire [2:0]\process_q_reg[10] ;
  wire \process_q_reg[10]_i_2_n_2 ;
  wire \process_q_reg[10]_i_2_n_3 ;
  wire \process_q_reg[1] ;
  wire \process_q_reg[1]_0 ;
  wire \process_q_reg[3]_i_1_n_0 ;
  wire \process_q_reg[3]_i_1_n_1 ;
  wire \process_q_reg[3]_i_1_n_2 ;
  wire \process_q_reg[3]_i_1_n_3 ;
  wire [2:0]\process_q_reg[7] ;
  wire \process_q_reg[7]_i_1_n_0 ;
  wire \process_q_reg[7]_i_1_n_1 ;
  wire \process_q_reg[7]_i_1_n_2 ;
  wire \process_q_reg[7]_i_1_n_3 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [3:2]\NLW_process_q_reg[10]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_process_q_reg[10]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_process_q_reg[3]_i_1_O_UNCONNECTED ;

  assign btn_0_sp_1 = btn_0_sn_1;
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[10]_i_1__0 
       (.I0(\FSM_onehot_state[10]_i_2__0_n_0 ),
        .I1(\FSM_onehot_state[10]_i_3__0_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[10]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEEEFE)) 
    \FSM_onehot_state[10]_i_2__0 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(btn[0]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[10]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[10]_i_3__0 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(debounced_down),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[10]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[3]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[3]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[7]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[7]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[10] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(debounced_down),
        .Q(\FSM_onehot_state_reg_n_0_[10] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_state[3]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(delay_counter_n_3),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(delay_counter_n_2),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_state[7]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(delay_counter_n_1),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(delay_counter_n_0),
        .Q(debounced_down),
        .R(SS));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lec10_3 delay_counter
       (.D({delay_counter_n_0,delay_counter_n_1,delay_counter_n_2,delay_counter_n_3}),
        .Q({\FSM_onehot_state_reg_n_0_[8] ,\FSM_onehot_state_reg_n_0_[7] ,\FSM_onehot_state_reg_n_0_[6] ,\FSM_onehot_state_reg_n_0_[4] ,\FSM_onehot_state_reg_n_0_[3] ,\FSM_onehot_state_reg_n_0_[2] }),
        .SS(SS),
        .s00_axi_aclk(s00_axi_aclk));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    prev_down_i_1
       (.I0(btn[0]),
        .I1(s00_axi_aresetn),
        .I2(is_increment),
        .I3(prev_down),
        .O(btn_0_sn_1));
  LUT4 #(
    .INIT(16'hFB08)) 
    prev_up_i_1
       (.I0(btn[1]),
        .I1(s00_axi_aresetn),
        .I2(\process_q[10]_i_4_n_0 ),
        .I3(prev_up_reg),
        .O(\btn[2] ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \process_q[10]_i_1 
       (.I0(is_increment),
        .I1(\process_q[10]_i_4_n_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \process_q[10]_i_11 
       (.I0(debounced_down),
        .I1(prev_down),
        .I2(s00_axi_aresetn),
        .I3(Q[9]),
        .I4(\process_q[10]_i_4_0 ),
        .O(\process_q[10]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0001)) 
    \process_q[10]_i_3 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[5]),
        .I4(\process_q_reg[1] ),
        .I5(\process_q[10]_i_9_n_0 ),
        .O(is_increment));
  LUT6 #(
    .INIT(64'h00000000EEEAEAEA)) 
    \process_q[10]_i_4 
       (.I0(\process_q_reg[1]_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\process_q[10]_i_11_n_0 ),
        .O(\process_q[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFBFFFBFF)) 
    \process_q[10]_i_9 
       (.I0(prev_up_reg),
        .I1(s00_axi_aresetn),
        .I2(debounced_down),
        .I3(\process_q[10]_i_4_0 ),
        .I4(Q[9]),
        .I5(Q[8]),
        .O(\process_q[10]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \process_q[3]_i_2 
       (.I0(is_increment),
        .I1(Q[2]),
        .O(\process_q[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \process_q[3]_i_3 
       (.I0(is_increment),
        .I1(Q[1]),
        .O(\process_q[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \process_q[7]_i_5 
       (.I0(Q[3]),
        .I1(is_increment),
        .O(\process_q[7]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \process_q_reg[10]_i_2 
       (.CI(\process_q_reg[7]_i_1_n_0 ),
        .CO({\NLW_process_q_reg[10]_i_2_CO_UNCONNECTED [3:2],\process_q_reg[10]_i_2_n_2 ,\process_q_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[7:6]}),
        .O({\NLW_process_q_reg[10]_i_2_O_UNCONNECTED [3],D[9:7]}),
        .S({1'b0,\process_q_reg[10] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \process_q_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\process_q_reg[3]_i_1_n_0 ,\process_q_reg[3]_i_1_n_1 ,\process_q_reg[3]_i_1_n_2 ,\process_q_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({is_increment,Q[1:0],1'b0}),
        .O({D[2:0],\NLW_process_q_reg[3]_i_1_O_UNCONNECTED [0]}),
        .S({\process_q[3]_i_2_n_0 ,\process_q[3]_i_3_n_0 ,S,1'b0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \process_q_reg[7]_i_1 
       (.CI(\process_q_reg[3]_i_1_n_0 ),
        .CO({\process_q_reg[7]_i_1_n_0 ,\process_q_reg[7]_i_1_n_1 ,\process_q_reg[7]_i_1_n_2 ,\process_q_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({Q[5:3],is_increment}),
        .O(D[6:3]),
        .S({\process_q_reg[7] ,\process_q[7]_i_5_n_0 }));
endmodule

(* ORIG_REF_NAME = "button_debounce" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_debounce_2
   (SS,
    Q,
    s00_axi_aresetn,
    btn,
    s00_axi_aclk);
  output [0:0]SS;
  output [0:0]Q;
  input s00_axi_aresetn;
  input [0:0]btn;
  input s00_axi_aclk;

  wire \FSM_onehot_state[10]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_2_n_0 ;
  wire \FSM_onehot_state[10]_i_3_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[10] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire [0:0]btn;
  wire delay_counter_n_0;
  wire delay_counter_n_1;
  wire delay_counter_n_2;
  wire delay_counter_n_3;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[10]_i_1 
       (.I0(\FSM_onehot_state[10]_i_2_n_0 ),
        .I1(\FSM_onehot_state[10]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEEEFE)) 
    \FSM_onehot_state[10]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(btn),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[10]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(Q),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[10] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(Q),
        .Q(\FSM_onehot_state_reg_n_0_[10] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(delay_counter_n_3),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(delay_counter_n_2),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(delay_counter_n_1),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(delay_counter_n_0),
        .Q(Q),
        .R(SS));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lec10 delay_counter
       (.D({delay_counter_n_0,delay_counter_n_1,delay_counter_n_2,delay_counter_n_3}),
        .Q({\FSM_onehot_state_reg_n_0_[8] ,\FSM_onehot_state_reg_n_0_[7] ,\FSM_onehot_state_reg_n_0_[6] ,\FSM_onehot_state_reg_n_0_[4] ,\FSM_onehot_state_reg_n_0_[3] ,\FSM_onehot_state_reg_n_0_[2] }),
        .SS(SS),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
endmodule

(* ORIG_REF_NAME = "button_debounce" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_debounce_4
   (E,
    D,
    btn_1_sp_1,
    \btn[3] ,
    Q,
    \process_q_reg[1] ,
    \process_q_reg[1]_0 ,
    prev_up_reg,
    s00_axi_aresetn,
    \process_q_reg[1]_1 ,
    \process_q_reg[1]_2 ,
    prev_down,
    btn,
    S,
    DI,
    \process_q_reg[7] ,
    \process_q_reg[10] ,
    SR,
    s00_axi_aclk);
  output [0:0]E;
  output [9:0]D;
  output btn_1_sp_1;
  output \btn[3] ;
  input [8:0]Q;
  input \process_q_reg[1] ;
  input \process_q_reg[1]_0 ;
  input prev_up_reg;
  input s00_axi_aresetn;
  input [0:0]\process_q_reg[1]_1 ;
  input \process_q_reg[1]_2 ;
  input prev_down;
  input [1:0]btn;
  input [0:0]S;
  input [0:0]DI;
  input [2:0]\process_q_reg[7] ;
  input [2:0]\process_q_reg[10] ;
  input [0:0]SR;
  input s00_axi_aclk;

  wire [9:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire \FSM_onehot_state[10]_i_1__2_n_0 ;
  wire \FSM_onehot_state[10]_i_2__2_n_0 ;
  wire \FSM_onehot_state[10]_i_3__1_n_0 ;
  wire \FSM_onehot_state[3]_i_1__2_n_0 ;
  wire \FSM_onehot_state[7]_i_1__2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[10] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire [8:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [1:0]btn;
  wire \btn[3] ;
  wire btn_1_sn_1;
  wire debounced_down;
  wire delay_counter_n_0;
  wire delay_counter_n_1;
  wire delay_counter_n_2;
  wire delay_counter_n_3;
  wire is_increment;
  wire prev_down;
  wire prev_up_reg;
  wire \process_q[10]_i_11__0_n_0 ;
  wire \process_q[10]_i_4__0_n_0 ;
  wire \process_q[3]_i_2__0_n_0 ;
  wire \process_q[3]_i_3__0_n_0 ;
  wire \process_q[7]_i_6_n_0 ;
  wire [2:0]\process_q_reg[10] ;
  wire \process_q_reg[10]_i_2__0_n_2 ;
  wire \process_q_reg[10]_i_2__0_n_3 ;
  wire \process_q_reg[1] ;
  wire \process_q_reg[1]_0 ;
  wire [0:0]\process_q_reg[1]_1 ;
  wire \process_q_reg[1]_2 ;
  wire \process_q_reg[3]_i_1__0_n_0 ;
  wire \process_q_reg[3]_i_1__0_n_1 ;
  wire \process_q_reg[3]_i_1__0_n_2 ;
  wire \process_q_reg[3]_i_1__0_n_3 ;
  wire [2:0]\process_q_reg[7] ;
  wire \process_q_reg[7]_i_1__0_n_0 ;
  wire \process_q_reg[7]_i_1__0_n_1 ;
  wire \process_q_reg[7]_i_1__0_n_2 ;
  wire \process_q_reg[7]_i_1__0_n_3 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [3:2]\NLW_process_q_reg[10]_i_2__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_process_q_reg[10]_i_2__0_O_UNCONNECTED ;
  wire [0:0]\NLW_process_q_reg[3]_i_1__0_O_UNCONNECTED ;

  assign btn_1_sp_1 = btn_1_sn_1;
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[10]_i_1__2 
       (.I0(\FSM_onehot_state[10]_i_2__2_n_0 ),
        .I1(\FSM_onehot_state[10]_i_3__1_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[10] ),
        .I3(debounced_down),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[10]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFCFE)) 
    \FSM_onehot_state[10]_i_2__2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(btn[0]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[10]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[10]_i_3__1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .O(\FSM_onehot_state[10]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[3]_i_1__2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[7]_i_1__2 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[7]_i_1__2_n_0 ));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__2_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[10] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__2_n_0 ),
        .D(debounced_down),
        .Q(\FSM_onehot_state_reg_n_0_[10] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__2_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__2_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__2_n_0 ),
        .D(\FSM_onehot_state[3]_i_1__2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__2_n_0 ),
        .D(delay_counter_n_3),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__2_n_0 ),
        .D(delay_counter_n_2),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__2_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__2_n_0 ),
        .D(\FSM_onehot_state[7]_i_1__2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__2_n_0 ),
        .D(delay_counter_n_1),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__2_n_0 ),
        .D(delay_counter_n_0),
        .Q(debounced_down),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lec10_7 delay_counter
       (.D({delay_counter_n_0,delay_counter_n_1,delay_counter_n_2,delay_counter_n_3}),
        .Q({\FSM_onehot_state_reg_n_0_[8] ,\FSM_onehot_state_reg_n_0_[7] ,\FSM_onehot_state_reg_n_0_[6] ,\FSM_onehot_state_reg_n_0_[4] ,\FSM_onehot_state_reg_n_0_[3] ,\FSM_onehot_state_reg_n_0_[2] }),
        .SR(SR),
        .s00_axi_aclk(s00_axi_aclk));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    prev_down_i_1__0
       (.I0(btn[0]),
        .I1(s00_axi_aresetn),
        .I2(is_increment),
        .I3(prev_down),
        .O(btn_1_sn_1));
  LUT4 #(
    .INIT(16'hFB08)) 
    prev_up_i_1__0
       (.I0(btn[1]),
        .I1(s00_axi_aresetn),
        .I2(\process_q[10]_i_4__0_n_0 ),
        .I3(prev_up_reg),
        .O(\btn[3] ));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \process_q[10]_i_11__0 
       (.I0(debounced_down),
        .I1(prev_down),
        .I2(s00_axi_aresetn),
        .I3(Q[8]),
        .I4(\process_q_reg[1]_1 ),
        .O(\process_q[10]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \process_q[10]_i_1__0 
       (.I0(is_increment),
        .I1(\process_q[10]_i_4__0_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h00000D0000000000)) 
    \process_q[10]_i_3__0 
       (.I0(\process_q_reg[1] ),
        .I1(\process_q_reg[1]_0 ),
        .I2(prev_up_reg),
        .I3(s00_axi_aresetn),
        .I4(debounced_down),
        .I5(\process_q_reg[1]_1 ),
        .O(is_increment));
  LUT6 #(
    .INIT(64'h00000000EEEAEAEA)) 
    \process_q[10]_i_4__0 
       (.I0(\process_q_reg[1]_2 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\process_q[10]_i_11__0_n_0 ),
        .O(\process_q[10]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \process_q[3]_i_2__0 
       (.I0(is_increment),
        .I1(Q[2]),
        .O(\process_q[3]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \process_q[3]_i_3__0 
       (.I0(is_increment),
        .I1(Q[1]),
        .O(\process_q[3]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \process_q[7]_i_6 
       (.I0(Q[3]),
        .I1(is_increment),
        .O(\process_q[7]_i_6_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \process_q_reg[10]_i_2__0 
       (.CI(\process_q_reg[7]_i_1__0_n_0 ),
        .CO({\NLW_process_q_reg[10]_i_2__0_CO_UNCONNECTED [3:2],\process_q_reg[10]_i_2__0_n_2 ,\process_q_reg[10]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[7:6]}),
        .O({\NLW_process_q_reg[10]_i_2__0_O_UNCONNECTED [3],D[9:7]}),
        .S({1'b0,\process_q_reg[10] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \process_q_reg[3]_i_1__0 
       (.CI(1'b0),
        .CO({\process_q_reg[3]_i_1__0_n_0 ,\process_q_reg[3]_i_1__0_n_1 ,\process_q_reg[3]_i_1__0_n_2 ,\process_q_reg[3]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({is_increment,Q[1:0],1'b0}),
        .O({D[2:0],\NLW_process_q_reg[3]_i_1__0_O_UNCONNECTED [0]}),
        .S({\process_q[3]_i_2__0_n_0 ,\process_q[3]_i_3__0_n_0 ,S,1'b0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \process_q_reg[7]_i_1__0 
       (.CI(\process_q_reg[3]_i_1__0_n_0 ),
        .CO({\process_q_reg[7]_i_1__0_n_0 ,\process_q_reg[7]_i_1__0_n_1 ,\process_q_reg[7]_i_1__0_n_2 ,\process_q_reg[7]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({Q[5:3],DI}),
        .O(D[6:3]),
        .S({\process_q_reg[7] ,\process_q[7]_i_6_n_0 }));
endmodule

(* ORIG_REF_NAME = "button_debounce" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_debounce_5
   (Q,
    btn,
    SR,
    s00_axi_aclk);
  output [0:0]Q;
  input [0:0]btn;
  input [0:0]SR;
  input s00_axi_aclk;

  wire \FSM_onehot_state[10]_i_1__1_n_0 ;
  wire \FSM_onehot_state[10]_i_2__1_n_0 ;
  wire \FSM_onehot_state[3]_i_1__1_n_0 ;
  wire \FSM_onehot_state[7]_i_1__1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[10] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]btn;
  wire delay_counter_n_0;
  wire delay_counter_n_1;
  wire delay_counter_n_2;
  wire delay_counter_n_3;
  wire delay_counter_n_4;
  wire s00_axi_aclk;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[10]_i_1__1 
       (.I0(\FSM_onehot_state[10]_i_2__1_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[10] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(delay_counter_n_4),
        .O(\FSM_onehot_state[10]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFCFE)) 
    \FSM_onehot_state[10]_i_2__1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(Q),
        .I3(btn),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[10]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[3]_i_1__1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[3]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[7]_i_1__1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[7]_i_1__1_n_0 ));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[10] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__1_n_0 ),
        .D(Q),
        .Q(\FSM_onehot_state_reg_n_0_[10] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__1_n_0 ),
        .D(\FSM_onehot_state[3]_i_1__1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__1_n_0 ),
        .D(delay_counter_n_3),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__1_n_0 ),
        .D(delay_counter_n_2),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__1_n_0 ),
        .D(\FSM_onehot_state[7]_i_1__1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__1_n_0 ),
        .D(delay_counter_n_1),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "comp1:00000000010,comp2:00000001000,init4:00001000000,action1:01000000000,init2:00000000100,init0:00000000001,inc2:00000010000,action0:10000000000,comp4:00010000000,inc4:00100000000,comp3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1__1_n_0 ),
        .D(delay_counter_n_0),
        .Q(Q),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lec10_6 delay_counter
       (.D({delay_counter_n_0,delay_counter_n_1,delay_counter_n_2,delay_counter_n_3}),
        .E(delay_counter_n_4),
        .Q({\FSM_onehot_state_reg_n_0_[8] ,\FSM_onehot_state_reg_n_0_[7] ,\FSM_onehot_state_reg_n_0_[6] ,\FSM_onehot_state_reg_n_0_[4] ,\FSM_onehot_state_reg_n_0_[3] ,\FSM_onehot_state_reg_n_0_[2] }),
        .SR(SR),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0
   (clk_out1,
    clk_out2,
    clk_out3,
    resetn,
    clk_in1,
    lopt);
  output clk_out1;
  output clk_out2;
  output clk_out3;
  input resetn;
  input clk_in1;
  input lopt;

  wire clk_in1;
  wire clk_out1;
  wire clk_out2;
  wire clk_out3;
  wire lopt;
  wire resetn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .clk_out2(clk_out2),
        .clk_out3(clk_out3),
        .lopt(lopt),
        .resetn(resetn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0_clk_wiz
   (clk_out1,
    clk_out2,
    clk_out3,
    resetn,
    clk_in1,
    lopt);
  output clk_out1;
  output clk_out2;
  output clk_out3;
  input resetn;
  input clk_in1;
  input lopt;

  wire clk_in1;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clk_out2;
  wire clk_out2_clk_wiz_0;
  wire clk_out3;
  wire clk_out3_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire lopt;
  wire reset_high;
  wire resetn;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout2_buf
       (.I(clk_out2_clk_wiz_0),
        .O(clk_out2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout3_buf
       (.I(clk_out3_clk_wiz_0),
        .O(clk_out3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(40.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(8),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(8),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(lopt),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clk_out2_clk_wiz_0),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(clk_out3_clk_wiz_0),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset_high));
  LUT1 #(
    .INIT(2'h1)) 
    mmcm_adv_inst_i_1
       (.I0(resetn),
        .O(reset_high));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1
   (clk_out1,
    clk_out2,
    resetn,
    clk_in1,
    lopt);
  output clk_out1;
  output clk_out2;
  input resetn;
  input clk_in1;
  output lopt;

  wire clk_in1;
  wire clk_out1;
  wire clk_out2;
  wire lopt;
  wire resetn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .clk_out2(clk_out2),
        .lopt(lopt),
        .resetn(resetn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1_clk_wiz
   (clk_out1,
    clk_out2,
    resetn,
    clk_in1,
    lopt);
  output clk_out1;
  output clk_out2;
  input resetn;
  input clk_in1;
  output lopt;

  wire clk_in1;
  wire clk_in1_clk_wiz_1;
  wire clk_out1;
  wire clk_out1_clk_wiz_1;
  wire clk_out2;
  wire clk_out2_clk_wiz_1;
  wire clkfbout_buf_clk_wiz_1;
  wire clkfbout_clk_wiz_1;
  wire reset_high;
  wire resetn;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  assign lopt = clk_in1_clk_wiz_1;
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_1),
        .O(clkfbout_buf_clk_wiz_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_1),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout2_buf
       (.I(clk_out2_clk_wiz_1),
        .O(clk_out2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(81.375000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(20),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_1),
        .CLKFBOUT(clkfbout_clk_wiz_1),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_1),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clk_out2_clk_wiz_1),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset_high));
  LUT1 #(
    .INIT(2'h1)) 
    mmcm_adv_inst_i_1
       (.I0(resetn),
        .O(reset_high));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_color_mapper
   (O,
    CO,
    \processQ_reg[9] ,
    \processQ_reg[2] ,
    \processQ_reg[1] ,
    \processQ_reg[9]_0 ,
    \processQ_reg[9]_1 ,
    is_horizontal_gridline1__23_carry_i_4,
    \processQ_reg[9]_2 ,
    \processQ_reg[9]_3 ,
    \process_q_reg[10] ,
    \processQ_reg[9]_4 ,
    \processQ_reg[9]_5 ,
    \processQ_reg[9]_6 ,
    \processQ_reg[9]_7 ,
    \process_q_reg[10]_0 ,
    \processQ_reg[9]_8 ,
    \processQ_reg[9]_9 ,
    is_vertical_gridline1__20_carry_0,
    \processQ_reg[1]_0 ,
    DI,
    S,
    minusOp,
    is_vertical_gridline1__20_carry_i_4,
    is_vertical_gridline1__20_carry_i_4_0,
    is_vertical_gridline1__20_carry_i_4_1,
    \dc_bias[2]_i_5 ,
    \dc_bias[2]_i_5_0 ,
    \dc_bias[2]_i_5_1 ,
    \dc_bias[2]_i_11_0 ,
    is_horizontal_gridline1_carry__0_0,
    is_horizontal_gridline1_carry__0_1,
    is_horizontal_gridline1__23_carry_i_4_0,
    is_horizontal_gridline1__23_carry_i_4_1,
    is_horizontal_gridline1__23_carry_i_3,
    is_horizontal_gridline1__23_carry_i_3_0,
    is_horizontal_gridline1__29_carry__0_i_5,
    is_horizontal_gridline1__29_carry__0_i_5_0,
    \dc_bias[2]_i_24_0 ,
    \dc_bias[2]_i_24_1 ,
    \dc_bias[2]_i_10_0 ,
    \dc_bias[2]_i_10_1 ,
    is_trigger_volt4_carry__0_0,
    is_trigger_volt4_carry__0_1,
    \dc_bias[3]_i_15__0 ,
    \dc_bias[3]_i_15__0_0 ,
    \is_trigger_volt4_inferred__0/i__carry__0_0 ,
    \is_trigger_volt4_inferred__0/i__carry__0_1 ,
    \dc_bias[3]_i_16__0 ,
    \dc_bias[3]_i_16__0_0 ,
    is_trigger_volt2_carry__0_0,
    is_trigger_volt2_carry__0_1,
    \dc_bias[3]_i_16__0_1 ,
    \dc_bias[3]_i_16__0_2 ,
    \is_trigger_volt5_inferred__0/i__carry__0_0 ,
    \is_trigger_volt5_inferred__0/i__carry__0_1 ,
    \dc_bias[3]_i_15__0_1 ,
    \dc_bias[3]_i_15__0_2 ,
    \is_trigger_volt4_inferred__1/i__carry__0_0 ,
    \is_trigger_volt4_inferred__1/i__carry__0_1 ,
    \dc_bias[3]_i_15__0_3 ,
    \dc_bias[3]_i_15__0_4 ,
    is_trigger_time4_carry__0_0,
    is_trigger_time4_carry__0_1,
    \dc_bias[3]_i_23 ,
    \dc_bias[3]_i_23_0 ,
    \is_trigger_time4_inferred__0/i__carry__0_0 ,
    \is_trigger_time4_inferred__0/i__carry__0_1 ,
    \dc_bias[3]_i_14 ,
    \dc_bias[3]_i_14_0 ,
    is_trigger_time2_carry__0_0,
    is_trigger_time2_carry__0_1,
    \dc_bias[3]_i_13__0 ,
    \dc_bias[3]_i_13__0_0 ,
    \is_trigger_time5_inferred__0/i__carry__0_0 ,
    \is_trigger_time5_inferred__0/i__carry__0_1 ,
    \dc_bias[3]_i_23_1 ,
    \dc_bias[3]_i_23_2 ,
    \is_trigger_time4_inferred__1/i__carry__0_0 ,
    \is_trigger_time4_inferred__1/i__carry__0_1 ,
    \dc_bias[3]_i_23_3 ,
    \dc_bias[3]_i_23_4 );
  output [0:0]O;
  output [0:0]CO;
  output [2:0]\processQ_reg[9] ;
  output [0:0]\processQ_reg[2] ;
  output [0:0]\processQ_reg[1] ;
  output [0:0]\processQ_reg[9]_0 ;
  output [2:0]\processQ_reg[9]_1 ;
  output [2:0]is_horizontal_gridline1__23_carry_i_4;
  output [0:0]\processQ_reg[9]_2 ;
  output [0:0]\processQ_reg[9]_3 ;
  output [0:0]\process_q_reg[10] ;
  output [0:0]\processQ_reg[9]_4 ;
  output [0:0]\processQ_reg[9]_5 ;
  output [0:0]\processQ_reg[9]_6 ;
  output [0:0]\processQ_reg[9]_7 ;
  output [0:0]\process_q_reg[10]_0 ;
  output [0:0]\processQ_reg[9]_8 ;
  output [0:0]\processQ_reg[9]_9 ;
  output is_vertical_gridline1__20_carry_0;
  output \processQ_reg[1]_0 ;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]minusOp;
  input [0:0]is_vertical_gridline1__20_carry_i_4;
  input [2:0]is_vertical_gridline1__20_carry_i_4_0;
  input [2:0]is_vertical_gridline1__20_carry_i_4_1;
  input \dc_bias[2]_i_5 ;
  input [0:0]\dc_bias[2]_i_5_0 ;
  input [3:0]\dc_bias[2]_i_5_1 ;
  input [1:0]\dc_bias[2]_i_11_0 ;
  input [2:0]is_horizontal_gridline1_carry__0_0;
  input [3:0]is_horizontal_gridline1_carry__0_1;
  input [3:0]is_horizontal_gridline1__23_carry_i_4_0;
  input [3:0]is_horizontal_gridline1__23_carry_i_4_1;
  input [0:0]is_horizontal_gridline1__23_carry_i_3;
  input [2:0]is_horizontal_gridline1__23_carry_i_3_0;
  input [0:0]is_horizontal_gridline1__29_carry__0_i_5;
  input [2:0]is_horizontal_gridline1__29_carry__0_i_5_0;
  input [2:0]\dc_bias[2]_i_24_0 ;
  input [3:0]\dc_bias[2]_i_24_1 ;
  input [1:0]\dc_bias[2]_i_10_0 ;
  input [2:0]\dc_bias[2]_i_10_1 ;
  input [3:0]is_trigger_volt4_carry__0_0;
  input [3:0]is_trigger_volt4_carry__0_1;
  input [0:0]\dc_bias[3]_i_15__0 ;
  input [1:0]\dc_bias[3]_i_15__0_0 ;
  input [3:0]\is_trigger_volt4_inferred__0/i__carry__0_0 ;
  input [3:0]\is_trigger_volt4_inferred__0/i__carry__0_1 ;
  input [0:0]\dc_bias[3]_i_16__0 ;
  input [1:0]\dc_bias[3]_i_16__0_0 ;
  input [3:0]is_trigger_volt2_carry__0_0;
  input [3:0]is_trigger_volt2_carry__0_1;
  input [1:0]\dc_bias[3]_i_16__0_1 ;
  input [1:0]\dc_bias[3]_i_16__0_2 ;
  input [3:0]\is_trigger_volt5_inferred__0/i__carry__0_0 ;
  input [3:0]\is_trigger_volt5_inferred__0/i__carry__0_1 ;
  input [0:0]\dc_bias[3]_i_15__0_1 ;
  input [1:0]\dc_bias[3]_i_15__0_2 ;
  input [3:0]\is_trigger_volt4_inferred__1/i__carry__0_0 ;
  input [3:0]\is_trigger_volt4_inferred__1/i__carry__0_1 ;
  input [0:0]\dc_bias[3]_i_15__0_3 ;
  input [1:0]\dc_bias[3]_i_15__0_4 ;
  input [3:0]is_trigger_time4_carry__0_0;
  input [3:0]is_trigger_time4_carry__0_1;
  input [0:0]\dc_bias[3]_i_23 ;
  input [1:0]\dc_bias[3]_i_23_0 ;
  input [3:0]\is_trigger_time4_inferred__0/i__carry__0_0 ;
  input [3:0]\is_trigger_time4_inferred__0/i__carry__0_1 ;
  input [0:0]\dc_bias[3]_i_14 ;
  input [1:0]\dc_bias[3]_i_14_0 ;
  input [3:0]is_trigger_time2_carry__0_0;
  input [3:0]is_trigger_time2_carry__0_1;
  input [1:0]\dc_bias[3]_i_13__0 ;
  input [1:0]\dc_bias[3]_i_13__0_0 ;
  input [3:0]\is_trigger_time5_inferred__0/i__carry__0_0 ;
  input [3:0]\is_trigger_time5_inferred__0/i__carry__0_1 ;
  input [0:0]\dc_bias[3]_i_23_1 ;
  input [1:0]\dc_bias[3]_i_23_2 ;
  input [3:0]\is_trigger_time4_inferred__1/i__carry__0_0 ;
  input [3:0]\is_trigger_time4_inferred__1/i__carry__0_1 ;
  input [0:0]\dc_bias[3]_i_23_3 ;
  input [1:0]\dc_bias[3]_i_23_4 ;

  wire [0:0]CO;
  wire [2:0]DI;
  wire [0:0]O;
  wire [3:0]S;
  wire [1:0]\dc_bias[2]_i_10_0 ;
  wire [2:0]\dc_bias[2]_i_10_1 ;
  wire [1:0]\dc_bias[2]_i_11_0 ;
  wire [2:0]\dc_bias[2]_i_24_0 ;
  wire [3:0]\dc_bias[2]_i_24_1 ;
  wire \dc_bias[2]_i_24_n_0 ;
  wire \dc_bias[2]_i_5 ;
  wire [0:0]\dc_bias[2]_i_5_0 ;
  wire [3:0]\dc_bias[2]_i_5_1 ;
  wire [1:0]\dc_bias[3]_i_13__0 ;
  wire [1:0]\dc_bias[3]_i_13__0_0 ;
  wire [0:0]\dc_bias[3]_i_14 ;
  wire [1:0]\dc_bias[3]_i_14_0 ;
  wire [0:0]\dc_bias[3]_i_15__0 ;
  wire [1:0]\dc_bias[3]_i_15__0_0 ;
  wire [0:0]\dc_bias[3]_i_15__0_1 ;
  wire [1:0]\dc_bias[3]_i_15__0_2 ;
  wire [0:0]\dc_bias[3]_i_15__0_3 ;
  wire [1:0]\dc_bias[3]_i_15__0_4 ;
  wire [0:0]\dc_bias[3]_i_16__0 ;
  wire [1:0]\dc_bias[3]_i_16__0_0 ;
  wire [1:0]\dc_bias[3]_i_16__0_1 ;
  wire [1:0]\dc_bias[3]_i_16__0_2 ;
  wire [0:0]\dc_bias[3]_i_23 ;
  wire [1:0]\dc_bias[3]_i_23_0 ;
  wire [0:0]\dc_bias[3]_i_23_1 ;
  wire [1:0]\dc_bias[3]_i_23_2 ;
  wire [0:0]\dc_bias[3]_i_23_3 ;
  wire [1:0]\dc_bias[3]_i_23_4 ;
  wire [0:0]is_horizontal_gridline1__23_carry_i_3;
  wire [2:0]is_horizontal_gridline1__23_carry_i_3_0;
  wire [2:0]is_horizontal_gridline1__23_carry_i_4;
  wire [3:0]is_horizontal_gridline1__23_carry_i_4_0;
  wire [3:0]is_horizontal_gridline1__23_carry_i_4_1;
  wire is_horizontal_gridline1__23_carry_n_2;
  wire is_horizontal_gridline1__23_carry_n_3;
  wire [0:0]is_horizontal_gridline1__29_carry__0_i_5;
  wire [2:0]is_horizontal_gridline1__29_carry__0_i_5_0;
  wire is_horizontal_gridline1__29_carry__0_n_2;
  wire is_horizontal_gridline1__29_carry__0_n_3;
  wire is_horizontal_gridline1__29_carry__0_n_5;
  wire is_horizontal_gridline1__29_carry__0_n_6;
  wire is_horizontal_gridline1__29_carry__0_n_7;
  wire is_horizontal_gridline1__29_carry_n_0;
  wire is_horizontal_gridline1__29_carry_n_1;
  wire is_horizontal_gridline1__29_carry_n_2;
  wire is_horizontal_gridline1__29_carry_n_3;
  wire is_horizontal_gridline1__29_carry_n_4;
  wire is_horizontal_gridline1__29_carry_n_5;
  wire is_horizontal_gridline1__29_carry_n_6;
  wire is_horizontal_gridline1__29_carry_n_7;
  wire [2:0]is_horizontal_gridline1_carry__0_0;
  wire [3:0]is_horizontal_gridline1_carry__0_1;
  wire is_horizontal_gridline1_carry__0_n_0;
  wire is_horizontal_gridline1_carry__0_n_1;
  wire is_horizontal_gridline1_carry__0_n_2;
  wire is_horizontal_gridline1_carry__0_n_3;
  wire is_horizontal_gridline1_carry__1_n_2;
  wire is_horizontal_gridline1_carry__1_n_3;
  wire is_horizontal_gridline1_carry_n_0;
  wire is_horizontal_gridline1_carry_n_1;
  wire is_horizontal_gridline1_carry_n_2;
  wire is_horizontal_gridline1_carry_n_3;
  wire [3:0]is_trigger_time2_carry__0_0;
  wire [3:0]is_trigger_time2_carry__0_1;
  wire is_trigger_time2_carry__0_n_3;
  wire is_trigger_time2_carry_n_0;
  wire is_trigger_time2_carry_n_1;
  wire is_trigger_time2_carry_n_2;
  wire is_trigger_time2_carry_n_3;
  wire [3:0]is_trigger_time4_carry__0_0;
  wire [3:0]is_trigger_time4_carry__0_1;
  wire is_trigger_time4_carry__0_n_3;
  wire is_trigger_time4_carry_n_0;
  wire is_trigger_time4_carry_n_1;
  wire is_trigger_time4_carry_n_2;
  wire is_trigger_time4_carry_n_3;
  wire [3:0]\is_trigger_time4_inferred__0/i__carry__0_0 ;
  wire [3:0]\is_trigger_time4_inferred__0/i__carry__0_1 ;
  wire \is_trigger_time4_inferred__0/i__carry__0_n_3 ;
  wire \is_trigger_time4_inferred__0/i__carry_n_0 ;
  wire \is_trigger_time4_inferred__0/i__carry_n_1 ;
  wire \is_trigger_time4_inferred__0/i__carry_n_2 ;
  wire \is_trigger_time4_inferred__0/i__carry_n_3 ;
  wire [3:0]\is_trigger_time4_inferred__1/i__carry__0_0 ;
  wire [3:0]\is_trigger_time4_inferred__1/i__carry__0_1 ;
  wire \is_trigger_time4_inferred__1/i__carry__0_n_3 ;
  wire \is_trigger_time4_inferred__1/i__carry_n_0 ;
  wire \is_trigger_time4_inferred__1/i__carry_n_1 ;
  wire \is_trigger_time4_inferred__1/i__carry_n_2 ;
  wire \is_trigger_time4_inferred__1/i__carry_n_3 ;
  wire [3:0]\is_trigger_time5_inferred__0/i__carry__0_0 ;
  wire [3:0]\is_trigger_time5_inferred__0/i__carry__0_1 ;
  wire \is_trigger_time5_inferred__0/i__carry__0_n_3 ;
  wire \is_trigger_time5_inferred__0/i__carry_n_0 ;
  wire \is_trigger_time5_inferred__0/i__carry_n_1 ;
  wire \is_trigger_time5_inferred__0/i__carry_n_2 ;
  wire \is_trigger_time5_inferred__0/i__carry_n_3 ;
  wire [3:0]is_trigger_volt2_carry__0_0;
  wire [3:0]is_trigger_volt2_carry__0_1;
  wire is_trigger_volt2_carry__0_n_3;
  wire is_trigger_volt2_carry_n_0;
  wire is_trigger_volt2_carry_n_1;
  wire is_trigger_volt2_carry_n_2;
  wire is_trigger_volt2_carry_n_3;
  wire [3:0]is_trigger_volt4_carry__0_0;
  wire [3:0]is_trigger_volt4_carry__0_1;
  wire is_trigger_volt4_carry__0_n_3;
  wire is_trigger_volt4_carry_n_0;
  wire is_trigger_volt4_carry_n_1;
  wire is_trigger_volt4_carry_n_2;
  wire is_trigger_volt4_carry_n_3;
  wire [3:0]\is_trigger_volt4_inferred__0/i__carry__0_0 ;
  wire [3:0]\is_trigger_volt4_inferred__0/i__carry__0_1 ;
  wire \is_trigger_volt4_inferred__0/i__carry__0_n_3 ;
  wire \is_trigger_volt4_inferred__0/i__carry_n_0 ;
  wire \is_trigger_volt4_inferred__0/i__carry_n_1 ;
  wire \is_trigger_volt4_inferred__0/i__carry_n_2 ;
  wire \is_trigger_volt4_inferred__0/i__carry_n_3 ;
  wire [3:0]\is_trigger_volt4_inferred__1/i__carry__0_0 ;
  wire [3:0]\is_trigger_volt4_inferred__1/i__carry__0_1 ;
  wire \is_trigger_volt4_inferred__1/i__carry__0_n_3 ;
  wire \is_trigger_volt4_inferred__1/i__carry_n_0 ;
  wire \is_trigger_volt4_inferred__1/i__carry_n_1 ;
  wire \is_trigger_volt4_inferred__1/i__carry_n_2 ;
  wire \is_trigger_volt4_inferred__1/i__carry_n_3 ;
  wire [3:0]\is_trigger_volt5_inferred__0/i__carry__0_0 ;
  wire [3:0]\is_trigger_volt5_inferred__0/i__carry__0_1 ;
  wire \is_trigger_volt5_inferred__0/i__carry__0_n_3 ;
  wire \is_trigger_volt5_inferred__0/i__carry_n_0 ;
  wire \is_trigger_volt5_inferred__0/i__carry_n_1 ;
  wire \is_trigger_volt5_inferred__0/i__carry_n_2 ;
  wire \is_trigger_volt5_inferred__0/i__carry_n_3 ;
  wire is_vertical_gridline1__20_carry_0;
  wire is_vertical_gridline1__20_carry__0_n_3;
  wire is_vertical_gridline1__20_carry__0_n_6;
  wire is_vertical_gridline1__20_carry__0_n_7;
  wire [0:0]is_vertical_gridline1__20_carry_i_4;
  wire [2:0]is_vertical_gridline1__20_carry_i_4_0;
  wire [2:0]is_vertical_gridline1__20_carry_i_4_1;
  wire is_vertical_gridline1__20_carry_n_0;
  wire is_vertical_gridline1__20_carry_n_1;
  wire is_vertical_gridline1__20_carry_n_2;
  wire is_vertical_gridline1__20_carry_n_3;
  wire is_vertical_gridline1__20_carry_n_4;
  wire is_vertical_gridline1__20_carry_n_5;
  wire is_vertical_gridline1__20_carry_n_6;
  wire is_vertical_gridline1_carry__0_n_0;
  wire is_vertical_gridline1_carry__0_n_1;
  wire is_vertical_gridline1_carry__0_n_2;
  wire is_vertical_gridline1_carry__0_n_3;
  wire is_vertical_gridline1_carry__1_n_2;
  wire is_vertical_gridline1_carry__1_n_3;
  wire is_vertical_gridline1_carry_n_0;
  wire is_vertical_gridline1_carry_n_1;
  wire is_vertical_gridline1_carry_n_2;
  wire is_vertical_gridline1_carry_n_3;
  wire [3:0]minusOp;
  wire [0:0]\processQ_reg[1] ;
  wire \processQ_reg[1]_0 ;
  wire [0:0]\processQ_reg[2] ;
  wire [2:0]\processQ_reg[9] ;
  wire [0:0]\processQ_reg[9]_0 ;
  wire [2:0]\processQ_reg[9]_1 ;
  wire [0:0]\processQ_reg[9]_2 ;
  wire [0:0]\processQ_reg[9]_3 ;
  wire [0:0]\processQ_reg[9]_4 ;
  wire [0:0]\processQ_reg[9]_5 ;
  wire [0:0]\processQ_reg[9]_6 ;
  wire [0:0]\processQ_reg[9]_7 ;
  wire [0:0]\processQ_reg[9]_8 ;
  wire [0:0]\processQ_reg[9]_9 ;
  wire [0:0]\process_q_reg[10] ;
  wire [0:0]\process_q_reg[10]_0 ;
  wire [3:2]NLW_is_horizontal_gridline1__23_carry_CO_UNCONNECTED;
  wire [3:3]NLW_is_horizontal_gridline1__23_carry_O_UNCONNECTED;
  wire [3:2]NLW_is_horizontal_gridline1__29_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_is_horizontal_gridline1__29_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_is_horizontal_gridline1_carry_O_UNCONNECTED;
  wire [2:0]NLW_is_horizontal_gridline1_carry__0_O_UNCONNECTED;
  wire [2:2]NLW_is_horizontal_gridline1_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_is_horizontal_gridline1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_is_trigger_time2_carry_O_UNCONNECTED;
  wire [3:2]NLW_is_trigger_time2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_is_trigger_time2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_is_trigger_time4_carry_O_UNCONNECTED;
  wire [3:2]NLW_is_trigger_time4_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_is_trigger_time4_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_is_trigger_time4_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_is_trigger_time4_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_is_trigger_time4_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_is_trigger_time4_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_is_trigger_time4_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_is_trigger_time4_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_is_trigger_time5_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_is_trigger_time5_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_is_trigger_time5_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]NLW_is_trigger_volt2_carry_O_UNCONNECTED;
  wire [3:2]NLW_is_trigger_volt2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_is_trigger_volt2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_is_trigger_volt4_carry_O_UNCONNECTED;
  wire [3:2]NLW_is_trigger_volt4_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_is_trigger_volt4_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_is_trigger_volt4_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_is_trigger_volt4_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_is_trigger_volt4_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_is_trigger_volt4_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_is_trigger_volt4_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_is_trigger_volt4_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_is_trigger_volt5_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_is_trigger_volt5_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_is_trigger_volt5_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:1]NLW_is_vertical_gridline1__20_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_is_vertical_gridline1__20_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_is_vertical_gridline1_carry_O_UNCONNECTED;
  wire [2:0]NLW_is_vertical_gridline1_carry__0_O_UNCONNECTED;
  wire [2:2]NLW_is_vertical_gridline1_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_is_vertical_gridline1_carry__1_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFF54)) 
    \dc_bias[2]_i_10 
       (.I0(is_horizontal_gridline1__29_carry_n_6),
        .I1(is_horizontal_gridline1__29_carry__0_n_7),
        .I2(is_horizontal_gridline1__29_carry__0_n_5),
        .I3(\dc_bias[2]_i_24_n_0 ),
        .O(\processQ_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hC0000001)) 
    \dc_bias[2]_i_11 
       (.I0(is_vertical_gridline1__20_carry__0_n_6),
        .I1(is_vertical_gridline1__20_carry__0_n_7),
        .I2(is_vertical_gridline1__20_carry_n_5),
        .I3(is_vertical_gridline1__20_carry_n_4),
        .I4(is_vertical_gridline1__20_carry_n_6),
        .O(is_vertical_gridline1__20_carry_0));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFEFFFE)) 
    \dc_bias[2]_i_24 
       (.I0(is_horizontal_gridline1__29_carry_n_4),
        .I1(is_horizontal_gridline1__29_carry_n_7),
        .I2(is_horizontal_gridline1__29_carry_n_5),
        .I3(is_horizontal_gridline1__29_carry__0_n_6),
        .I4(is_horizontal_gridline1__29_carry__0_n_7),
        .I5(is_horizontal_gridline1__29_carry_n_6),
        .O(\dc_bias[2]_i_24_n_0 ));
  CARRY4 is_horizontal_gridline1__23_carry
       (.CI(1'b0),
        .CO({NLW_is_horizontal_gridline1__23_carry_CO_UNCONNECTED[3:2],is_horizontal_gridline1__23_carry_n_2,is_horizontal_gridline1__23_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,is_horizontal_gridline1__29_carry__0_i_5,1'b0}),
        .O({NLW_is_horizontal_gridline1__23_carry_O_UNCONNECTED[3],is_horizontal_gridline1__23_carry_i_4}),
        .S({1'b0,is_horizontal_gridline1__29_carry__0_i_5_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 is_horizontal_gridline1__29_carry
       (.CI(1'b0),
        .CO({is_horizontal_gridline1__29_carry_n_0,is_horizontal_gridline1__29_carry_n_1,is_horizontal_gridline1__29_carry_n_2,is_horizontal_gridline1__29_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\dc_bias[2]_i_24_0 [2:1],is_horizontal_gridline1_carry__0_1[0],\dc_bias[2]_i_24_0 [0]}),
        .O({is_horizontal_gridline1__29_carry_n_4,is_horizontal_gridline1__29_carry_n_5,is_horizontal_gridline1__29_carry_n_6,is_horizontal_gridline1__29_carry_n_7}),
        .S(\dc_bias[2]_i_24_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 is_horizontal_gridline1__29_carry__0
       (.CI(is_horizontal_gridline1__29_carry_n_0),
        .CO({NLW_is_horizontal_gridline1__29_carry__0_CO_UNCONNECTED[3:2],is_horizontal_gridline1__29_carry__0_n_2,is_horizontal_gridline1__29_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\dc_bias[2]_i_10_0 }),
        .O({NLW_is_horizontal_gridline1__29_carry__0_O_UNCONNECTED[3],is_horizontal_gridline1__29_carry__0_n_5,is_horizontal_gridline1__29_carry__0_n_6,is_horizontal_gridline1__29_carry__0_n_7}),
        .S({1'b0,\dc_bias[2]_i_10_1 }));
  CARRY4 is_horizontal_gridline1_carry
       (.CI(1'b0),
        .CO({is_horizontal_gridline1_carry_n_0,is_horizontal_gridline1_carry_n_1,is_horizontal_gridline1_carry_n_2,is_horizontal_gridline1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({is_horizontal_gridline1_carry__0_0,1'b0}),
        .O(NLW_is_horizontal_gridline1_carry_O_UNCONNECTED[3:0]),
        .S(is_horizontal_gridline1_carry__0_1));
  CARRY4 is_horizontal_gridline1_carry__0
       (.CI(is_horizontal_gridline1_carry_n_0),
        .CO({is_horizontal_gridline1_carry__0_n_0,is_horizontal_gridline1_carry__0_n_1,is_horizontal_gridline1_carry__0_n_2,is_horizontal_gridline1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(is_horizontal_gridline1__23_carry_i_4_0),
        .O({\processQ_reg[1] ,NLW_is_horizontal_gridline1_carry__0_O_UNCONNECTED[2:0]}),
        .S(is_horizontal_gridline1__23_carry_i_4_1));
  CARRY4 is_horizontal_gridline1_carry__1
       (.CI(is_horizontal_gridline1_carry__0_n_0),
        .CO({\processQ_reg[9]_0 ,NLW_is_horizontal_gridline1_carry__1_CO_UNCONNECTED[2],is_horizontal_gridline1_carry__1_n_2,is_horizontal_gridline1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,is_horizontal_gridline1__23_carry_i_3}),
        .O({NLW_is_horizontal_gridline1_carry__1_O_UNCONNECTED[3],\processQ_reg[9]_1 }),
        .S({1'b1,is_horizontal_gridline1__23_carry_i_3_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 is_trigger_time2_carry
       (.CI(1'b0),
        .CO({is_trigger_time2_carry_n_0,is_trigger_time2_carry_n_1,is_trigger_time2_carry_n_2,is_trigger_time2_carry_n_3}),
        .CYINIT(1'b1),
        .DI(is_trigger_time2_carry__0_0),
        .O(NLW_is_trigger_time2_carry_O_UNCONNECTED[3:0]),
        .S(is_trigger_time2_carry__0_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 is_trigger_time2_carry__0
       (.CI(is_trigger_time2_carry_n_0),
        .CO({NLW_is_trigger_time2_carry__0_CO_UNCONNECTED[3:2],\process_q_reg[10]_0 ,is_trigger_time2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\dc_bias[3]_i_13__0 }),
        .O(NLW_is_trigger_time2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,\dc_bias[3]_i_13__0_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 is_trigger_time4_carry
       (.CI(1'b0),
        .CO({is_trigger_time4_carry_n_0,is_trigger_time4_carry_n_1,is_trigger_time4_carry_n_2,is_trigger_time4_carry_n_3}),
        .CYINIT(1'b1),
        .DI(is_trigger_time4_carry__0_0),
        .O(NLW_is_trigger_time4_carry_O_UNCONNECTED[3:0]),
        .S(is_trigger_time4_carry__0_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 is_trigger_time4_carry__0
       (.CI(is_trigger_time4_carry_n_0),
        .CO({NLW_is_trigger_time4_carry__0_CO_UNCONNECTED[3:2],\processQ_reg[9]_6 ,is_trigger_time4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,\dc_bias[3]_i_23 }),
        .O(NLW_is_trigger_time4_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,\dc_bias[3]_i_23_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \is_trigger_time4_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\is_trigger_time4_inferred__0/i__carry_n_0 ,\is_trigger_time4_inferred__0/i__carry_n_1 ,\is_trigger_time4_inferred__0/i__carry_n_2 ,\is_trigger_time4_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\is_trigger_time4_inferred__0/i__carry__0_0 ),
        .O(\NLW_is_trigger_time4_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S(\is_trigger_time4_inferred__0/i__carry__0_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \is_trigger_time4_inferred__0/i__carry__0 
       (.CI(\is_trigger_time4_inferred__0/i__carry_n_0 ),
        .CO({\NLW_is_trigger_time4_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],\processQ_reg[9]_7 ,\is_trigger_time4_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dc_bias[3]_i_14 }),
        .O(\NLW_is_trigger_time4_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\dc_bias[3]_i_14_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \is_trigger_time4_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\is_trigger_time4_inferred__1/i__carry_n_0 ,\is_trigger_time4_inferred__1/i__carry_n_1 ,\is_trigger_time4_inferred__1/i__carry_n_2 ,\is_trigger_time4_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\is_trigger_time4_inferred__1/i__carry__0_0 ),
        .O(\NLW_is_trigger_time4_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S(\is_trigger_time4_inferred__1/i__carry__0_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \is_trigger_time4_inferred__1/i__carry__0 
       (.CI(\is_trigger_time4_inferred__1/i__carry_n_0 ),
        .CO({\NLW_is_trigger_time4_inferred__1/i__carry__0_CO_UNCONNECTED [3:2],\processQ_reg[9]_9 ,\is_trigger_time4_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,\dc_bias[3]_i_23_3 }),
        .O(\NLW_is_trigger_time4_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\dc_bias[3]_i_23_4 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \is_trigger_time5_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\is_trigger_time5_inferred__0/i__carry_n_0 ,\is_trigger_time5_inferred__0/i__carry_n_1 ,\is_trigger_time5_inferred__0/i__carry_n_2 ,\is_trigger_time5_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\is_trigger_time5_inferred__0/i__carry__0_0 ),
        .O(\NLW_is_trigger_time5_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S(\is_trigger_time5_inferred__0/i__carry__0_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \is_trigger_time5_inferred__0/i__carry__0 
       (.CI(\is_trigger_time5_inferred__0/i__carry_n_0 ),
        .CO({\NLW_is_trigger_time5_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],\processQ_reg[9]_8 ,\is_trigger_time5_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dc_bias[3]_i_23_1 }),
        .O(\NLW_is_trigger_time5_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\dc_bias[3]_i_23_2 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 is_trigger_volt2_carry
       (.CI(1'b0),
        .CO({is_trigger_volt2_carry_n_0,is_trigger_volt2_carry_n_1,is_trigger_volt2_carry_n_2,is_trigger_volt2_carry_n_3}),
        .CYINIT(1'b1),
        .DI(is_trigger_volt2_carry__0_0),
        .O(NLW_is_trigger_volt2_carry_O_UNCONNECTED[3:0]),
        .S(is_trigger_volt2_carry__0_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 is_trigger_volt2_carry__0
       (.CI(is_trigger_volt2_carry_n_0),
        .CO({NLW_is_trigger_volt2_carry__0_CO_UNCONNECTED[3:2],\process_q_reg[10] ,is_trigger_volt2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\dc_bias[3]_i_16__0_1 }),
        .O(NLW_is_trigger_volt2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,\dc_bias[3]_i_16__0_2 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 is_trigger_volt4_carry
       (.CI(1'b0),
        .CO({is_trigger_volt4_carry_n_0,is_trigger_volt4_carry_n_1,is_trigger_volt4_carry_n_2,is_trigger_volt4_carry_n_3}),
        .CYINIT(1'b1),
        .DI(is_trigger_volt4_carry__0_0),
        .O(NLW_is_trigger_volt4_carry_O_UNCONNECTED[3:0]),
        .S(is_trigger_volt4_carry__0_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 is_trigger_volt4_carry__0
       (.CI(is_trigger_volt4_carry_n_0),
        .CO({NLW_is_trigger_volt4_carry__0_CO_UNCONNECTED[3:2],\processQ_reg[9]_2 ,is_trigger_volt4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,\dc_bias[3]_i_15__0 }),
        .O(NLW_is_trigger_volt4_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,\dc_bias[3]_i_15__0_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \is_trigger_volt4_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\is_trigger_volt4_inferred__0/i__carry_n_0 ,\is_trigger_volt4_inferred__0/i__carry_n_1 ,\is_trigger_volt4_inferred__0/i__carry_n_2 ,\is_trigger_volt4_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\is_trigger_volt4_inferred__0/i__carry__0_0 ),
        .O(\NLW_is_trigger_volt4_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S(\is_trigger_volt4_inferred__0/i__carry__0_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \is_trigger_volt4_inferred__0/i__carry__0 
       (.CI(\is_trigger_volt4_inferred__0/i__carry_n_0 ),
        .CO({\NLW_is_trigger_volt4_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],\processQ_reg[9]_3 ,\is_trigger_volt4_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dc_bias[3]_i_16__0 }),
        .O(\NLW_is_trigger_volt4_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\dc_bias[3]_i_16__0_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \is_trigger_volt4_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\is_trigger_volt4_inferred__1/i__carry_n_0 ,\is_trigger_volt4_inferred__1/i__carry_n_1 ,\is_trigger_volt4_inferred__1/i__carry_n_2 ,\is_trigger_volt4_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\is_trigger_volt4_inferred__1/i__carry__0_0 ),
        .O(\NLW_is_trigger_volt4_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S(\is_trigger_volt4_inferred__1/i__carry__0_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \is_trigger_volt4_inferred__1/i__carry__0 
       (.CI(\is_trigger_volt4_inferred__1/i__carry_n_0 ),
        .CO({\NLW_is_trigger_volt4_inferred__1/i__carry__0_CO_UNCONNECTED [3:2],\processQ_reg[9]_5 ,\is_trigger_volt4_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,\dc_bias[3]_i_15__0_3 }),
        .O(\NLW_is_trigger_volt4_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\dc_bias[3]_i_15__0_4 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \is_trigger_volt5_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\is_trigger_volt5_inferred__0/i__carry_n_0 ,\is_trigger_volt5_inferred__0/i__carry_n_1 ,\is_trigger_volt5_inferred__0/i__carry_n_2 ,\is_trigger_volt5_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\is_trigger_volt5_inferred__0/i__carry__0_0 ),
        .O(\NLW_is_trigger_volt5_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S(\is_trigger_volt5_inferred__0/i__carry__0_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \is_trigger_volt5_inferred__0/i__carry__0 
       (.CI(\is_trigger_volt5_inferred__0/i__carry_n_0 ),
        .CO({\NLW_is_trigger_volt5_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],\processQ_reg[9]_4 ,\is_trigger_volt5_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dc_bias[3]_i_15__0_1 }),
        .O(\NLW_is_trigger_volt5_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\dc_bias[3]_i_15__0_2 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 is_vertical_gridline1__20_carry
       (.CI(1'b0),
        .CO({is_vertical_gridline1__20_carry_n_0,is_vertical_gridline1__20_carry_n_1,is_vertical_gridline1__20_carry_n_2,is_vertical_gridline1__20_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\dc_bias[2]_i_5 ,\dc_bias[2]_i_5_0 ,minusOp[0],1'b1}),
        .O({is_vertical_gridline1__20_carry_n_4,is_vertical_gridline1__20_carry_n_5,is_vertical_gridline1__20_carry_n_6,\processQ_reg[2] }),
        .S(\dc_bias[2]_i_5_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 is_vertical_gridline1__20_carry__0
       (.CI(is_vertical_gridline1__20_carry_n_0),
        .CO({NLW_is_vertical_gridline1__20_carry__0_CO_UNCONNECTED[3:1],is_vertical_gridline1__20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,minusOp[2]}),
        .O({NLW_is_vertical_gridline1__20_carry__0_O_UNCONNECTED[3:2],is_vertical_gridline1__20_carry__0_n_6,is_vertical_gridline1__20_carry__0_n_7}),
        .S({1'b0,1'b0,\dc_bias[2]_i_11_0 }));
  CARRY4 is_vertical_gridline1_carry
       (.CI(1'b0),
        .CO({is_vertical_gridline1_carry_n_0,is_vertical_gridline1_carry_n_1,is_vertical_gridline1_carry_n_2,is_vertical_gridline1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DI,1'b0}),
        .O(NLW_is_vertical_gridline1_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 is_vertical_gridline1_carry__0
       (.CI(is_vertical_gridline1_carry_n_0),
        .CO({is_vertical_gridline1_carry__0_n_0,is_vertical_gridline1_carry__0_n_1,is_vertical_gridline1_carry__0_n_2,is_vertical_gridline1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,minusOp[2],is_vertical_gridline1__20_carry_i_4,minusOp[1]}),
        .O({O,NLW_is_vertical_gridline1_carry__0_O_UNCONNECTED[2:0]}),
        .S({minusOp[3],is_vertical_gridline1__20_carry_i_4_0}));
  CARRY4 is_vertical_gridline1_carry__1
       (.CI(is_vertical_gridline1_carry__0_n_0),
        .CO({CO,NLW_is_vertical_gridline1_carry__1_CO_UNCONNECTED[2],is_vertical_gridline1_carry__1_n_2,is_vertical_gridline1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_is_vertical_gridline1_carry__1_O_UNCONNECTED[3],\processQ_reg[9] }),
        .S({1'b1,is_vertical_gridline1__20_carry_i_4_1}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
   (ADDRBWRADDR,
    sw,
    \sdp_bl.ramb18_dp_bl.ram18_bl ,
    switch,
    SS,
    E,
    s00_axi_aclk);
  output [9:0]ADDRBWRADDR;
  output [0:0]sw;
  input [9:0]\sdp_bl.ramb18_dp_bl.ram18_bl ;
  input [0:0]switch;
  input [0:0]SS;
  input [0:0]E;
  input s00_axi_aclk;

  wire [9:0]ADDRBWRADDR;
  wire [0:0]E;
  wire [0:0]SS;
  wire [9:0]processQ;
  wire \processQ[9]_i_3_n_0 ;
  wire roll_i_1_n_0;
  wire roll_i_2_n_0;
  wire s00_axi_aclk;
  wire [9:0]\sdp_bl.ramb18_dp_bl.ram18_bl ;
  wire [0:0]sw;
  wire [0:0]switch;
  wire [9:0]writeCntr;

  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \processQ[0]_i_1 
       (.I0(writeCntr[0]),
        .O(processQ[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \processQ[1]_i_1 
       (.I0(writeCntr[0]),
        .I1(writeCntr[1]),
        .O(processQ[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \processQ[2]_i_1 
       (.I0(writeCntr[1]),
        .I1(writeCntr[0]),
        .I2(writeCntr[2]),
        .O(processQ[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \processQ[3]_i_1 
       (.I0(writeCntr[2]),
        .I1(writeCntr[0]),
        .I2(writeCntr[1]),
        .I3(writeCntr[3]),
        .O(processQ[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \processQ[4]_i_1 
       (.I0(writeCntr[3]),
        .I1(writeCntr[1]),
        .I2(writeCntr[0]),
        .I3(writeCntr[2]),
        .I4(writeCntr[4]),
        .O(processQ[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \processQ[5]_i_1 
       (.I0(writeCntr[4]),
        .I1(writeCntr[2]),
        .I2(writeCntr[0]),
        .I3(writeCntr[1]),
        .I4(writeCntr[3]),
        .I5(writeCntr[5]),
        .O(processQ[5]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \processQ[6]_i_1 
       (.I0(\processQ[9]_i_3_n_0 ),
        .I1(writeCntr[6]),
        .O(processQ[6]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \processQ[7]_i_1 
       (.I0(writeCntr[6]),
        .I1(\processQ[9]_i_3_n_0 ),
        .I2(writeCntr[7]),
        .O(processQ[7]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \processQ[8]_i_1 
       (.I0(writeCntr[7]),
        .I1(\processQ[9]_i_3_n_0 ),
        .I2(writeCntr[6]),
        .I3(writeCntr[8]),
        .O(processQ[8]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \processQ[9]_i_2 
       (.I0(writeCntr[8]),
        .I1(writeCntr[6]),
        .I2(\processQ[9]_i_3_n_0 ),
        .I3(writeCntr[7]),
        .I4(writeCntr[9]),
        .O(processQ[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \processQ[9]_i_3 
       (.I0(writeCntr[4]),
        .I1(writeCntr[2]),
        .I2(writeCntr[0]),
        .I3(writeCntr[1]),
        .I4(writeCntr[3]),
        .I5(writeCntr[5]),
        .O(\processQ[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[0]),
        .Q(writeCntr[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[1]),
        .Q(writeCntr[1]),
        .R(SS));
  FDSE #(
    .INIT(1'b1)) 
    \processQ_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[2]),
        .Q(writeCntr[2]),
        .S(SS));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[3]),
        .Q(writeCntr[3]),
        .R(SS));
  FDSE #(
    .INIT(1'b1)) 
    \processQ_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[4]),
        .Q(writeCntr[4]),
        .S(SS));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[5]),
        .Q(writeCntr[5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[6]),
        .Q(writeCntr[6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[7]),
        .Q(writeCntr[7]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[8]),
        .Q(writeCntr[8]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[9]),
        .Q(writeCntr[9]),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    roll_i_1
       (.I0(writeCntr[2]),
        .I1(writeCntr[3]),
        .I2(writeCntr[1]),
        .I3(writeCntr[0]),
        .I4(roll_i_2_n_0),
        .O(roll_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    roll_i_2
       (.I0(writeCntr[6]),
        .I1(writeCntr[7]),
        .I2(writeCntr[4]),
        .I3(writeCntr[5]),
        .I4(writeCntr[9]),
        .I5(writeCntr[8]),
        .O(roll_i_2_n_0));
  FDRE roll_reg
       (.C(s00_axi_aclk),
        .CE(E),
        .D(roll_i_1_n_0),
        .Q(sw),
        .R(SS));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_10__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [1]),
        .I1(writeCntr[1]),
        .I2(switch),
        .O(ADDRBWRADDR[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_11__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [0]),
        .I1(writeCntr[0]),
        .I2(switch),
        .O(ADDRBWRADDR[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_2__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [9]),
        .I1(writeCntr[9]),
        .I2(switch),
        .O(ADDRBWRADDR[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_3__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [8]),
        .I1(writeCntr[8]),
        .I2(switch),
        .O(ADDRBWRADDR[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_4__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [7]),
        .I1(writeCntr[7]),
        .I2(switch),
        .O(ADDRBWRADDR[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_5__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [6]),
        .I1(writeCntr[6]),
        .I2(switch),
        .O(ADDRBWRADDR[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_6__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [5]),
        .I1(writeCntr[5]),
        .I2(switch),
        .O(ADDRBWRADDR[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_7__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [4]),
        .I1(writeCntr[4]),
        .I2(switch),
        .O(ADDRBWRADDR[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_8__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [3]),
        .I1(writeCntr[3]),
        .I2(switch),
        .O(ADDRBWRADDR[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_9__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [2]),
        .I1(writeCntr[2]),
        .I2(switch),
        .O(ADDRBWRADDR[2]));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized0
   (E,
    D,
    switch_1_sp_1,
    switch_0_sp_1,
    \processQ_reg[4]_0 ,
    Q,
    \processQ_reg[8]_0 ,
    \processQ_reg[2]_0 ,
    S,
    \processQ_reg[6]_0 ,
    \processQ_reg[9]_0 ,
    \processQ_reg[8]_1 ,
    \processQ_reg[2]_1 ,
    \process_q_reg[1] ,
    \processQ_reg[9]_1 ,
    \switch[0]_0 ,
    \switch[1]_0 ,
    \process_q_reg[1]_0 ,
    \processQ_reg[2]_2 ,
    h_sync_is_low_reg,
    \dc_bias_reg[3] ,
    \dc_bias_reg[3]_0 ,
    \processQ_reg[0]_0 ,
    \processQ_reg[2]_3 ,
    \switch[0]_1 ,
    \processQ_reg[9]_2 ,
    \switch[1]_1 ,
    \switch[1]_2 ,
    minusOp,
    h_sync_is_low0,
    h_blank_is_low0,
    \processQ_reg[2]_4 ,
    \processQ_reg[7]_0 ,
    \processQ_reg[0]_1 ,
    \processQ_reg[1]_0 ,
    \processQ_reg[0]_2 ,
    \process_q_reg[1]_1 ,
    \processQ_reg[1]_1 ,
    \processQ_reg[1]_2 ,
    \processQ_reg[9]_3 ,
    \processQ_reg[2]_5 ,
    \switch[1]_3 ,
    DI,
    \processQ_reg[2]_6 ,
    \processQ_reg[2]_7 ,
    \process_q_reg[1]_2 ,
    CLK,
    \encoded_reg[0] ,
    \encoded_reg[0]_0 ,
    \encoded_reg[0]_1 ,
    \encoded_reg[0]_2 ,
    is_vertical_gridline1__20_carry__0,
    O,
    s00_axi_aresetn,
    is_trigger_time2_carry__0,
    \encoded_reg[4] ,
    \encoded_reg[4]_0 ,
    \encoded_reg[4]_1 ,
    \encoded_reg[4]_2 ,
    \dc_bias_reg[3]_1 ,
    \dc_bias_reg[3]_2 ,
    \dc_bias_reg[3]_3 ,
    CO,
    switch,
    \encoded_reg[4]_3 ,
    \encoded_reg[8] ,
    \dc_bias[2]_i_7_0 ,
    \dc_bias[2]_i_7_1 ,
    \dc_bias[3]_i_10_0 ,
    \dc_bias[3]_i_10_1 ,
    \dc_bias[3]_i_10_2 ,
    \dc_bias[2]_i_5_0 ,
    \dc_bias[2]_i_5_1 ,
    \dc_bias[3]_i_2 ,
    \dc_bias[3]_i_2_0 ,
    \dc_bias[3]_i_2_1 ,
    \dc_bias[3]_i_2_2 ,
    \dc_bias[2]_i_4 ,
    \dc_bias[2]_i_4_0 ,
    is_vertical_gridline1__20_carry__0_0);
  output [0:0]E;
  output [1:0]D;
  output switch_1_sp_1;
  output switch_0_sp_1;
  output [3:0]\processQ_reg[4]_0 ;
  output [9:0]Q;
  output [2:0]\processQ_reg[8]_0 ;
  output \processQ_reg[2]_0 ;
  output [3:0]S;
  output [1:0]\processQ_reg[6]_0 ;
  output [2:0]\processQ_reg[9]_0 ;
  output [0:0]\processQ_reg[8]_1 ;
  output [1:0]\processQ_reg[2]_1 ;
  output [0:0]\process_q_reg[1] ;
  output \processQ_reg[9]_1 ;
  output \switch[0]_0 ;
  output \switch[1]_0 ;
  output [0:0]\process_q_reg[1]_0 ;
  output [1:0]\processQ_reg[2]_2 ;
  output [3:0]h_sync_is_low_reg;
  output [0:0]\dc_bias_reg[3] ;
  output \dc_bias_reg[3]_0 ;
  output \processQ_reg[0]_0 ;
  output \processQ_reg[2]_3 ;
  output \switch[0]_1 ;
  output \processQ_reg[9]_2 ;
  output \switch[1]_1 ;
  output \switch[1]_2 ;
  output [3:0]minusOp;
  output h_sync_is_low0;
  output h_blank_is_low0;
  output [1:0]\processQ_reg[2]_4 ;
  output [3:0]\processQ_reg[7]_0 ;
  output [0:0]\processQ_reg[0]_1 ;
  output [0:0]\processQ_reg[1]_0 ;
  output [0:0]\processQ_reg[0]_2 ;
  output [0:0]\process_q_reg[1]_1 ;
  output [0:0]\processQ_reg[1]_1 ;
  output [0:0]\processQ_reg[1]_2 ;
  output [0:0]\processQ_reg[9]_3 ;
  output [1:0]\processQ_reg[2]_5 ;
  output \switch[1]_3 ;
  output [1:0]DI;
  output [0:0]\processQ_reg[2]_6 ;
  output [1:0]\processQ_reg[2]_7 ;
  output [0:0]\process_q_reg[1]_2 ;
  input CLK;
  input \encoded_reg[0] ;
  input [2:0]\encoded_reg[0]_0 ;
  input \encoded_reg[0]_1 ;
  input \encoded_reg[0]_2 ;
  input [2:0]is_vertical_gridline1__20_carry__0;
  input [0:0]O;
  input s00_axi_aresetn;
  input [8:0]is_trigger_time2_carry__0;
  input \encoded_reg[4] ;
  input \encoded_reg[4]_0 ;
  input [0:0]\encoded_reg[4]_1 ;
  input \encoded_reg[4]_2 ;
  input \dc_bias_reg[3]_1 ;
  input \dc_bias_reg[3]_2 ;
  input \dc_bias_reg[3]_3 ;
  input [0:0]CO;
  input [1:0]switch;
  input [0:0]\encoded_reg[4]_3 ;
  input \encoded_reg[8] ;
  input \dc_bias[2]_i_7_0 ;
  input \dc_bias[2]_i_7_1 ;
  input \dc_bias[3]_i_10_0 ;
  input [0:0]\dc_bias[3]_i_10_1 ;
  input \dc_bias[3]_i_10_2 ;
  input \dc_bias[2]_i_5_0 ;
  input [0:0]\dc_bias[2]_i_5_1 ;
  input \dc_bias[3]_i_2 ;
  input \dc_bias[3]_i_2_0 ;
  input \dc_bias[3]_i_2_1 ;
  input \dc_bias[3]_i_2_2 ;
  input \dc_bias[2]_i_4 ;
  input \dc_bias[2]_i_4_0 ;
  input [0:0]is_vertical_gridline1__20_carry__0_0;

  wire CLK;
  wire [0:0]CO;
  wire [1:0]D;
  wire [1:0]DI;
  wire [0:0]E;
  wire [0:0]O;
  wire [9:0]Q;
  wire [3:0]S;
  wire [9:1]data0;
  wire \dc_bias[2]_i_12_n_0 ;
  wire \dc_bias[2]_i_13_n_0 ;
  wire \dc_bias[2]_i_14_n_0 ;
  wire \dc_bias[2]_i_15_n_0 ;
  wire \dc_bias[2]_i_16_n_0 ;
  wire \dc_bias[2]_i_17_n_0 ;
  wire \dc_bias[2]_i_18_n_0 ;
  wire \dc_bias[2]_i_19_n_0 ;
  wire \dc_bias[2]_i_21_n_0 ;
  wire \dc_bias[2]_i_22_n_0 ;
  wire \dc_bias[2]_i_23_n_0 ;
  wire \dc_bias[2]_i_25_n_0 ;
  wire \dc_bias[2]_i_26_n_0 ;
  wire \dc_bias[2]_i_27_n_0 ;
  wire \dc_bias[2]_i_28_n_0 ;
  wire \dc_bias[2]_i_30_n_0 ;
  wire \dc_bias[2]_i_31_n_0 ;
  wire \dc_bias[2]_i_32_n_0 ;
  wire \dc_bias[2]_i_36_n_0 ;
  wire \dc_bias[2]_i_37_n_0 ;
  wire \dc_bias[2]_i_38_n_0 ;
  wire \dc_bias[2]_i_39_n_0 ;
  wire \dc_bias[2]_i_4 ;
  wire \dc_bias[2]_i_40_n_0 ;
  wire \dc_bias[2]_i_41_n_0 ;
  wire \dc_bias[2]_i_42_n_0 ;
  wire \dc_bias[2]_i_43_n_0 ;
  wire \dc_bias[2]_i_4_0 ;
  wire \dc_bias[2]_i_50_n_0 ;
  wire \dc_bias[2]_i_51_n_0 ;
  wire \dc_bias[2]_i_52_n_0 ;
  wire \dc_bias[2]_i_53_n_0 ;
  wire \dc_bias[2]_i_5_0 ;
  wire [0:0]\dc_bias[2]_i_5_1 ;
  wire \dc_bias[2]_i_5_n_0 ;
  wire \dc_bias[2]_i_6_n_0 ;
  wire \dc_bias[2]_i_7_0 ;
  wire \dc_bias[2]_i_7_1 ;
  wire \dc_bias[2]_i_7_n_0 ;
  wire \dc_bias[2]_i_8_n_0 ;
  wire \dc_bias[2]_i_9_n_0 ;
  wire \dc_bias[3]_i_10_0 ;
  wire [0:0]\dc_bias[3]_i_10_1 ;
  wire \dc_bias[3]_i_10_2 ;
  wire \dc_bias[3]_i_12__0_n_0 ;
  wire \dc_bias[3]_i_13_n_0 ;
  wire \dc_bias[3]_i_15_n_0 ;
  wire \dc_bias[3]_i_17__0_n_0 ;
  wire \dc_bias[3]_i_17_n_0 ;
  wire \dc_bias[3]_i_2 ;
  wire \dc_bias[3]_i_25_n_0 ;
  wire \dc_bias[3]_i_27_n_0 ;
  wire \dc_bias[3]_i_2_0 ;
  wire \dc_bias[3]_i_2_1 ;
  wire \dc_bias[3]_i_2_2 ;
  wire \dc_bias[3]_i_2__1_n_0 ;
  wire \dc_bias[3]_i_4_n_0 ;
  wire \dc_bias[3]_i_5__0_n_0 ;
  wire [0:0]\dc_bias_reg[3] ;
  wire \dc_bias_reg[3]_0 ;
  wire \dc_bias_reg[3]_1 ;
  wire \dc_bias_reg[3]_2 ;
  wire \dc_bias_reg[3]_3 ;
  wire \encoded_reg[0] ;
  wire [2:0]\encoded_reg[0]_0 ;
  wire \encoded_reg[0]_1 ;
  wire \encoded_reg[0]_2 ;
  wire \encoded_reg[4] ;
  wire \encoded_reg[4]_0 ;
  wire [0:0]\encoded_reg[4]_1 ;
  wire \encoded_reg[4]_2 ;
  wire [0:0]\encoded_reg[4]_3 ;
  wire \encoded_reg[8] ;
  wire h_blank_is_low0;
  wire h_blank_is_low_i_2_n_0;
  wire h_blank_is_low_i_3_n_0;
  wire h_sync_is_low0;
  wire h_sync_is_low_i_2_n_0;
  wire [3:0]h_sync_is_low_reg;
  wire [8:0]is_trigger_time2_carry__0;
  wire [2:0]is_vertical_gridline1__20_carry__0;
  wire [0:0]is_vertical_gridline1__20_carry__0_0;
  wire is_vertical_gridline1__20_carry__0_i_3_n_0;
  wire is_vertical_gridline1__20_carry__0_i_4_n_0;
  wire is_vertical_gridline1_carry__0_i_8_n_0;
  wire is_vertical_gridline1_carry__0_i_9_n_0;
  wire [3:0]minusOp;
  wire \processQ[0]_i_1__4_n_0 ;
  wire \processQ[6]_i_1__5_n_0 ;
  wire \processQ[9]_i_1__4_n_0 ;
  wire \processQ[9]_i_3__0_n_0 ;
  wire \processQ[9]_i_4_n_0 ;
  wire \processQ_reg[0]_0 ;
  wire [0:0]\processQ_reg[0]_1 ;
  wire [0:0]\processQ_reg[0]_2 ;
  wire [0:0]\processQ_reg[1]_0 ;
  wire [0:0]\processQ_reg[1]_1 ;
  wire [0:0]\processQ_reg[1]_2 ;
  wire \processQ_reg[2]_0 ;
  wire [1:0]\processQ_reg[2]_1 ;
  wire [1:0]\processQ_reg[2]_2 ;
  wire \processQ_reg[2]_3 ;
  wire [1:0]\processQ_reg[2]_4 ;
  wire [1:0]\processQ_reg[2]_5 ;
  wire [0:0]\processQ_reg[2]_6 ;
  wire [1:0]\processQ_reg[2]_7 ;
  wire [3:0]\processQ_reg[4]_0 ;
  wire [1:0]\processQ_reg[6]_0 ;
  wire [3:0]\processQ_reg[7]_0 ;
  wire [2:0]\processQ_reg[8]_0 ;
  wire [0:0]\processQ_reg[8]_1 ;
  wire [2:0]\processQ_reg[9]_0 ;
  wire \processQ_reg[9]_1 ;
  wire \processQ_reg[9]_2 ;
  wire [0:0]\processQ_reg[9]_3 ;
  wire [0:0]\process_q_reg[1] ;
  wire [0:0]\process_q_reg[1]_0 ;
  wire [0:0]\process_q_reg[1]_1 ;
  wire [0:0]\process_q_reg[1]_2 ;
  wire roll_i_1__0_n_0;
  wire roll_i_2__0_n_0;
  wire s00_axi_aresetn;
  wire [1:0]switch;
  wire \switch[0]_0 ;
  wire \switch[0]_1 ;
  wire \switch[1]_0 ;
  wire \switch[1]_1 ;
  wire \switch[1]_2 ;
  wire \switch[1]_3 ;
  wire switch_0_sn_1;
  wire switch_1_sn_1;

  assign switch_0_sp_1 = switch_0_sn_1;
  assign switch_1_sp_1 = switch_1_sn_1;
  LUT6 #(
    .INIT(64'hF700FF00FF00FF40)) 
    \dc_bias[2]_i_12 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\dc_bias[2]_i_25_n_0 ),
        .I3(\dc_bias[2]_i_26_n_0 ),
        .I4(\dc_bias[2]_i_27_n_0 ),
        .I5(\dc_bias[2]_i_28_n_0 ),
        .O(\dc_bias[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h906F)) 
    \dc_bias[2]_i_13 
       (.I0(Q[2]),
        .I1(\dc_bias[2]_i_27_n_0 ),
        .I2(Q[3]),
        .I3(\dc_bias[2]_i_25_n_0 ),
        .O(\dc_bias[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8055225588552215)) 
    \dc_bias[2]_i_14 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\dc_bias[2]_i_25_n_0 ),
        .I3(\dc_bias[2]_i_26_n_0 ),
        .I4(\dc_bias[2]_i_27_n_0 ),
        .I5(\dc_bias[2]_i_28_n_0 ),
        .O(\dc_bias[2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \dc_bias[2]_i_15 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\dc_bias[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFFFEFEFF)) 
    \dc_bias[2]_i_16 
       (.I0(\dc_bias[2]_i_7_0 ),
        .I1(\dc_bias[2]_i_7_1 ),
        .I2(\processQ_reg[9]_2 ),
        .I3(Q[3]),
        .I4(\dc_bias[2]_i_27_n_0 ),
        .I5(Q[2]),
        .O(\dc_bias[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000873C78C3873C)) 
    \dc_bias[2]_i_17 
       (.I0(\dc_bias[2]_i_30_n_0 ),
        .I1(\dc_bias[2]_i_31_n_0 ),
        .I2(\dc_bias[2]_i_28_n_0 ),
        .I3(\dc_bias[2]_i_27_n_0 ),
        .I4(data0[1]),
        .I5(\dc_bias[2]_i_32_n_0 ),
        .O(\dc_bias[2]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h9D)) 
    \dc_bias[2]_i_18 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\dc_bias[2]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dc_bias[2]_i_19 
       (.I0(Q[3]),
        .I1(\dc_bias[2]_i_27_n_0 ),
        .O(\dc_bias[2]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \dc_bias[2]_i_2 
       (.I0(\processQ_reg[2]_3 ),
        .I1(\encoded_reg[8] ),
        .O(switch_1_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \dc_bias[2]_i_21 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(\dc_bias[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \dc_bias[2]_i_22 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\dc_bias[2]_i_36_n_0 ),
        .O(\dc_bias[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \dc_bias[2]_i_23 
       (.I0(Q[8]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\dc_bias[2]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h956A)) 
    \dc_bias[2]_i_25 
       (.I0(\dc_bias[2]_i_37_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(\dc_bias[2]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h2340DCBF02C4FD3B)) 
    \dc_bias[2]_i_26 
       (.I0(\dc_bias[2]_i_38_n_0 ),
        .I1(is_vertical_gridline1__20_carry__0_i_4_n_0),
        .I2(\processQ_reg[2]_0 ),
        .I3(\dc_bias[2]_i_39_n_0 ),
        .I4(\dc_bias[2]_i_40_n_0 ),
        .I5(\dc_bias[2]_i_37_n_0 ),
        .O(\dc_bias[2]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFD4000FFFF)) 
    \dc_bias[2]_i_27 
       (.I0(\dc_bias[2]_i_41_n_0 ),
        .I1(\dc_bias[2]_i_37_n_0 ),
        .I2(\processQ_reg[2]_0 ),
        .I3(\dc_bias[2]_i_38_n_0 ),
        .I4(\dc_bias[2]_i_42_n_0 ),
        .I5(\dc_bias[2]_i_43_n_0 ),
        .O(\dc_bias[2]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h6966666666969696)) 
    \dc_bias[2]_i_28 
       (.I0(Q[5]),
        .I1(\dc_bias[2]_i_39_n_0 ),
        .I2(\dc_bias[2]_i_37_n_0 ),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\dc_bias[2]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088808888)) 
    \dc_bias[2]_i_2__0 
       (.I0(\encoded_reg[8] ),
        .I1(\dc_bias[2]_i_5_n_0 ),
        .I2(\dc_bias[2]_i_6_n_0 ),
        .I3(\dc_bias[2]_i_7_n_0 ),
        .I4(\dc_bias[2]_i_8_n_0 ),
        .I5(\processQ_reg[9]_1 ),
        .O(\switch[1]_2 ));
  LUT6 #(
    .INIT(64'h0F770F070F070F07)) 
    \dc_bias[2]_i_3 
       (.I0(CO),
        .I1(switch[0]),
        .I2(\processQ_reg[2]_3 ),
        .I3(\processQ_reg[9]_2 ),
        .I4(switch[1]),
        .I5(\encoded_reg[4]_3 ),
        .O(\switch[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h4080)) 
    \dc_bias[2]_i_30 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\dc_bias[2]_i_37_n_0 ),
        .O(\dc_bias[2]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hF9FF)) 
    \dc_bias[2]_i_31 
       (.I0(Q[4]),
        .I1(\dc_bias[2]_i_37_n_0 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\dc_bias[2]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dc_bias[2]_i_32 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\dc_bias[2]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dc_bias[2]_i_36 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\dc_bias[2]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFF02FF00FF00BF00)) 
    \dc_bias[2]_i_37 
       (.I0(\dc_bias[2]_i_40_n_0 ),
        .I1(is_vertical_gridline1__20_carry__0_i_4_n_0),
        .I2(\processQ_reg[2]_0 ),
        .I3(\dc_bias[2]_i_50_n_0 ),
        .I4(\dc_bias[2]_i_39_n_0 ),
        .I5(\dc_bias[2]_i_51_n_0 ),
        .O(\dc_bias[2]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dc_bias[2]_i_38 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(\dc_bias[2]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hE07F00FF00FF00FF)) 
    \dc_bias[2]_i_39 
       (.I0(is_vertical_gridline1_carry__0_i_9_n_0),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[9]),
        .I4(Q[8]),
        .I5(Q[7]),
        .O(\dc_bias[2]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h3D95959595959594)) 
    \dc_bias[2]_i_40 
       (.I0(Q[6]),
        .I1(is_vertical_gridline1_carry__0_i_9_n_0),
        .I2(Q[5]),
        .I3(Q[9]),
        .I4(Q[8]),
        .I5(Q[7]),
        .O(\dc_bias[2]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h99999996)) 
    \dc_bias[2]_i_41 
       (.I0(\dc_bias[2]_i_39_n_0 ),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\dc_bias[2]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h3CC396C396C3C3C3)) 
    \dc_bias[2]_i_42 
       (.I0(\processQ_reg[2]_0 ),
        .I1(\dc_bias[2]_i_52_n_0 ),
        .I2(Q[7]),
        .I3(\dc_bias[2]_i_53_n_0 ),
        .I4(is_vertical_gridline1__20_carry__0_i_4_n_0),
        .I5(\dc_bias[2]_i_39_n_0 ),
        .O(\dc_bias[2]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h9996666555555559)) 
    \dc_bias[2]_i_43 
       (.I0(\dc_bias[2]_i_40_n_0 ),
        .I1(\dc_bias[2]_i_39_n_0 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\dc_bias[2]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hBABABAAABABABABA)) 
    \dc_bias[2]_i_5 
       (.I0(\processQ_reg[9]_2 ),
        .I1(\dc_bias[2]_i_9_n_0 ),
        .I2(\dc_bias[3]_i_10_0 ),
        .I3(Q[0]),
        .I4(\dc_bias[3]_i_10_1 ),
        .I5(\dc_bias[3]_i_10_2 ),
        .O(\dc_bias[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9933B333B3333333)) 
    \dc_bias[2]_i_50 
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[6]),
        .I4(Q[5]),
        .I5(is_vertical_gridline1_carry__0_i_9_n_0),
        .O(\dc_bias[2]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAAD5D55555555555)) 
    \dc_bias[2]_i_51 
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[5]),
        .I4(is_vertical_gridline1_carry__0_i_9_n_0),
        .I5(Q[6]),
        .O(\dc_bias[2]_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h0057FFFF)) 
    \dc_bias[2]_i_52 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[6]),
        .O(\dc_bias[2]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F7F00000000FE)) 
    \dc_bias[2]_i_53 
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[5]),
        .I4(is_vertical_gridline1_carry__0_i_9_n_0),
        .I5(Q[6]),
        .O(\dc_bias[2]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h0008A008)) 
    \dc_bias[2]_i_6 
       (.I0(Q[2]),
        .I1(\dc_bias[2]_i_12_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\dc_bias[2]_i_13_n_0 ),
        .O(\dc_bias[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF1FFF1FFFFFFF1)) 
    \dc_bias[2]_i_7 
       (.I0(\dc_bias[2]_i_14_n_0 ),
        .I1(\dc_bias[2]_i_15_n_0 ),
        .I2(\dc_bias[2]_i_16_n_0 ),
        .I3(\dc_bias[2]_i_17_n_0 ),
        .I4(\dc_bias[2]_i_13_n_0 ),
        .I5(\dc_bias[2]_i_18_n_0 ),
        .O(\dc_bias[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF0C080)) 
    \dc_bias[2]_i_8 
       (.I0(\dc_bias[2]_i_12_n_0 ),
        .I1(\dc_bias[2]_i_19_n_0 ),
        .I2(\dc_bias[2]_i_13_n_0 ),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\dc_bias[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000080000000A2)) 
    \dc_bias[2]_i_9 
       (.I0(\dc_bias[2]_i_5_0 ),
        .I1(\dc_bias[2]_i_21_n_0 ),
        .I2(\dc_bias[2]_i_22_n_0 ),
        .I3(\dc_bias[2]_i_5_1 ),
        .I4(Q[9]),
        .I5(\dc_bias[2]_i_23_n_0 ),
        .O(\dc_bias[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A888A8A8A8A8)) 
    \dc_bias[3]_i_10 
       (.I0(\switch[1]_0 ),
        .I1(\processQ_reg[9]_1 ),
        .I2(\dc_bias[2]_i_5_n_0 ),
        .I3(\dc_bias[2]_i_6_n_0 ),
        .I4(\dc_bias[2]_i_7_n_0 ),
        .I5(\dc_bias[2]_i_8_n_0 ),
        .O(\switch[1]_1 ));
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    \dc_bias[3]_i_11 
       (.I0(\dc_bias[2]_i_5_n_0 ),
        .I1(\dc_bias[2]_i_6_n_0 ),
        .I2(\dc_bias[3]_i_13_n_0 ),
        .I3(\dc_bias[3]_i_12__0_n_0 ),
        .I4(\dc_bias[2]_i_8_n_0 ),
        .O(\processQ_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFD0000)) 
    \dc_bias[3]_i_12 
       (.I0(\dc_bias[2]_i_8_n_0 ),
        .I1(\dc_bias[3]_i_12__0_n_0 ),
        .I2(\dc_bias[3]_i_13_n_0 ),
        .I3(\dc_bias[2]_i_6_n_0 ),
        .I4(\dc_bias[2]_i_5_n_0 ),
        .I5(\processQ_reg[9]_1 ),
        .O(\processQ_reg[2]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'hEEE00EE0)) 
    \dc_bias[3]_i_12__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\dc_bias[2]_i_12_n_0 ),
        .I4(\dc_bias[2]_i_19_n_0 ),
        .O(\dc_bias[3]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCA3CE3BC)) 
    \dc_bias[3]_i_13 
       (.I0(\dc_bias[2]_i_13_n_0 ),
        .I1(\dc_bias[3]_i_25_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\dc_bias[2]_i_16_n_0 ),
        .O(\dc_bias[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \dc_bias[3]_i_15 
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(\dc_bias[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \dc_bias[3]_i_17 
       (.I0(Q[9]),
        .I1(Q[2]),
        .I2(Q[6]),
        .I3(Q[3]),
        .I4(\dc_bias[3]_i_27_n_0 ),
        .I5(\dc_bias[3]_i_15_n_0 ),
        .O(\dc_bias[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h8888888800008000)) 
    \dc_bias[3]_i_17__0 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\dc_bias[2]_i_15_n_0 ),
        .I5(Q[4]),
        .O(\dc_bias[3]_i_17__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000414455554144)) 
    \dc_bias[3]_i_1__0 
       (.I0(\dc_bias[3]_i_2__1_n_0 ),
        .I1(\dc_bias_reg[3]_1 ),
        .I2(\dc_bias[3]_i_4_n_0 ),
        .I3(\dc_bias_reg[3]_2 ),
        .I4(\dc_bias_reg[3]_0 ),
        .I5(\dc_bias_reg[3]_3 ),
        .O(\dc_bias_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h40BF08F7)) 
    \dc_bias[3]_i_25 
       (.I0(\dc_bias[2]_i_25_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\dc_bias[2]_i_28_n_0 ),
        .I4(\dc_bias[2]_i_27_n_0 ),
        .O(\dc_bias[3]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dc_bias[3]_i_27 
       (.I0(Q[5]),
        .I1(Q[4]),
        .O(\dc_bias[3]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hA8A0)) 
    \dc_bias[3]_i_2__1 
       (.I0(\encoded_reg[0] ),
        .I1(\processQ_reg[9]_1 ),
        .I2(\switch[0]_0 ),
        .I3(\switch[1]_0 ),
        .O(\dc_bias[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0F770F070F070F07)) 
    \dc_bias[3]_i_3__0 
       (.I0(CO),
        .I1(switch[0]),
        .I2(\dc_bias[3]_i_5__0_n_0 ),
        .I3(\processQ_reg[9]_2 ),
        .I4(switch[1]),
        .I5(\encoded_reg[4]_3 ),
        .O(switch_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \dc_bias[3]_i_3__1 
       (.I0(\processQ_reg[9]_2 ),
        .I1(switch[0]),
        .I2(CO),
        .O(\switch[0]_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDD0C0D000)) 
    \dc_bias[3]_i_4 
       (.I0(\encoded_reg[0]_0 [0]),
        .I1(\encoded_reg[0]_0 [1]),
        .I2(\switch[1]_0 ),
        .I3(\processQ_reg[9]_1 ),
        .I4(\processQ_reg[0]_0 ),
        .I5(\switch[0]_0 ),
        .O(\dc_bias[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dc_bias[3]_i_46 
       (.I0(Q[1]),
        .I1(is_trigger_time2_carry__0[0]),
        .O(\processQ_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h13)) 
    \dc_bias[3]_i_4__0 
       (.I0(\switch[1]_0 ),
        .I1(\switch[0]_0 ),
        .I2(\processQ_reg[9]_1 ),
        .O(\switch[1]_3 ));
  LUT3 #(
    .INIT(8'h60)) 
    \dc_bias[3]_i_50 
       (.I0(is_trigger_time2_carry__0[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\process_q_reg[1] ));
  LUT2 #(
    .INIT(4'h1)) 
    \dc_bias[3]_i_53 
       (.I0(Q[1]),
        .I1(is_trigger_time2_carry__0[0]),
        .O(\processQ_reg[1]_1 ));
  LUT3 #(
    .INIT(8'h06)) 
    \dc_bias[3]_i_57 
       (.I0(is_trigger_time2_carry__0[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\process_q_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAEFFFFFFFF)) 
    \dc_bias[3]_i_5__0 
       (.I0(\processQ_reg[9]_1 ),
        .I1(\dc_bias[2]_i_8_n_0 ),
        .I2(\dc_bias[3]_i_12__0_n_0 ),
        .I3(\dc_bias[3]_i_13_n_0 ),
        .I4(\dc_bias[2]_i_6_n_0 ),
        .I5(\dc_bias[2]_i_5_n_0 ),
        .O(\dc_bias[3]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hAA95)) 
    \dc_bias[3]_i_6 
       (.I0(\encoded_reg[0]_0 [2]),
        .I1(\switch[1]_0 ),
        .I2(\processQ_reg[2]_3 ),
        .I3(\switch[0]_0 ),
        .O(\dc_bias_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFABFFFFEEAB)) 
    \dc_bias[3]_i_6__0 
       (.I0(\dc_bias[2]_i_4 ),
        .I1(\dc_bias[3]_i_15_n_0 ),
        .I2(is_vertical_gridline1_carry__0_i_8_n_0),
        .I3(Q[9]),
        .I4(\dc_bias[2]_i_4_0 ),
        .I5(\dc_bias[3]_i_17__0_n_0 ),
        .O(\processQ_reg[9]_2 ));
  LUT6 #(
    .INIT(64'h0404040404040455)) 
    \dc_bias[3]_i_8 
       (.I0(\processQ_reg[9]_2 ),
        .I1(\dc_bias[3]_i_2 ),
        .I2(\dc_bias[3]_i_2_0 ),
        .I3(\dc_bias[3]_i_2_1 ),
        .I4(\dc_bias[3]_i_2_2 ),
        .I5(\dc_bias[3]_i_17_n_0 ),
        .O(\processQ_reg[9]_1 ));
  LUT4 #(
    .INIT(16'hBC08)) 
    \dc_bias[3]_i_83 
       (.I0(Q[2]),
        .I1(is_trigger_time2_carry__0[1]),
        .I2(is_trigger_time2_carry__0[2]),
        .I3(Q[3]),
        .O(\processQ_reg[2]_5 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \dc_bias[3]_i_84 
       (.I0(Q[1]),
        .I1(is_trigger_time2_carry__0[0]),
        .O(\processQ_reg[2]_5 [0]));
  LUT4 #(
    .INIT(16'h4128)) 
    \dc_bias[3]_i_87 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(is_trigger_time2_carry__0[2]),
        .I3(is_trigger_time2_carry__0[1]),
        .O(\processQ_reg[2]_7 [1]));
  LUT3 #(
    .INIT(8'h82)) 
    \dc_bias[3]_i_88 
       (.I0(Q[0]),
        .I1(is_trigger_time2_carry__0[0]),
        .I2(Q[1]),
        .O(\processQ_reg[2]_7 [0]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \dc_bias[3]_i_9 
       (.I0(\processQ_reg[9]_2 ),
        .I1(switch[1]),
        .I2(\encoded_reg[4]_3 ),
        .O(\switch[1]_0 ));
  LUT6 #(
    .INIT(64'h3505053505353505)) 
    \encoded[0]_i_1 
       (.I0(\encoded_reg[4] ),
        .I1(\encoded_reg[4]_2 ),
        .I2(\encoded_reg[4]_0 ),
        .I3(switch_1_sn_1),
        .I4(switch_0_sn_1),
        .I5(\encoded_reg[4]_1 ),
        .O(h_sync_is_low_reg[0]));
  LUT6 #(
    .INIT(64'hFF08000000000000)) 
    \encoded[0]_i_1__1 
       (.I0(\encoded_reg[0] ),
        .I1(switch_1_sn_1),
        .I2(switch_0_sn_1),
        .I3(\encoded_reg[0]_0 [2]),
        .I4(\encoded_reg[0]_1 ),
        .I5(\encoded_reg[0]_2 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hD1DDD1D1D1D1D1D1)) 
    \encoded[1]_i_1 
       (.I0(\encoded_reg[4] ),
        .I1(\encoded_reg[4]_0 ),
        .I2(\encoded_reg[4]_1 ),
        .I3(switch_0_sn_1),
        .I4(switch_1_sn_1),
        .I5(\encoded_reg[4]_2 ),
        .O(h_sync_is_low_reg[1]));
  LUT6 #(
    .INIT(64'h3A0A0A3A0A3A3A0A)) 
    \encoded[2]_i_1 
       (.I0(\encoded_reg[4] ),
        .I1(\encoded_reg[4]_2 ),
        .I2(\encoded_reg[4]_0 ),
        .I3(switch_1_sn_1),
        .I4(switch_0_sn_1),
        .I5(\encoded_reg[4]_1 ),
        .O(h_sync_is_low_reg[2]));
  LUT6 #(
    .INIT(64'hFF08FFFFFFFFFFFF)) 
    \encoded[2]_i_1__1 
       (.I0(\encoded_reg[0] ),
        .I1(switch_1_sn_1),
        .I2(switch_0_sn_1),
        .I3(\encoded_reg[0]_0 [2]),
        .I4(\encoded_reg[0]_1 ),
        .I5(\encoded_reg[0]_2 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hE2EEE2E2E2E2E2E2)) 
    \encoded[4]_i_1 
       (.I0(\encoded_reg[4] ),
        .I1(\encoded_reg[4]_0 ),
        .I2(\encoded_reg[4]_1 ),
        .I3(switch_0_sn_1),
        .I4(switch_1_sn_1),
        .I5(\encoded_reg[4]_2 ),
        .O(h_sync_is_low_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hFFFF01FF)) 
    h_blank_is_low_i_1
       (.I0(h_blank_is_low_i_2_n_0),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(h_blank_is_low_i_3_n_0),
        .O(h_blank_is_low0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    h_blank_is_low_i_2
       (.I0(Q[6]),
        .I1(\processQ[9]_i_3__0_n_0 ),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(h_blank_is_low_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    h_blank_is_low_i_3
       (.I0(\processQ[9]_i_4_n_0 ),
        .I1(\processQ[9]_i_3__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(h_blank_is_low_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000E70000000000)) 
    h_sync_is_low_i_1
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(h_sync_is_low_i_2_n_0),
        .I3(Q[7]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(h_sync_is_low0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h15555555)) 
    h_sync_is_low_i_2
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(h_sync_is_low_i_2_n_0));
  LUT4 #(
    .INIT(16'hBC08)) 
    i__carry_i_3__1
       (.I0(Q[2]),
        .I1(is_trigger_time2_carry__0[1]),
        .I2(is_trigger_time2_carry__0[2]),
        .I3(Q[3]),
        .O(\processQ_reg[2]_4 [1]));
  LUT3 #(
    .INIT(8'hB2)) 
    i__carry_i_4__2
       (.I0(Q[1]),
        .I1(is_trigger_time2_carry__0[0]),
        .I2(Q[0]),
        .O(\processQ_reg[2]_4 [0]));
  LUT3 #(
    .INIT(8'hE8)) 
    i__carry_i_4__3
       (.I0(Q[0]),
        .I1(is_trigger_time2_carry__0[0]),
        .I2(Q[1]),
        .O(\processQ_reg[0]_2 ));
  LUT4 #(
    .INIT(16'h1482)) 
    i__carry_i_7__1
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(is_trigger_time2_carry__0[2]),
        .I3(is_trigger_time2_carry__0[1]),
        .O(\processQ_reg[2]_1 [1]));
  LUT4 #(
    .INIT(16'h4128)) 
    i__carry_i_7__2
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(is_trigger_time2_carry__0[2]),
        .I3(is_trigger_time2_carry__0[1]),
        .O(\processQ_reg[2]_2 [1]));
  LUT3 #(
    .INIT(8'h06)) 
    i__carry_i_8__0
       (.I0(is_trigger_time2_carry__0[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\process_q_reg[1]_2 ));
  LUT3 #(
    .INIT(8'h41)) 
    i__carry_i_8__2
       (.I0(Q[0]),
        .I1(is_trigger_time2_carry__0[0]),
        .I2(Q[1]),
        .O(\processQ_reg[2]_1 [0]));
  LUT3 #(
    .INIT(8'h41)) 
    i__carry_i_8__4
       (.I0(Q[0]),
        .I1(is_trigger_time2_carry__0[0]),
        .I2(Q[1]),
        .O(\processQ_reg[2]_2 [0]));
  LUT4 #(
    .INIT(16'h44D4)) 
    is_trigger_time2_carry__0_i_1
       (.I0(Q[9]),
        .I1(is_trigger_time2_carry__0[8]),
        .I2(is_trigger_time2_carry__0[7]),
        .I3(Q[8]),
        .O(\processQ_reg[9]_3 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    is_trigger_time2_carry_i_1
       (.I0(Q[7]),
        .I1(is_trigger_time2_carry__0[6]),
        .I2(is_trigger_time2_carry__0[5]),
        .I3(Q[6]),
        .O(\processQ_reg[7]_0 [3]));
  LUT4 #(
    .INIT(16'h44D4)) 
    is_trigger_time2_carry_i_2
       (.I0(Q[5]),
        .I1(is_trigger_time2_carry__0[4]),
        .I2(is_trigger_time2_carry__0[3]),
        .I3(Q[4]),
        .O(\processQ_reg[7]_0 [2]));
  LUT4 #(
    .INIT(16'h44D4)) 
    is_trigger_time2_carry_i_3
       (.I0(Q[3]),
        .I1(is_trigger_time2_carry__0[2]),
        .I2(is_trigger_time2_carry__0[1]),
        .I3(Q[2]),
        .O(\processQ_reg[7]_0 [1]));
  LUT3 #(
    .INIT(8'h4D)) 
    is_trigger_time2_carry_i_4
       (.I0(Q[0]),
        .I1(is_trigger_time2_carry__0[0]),
        .I2(Q[1]),
        .O(\processQ_reg[7]_0 [0]));
  LUT3 #(
    .INIT(8'h82)) 
    is_trigger_time2_carry_i_8
       (.I0(Q[0]),
        .I1(is_trigger_time2_carry__0[0]),
        .I2(Q[1]),
        .O(\processQ_reg[0]_1 ));
  LUT3 #(
    .INIT(8'h17)) 
    is_trigger_time4_carry_i_4
       (.I0(Q[1]),
        .I1(is_trigger_time2_carry__0[0]),
        .I2(Q[0]),
        .O(\processQ_reg[1]_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    is_trigger_time4_carry_i_8
       (.I0(is_trigger_time2_carry__0[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\process_q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h696969696969695A)) 
    is_vertical_gridline1__20_carry__0_i_1
       (.I0(is_vertical_gridline1__20_carry__0_i_3_n_0),
        .I1(O),
        .I2(is_vertical_gridline1__20_carry__0_0),
        .I3(is_vertical_gridline1__20_carry__0[1]),
        .I4(is_vertical_gridline1__20_carry__0[0]),
        .I5(is_vertical_gridline1__20_carry__0[2]),
        .O(\processQ_reg[6]_0 [1]));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    is_vertical_gridline1__20_carry__0_i_2
       (.I0(is_vertical_gridline1__20_carry__0_i_4_n_0),
        .I1(is_vertical_gridline1__20_carry__0[0]),
        .I2(O),
        .I3(is_vertical_gridline1__20_carry__0[1]),
        .I4(is_vertical_gridline1__20_carry__0[2]),
        .O(\processQ_reg[6]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h5555666A)) 
    is_vertical_gridline1__20_carry__0_i_3
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[5]),
        .O(is_vertical_gridline1__20_carry__0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h56AA)) 
    is_vertical_gridline1__20_carry__0_i_4
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(is_vertical_gridline1__20_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h1E)) 
    is_vertical_gridline1__20_carry_i_1
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(\processQ_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    is_vertical_gridline1__20_carry_i_2
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\processQ_reg[2]_6 ));
  LUT1 #(
    .INIT(2'h1)) 
    is_vertical_gridline1__20_carry_i_3
       (.I0(Q[2]),
        .O(minusOp[0]));
  LUT6 #(
    .INIT(64'hA9A9A956565656A9)) 
    is_vertical_gridline1__20_carry_i_4
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(O),
        .I4(is_vertical_gridline1__20_carry__0[0]),
        .I5(is_vertical_gridline1__20_carry__0[1]),
        .O(\processQ_reg[4]_0 [3]));
  LUT4 #(
    .INIT(16'h6996)) 
    is_vertical_gridline1__20_carry_i_5
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(is_vertical_gridline1__20_carry__0[0]),
        .I3(O),
        .O(\processQ_reg[4]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    is_vertical_gridline1__20_carry_i_6
       (.I0(Q[2]),
        .I1(O),
        .O(\processQ_reg[4]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    is_vertical_gridline1__20_carry_i_7
       (.I0(Q[1]),
        .O(\processQ_reg[4]_0 [0]));
  LUT4 #(
    .INIT(16'hA857)) 
    is_vertical_gridline1_carry__0_i_1
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[5]),
        .O(minusOp[2]));
  LUT3 #(
    .INIT(8'hA9)) 
    is_vertical_gridline1_carry__0_i_2
       (.I0(Q[8]),
        .I1(is_vertical_gridline1_carry__0_i_8_n_0),
        .I2(Q[7]),
        .O(\processQ_reg[8]_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    is_vertical_gridline1_carry__0_i_3
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(minusOp[1]));
  LUT5 #(
    .INIT(32'hFEAA0155)) 
    is_vertical_gridline1_carry__0_i_4
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(minusOp[3]));
  LUT6 #(
    .INIT(64'h00FFFF00FF0001FE)) 
    is_vertical_gridline1_carry__0_i_5
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[9]),
        .I4(is_vertical_gridline1_carry__0_i_9_n_0),
        .I5(Q[5]),
        .O(\processQ_reg[8]_0 [2]));
  LUT6 #(
    .INIT(64'hE11EE11EE11E1EE1)) 
    is_vertical_gridline1_carry__0_i_6
       (.I0(Q[7]),
        .I1(is_vertical_gridline1_carry__0_i_8_n_0),
        .I2(Q[8]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\processQ_reg[8]_0 [1]));
  LUT6 #(
    .INIT(64'h01FEFE01FE0103FC)) 
    is_vertical_gridline1_carry__0_i_7
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\processQ_reg[8]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    is_vertical_gridline1_carry__0_i_8
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(Q[6]),
        .O(is_vertical_gridline1_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    is_vertical_gridline1_carry__0_i_9
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(is_vertical_gridline1_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'hAAA9)) 
    is_vertical_gridline1_carry__1_i_1
       (.I0(Q[9]),
        .I1(is_vertical_gridline1_carry__0_i_8_n_0),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(\processQ_reg[9]_0 [2]));
  LUT3 #(
    .INIT(8'hA9)) 
    is_vertical_gridline1_carry__1_i_2
       (.I0(Q[8]),
        .I1(is_vertical_gridline1_carry__0_i_8_n_0),
        .I2(Q[7]),
        .O(\processQ_reg[9]_0 [1]));
  LUT6 #(
    .INIT(64'hAAA9AAA9AAA9A9A9)) 
    is_vertical_gridline1_carry__1_i_3
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\processQ_reg[9]_0 [0]));
  LUT5 #(
    .INIT(32'hFEAA0155)) 
    is_vertical_gridline1_carry_i_1
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'hA857)) 
    is_vertical_gridline1_carry_i_2
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[5]),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'hFA0515EA)) 
    is_vertical_gridline1_carry_i_3
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[2]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h57A8A857)) 
    is_vertical_gridline1_carry_i_4
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[1]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hA956)) 
    is_vertical_gridline1_carry_i_5
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    is_vertical_gridline1_carry_i_6
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \processQ[0]_i_1__4 
       (.I0(Q[0]),
        .O(\processQ[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \processQ[1]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(data0[1]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \processQ[2]_i_1__5 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(data0[2]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \processQ[3]_i_1__4 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(data0[3]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \processQ[4]_i_1__4 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(data0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \processQ[5]_i_1__4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(data0[5]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \processQ[6]_i_1__5 
       (.I0(Q[6]),
        .I1(\processQ[9]_i_3__0_n_0 ),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(\processQ[6]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \processQ[7]_i_1__4 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(\processQ[9]_i_3__0_n_0 ),
        .I4(Q[6]),
        .O(data0[7]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \processQ[8]_i_1__4 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(\processQ[9]_i_3__0_n_0 ),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(data0[8]));
  LUT5 #(
    .INIT(32'h2000FFFF)) 
    \processQ[9]_i_1__4 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(\processQ[9]_i_3__0_n_0 ),
        .I3(\processQ[9]_i_4_n_0 ),
        .I4(s00_axi_aresetn),
        .O(\processQ[9]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \processQ[9]_i_2__0 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(h_blank_is_low_i_2_n_0),
        .I3(Q[7]),
        .O(data0[9]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \processQ[9]_i_3__0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\processQ[9]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \processQ[9]_i_4 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[9]),
        .O(\processQ[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\processQ[0]_i_1__4_n_0 ),
        .Q(Q[0]),
        .R(\processQ[9]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[1]),
        .Q(Q[1]),
        .R(\processQ[9]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[2]),
        .Q(Q[2]),
        .R(\processQ[9]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[3]),
        .Q(Q[3]),
        .R(\processQ[9]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[4]),
        .Q(Q[4]),
        .R(\processQ[9]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[5]),
        .Q(Q[5]),
        .R(\processQ[9]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\processQ[6]_i_1__5_n_0 ),
        .Q(Q[6]),
        .R(\processQ[9]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[7]),
        .Q(Q[7]),
        .R(\processQ[9]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[8]),
        .Q(Q[8]),
        .R(\processQ[9]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[9]),
        .Q(Q[9]),
        .R(\processQ[9]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    roll_i_1__0
       (.I0(\processQ[9]_i_4_n_0 ),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(roll_i_2__0_n_0),
        .I5(s00_axi_aresetn),
        .O(roll_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h08)) 
    roll_i_2__0
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(roll_i_2__0_n_0));
  FDRE roll_reg
       (.C(CLK),
        .CE(1'b1),
        .D(roll_i_1__0_n_0),
        .Q(E),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized1
   (\processQ_reg[7]_0 ,
    Q,
    \processQ_reg[5]_0 ,
    \processQ_reg[4]_0 ,
    \processQ_reg[5]_1 ,
    \processQ_reg[2]_0 ,
    \processQ_reg[2]_1 ,
    \process_q_reg[1] ,
    \process_q_reg[1]_0 ,
    \processQ_reg[2]_2 ,
    \processQ_reg[8]_0 ,
    \processQ_reg[1]_0 ,
    \processQ_reg[5]_2 ,
    \processQ_reg[2]_3 ,
    \processQ_reg[2]_4 ,
    \processQ_reg[9]_0 ,
    \processQ_reg[0]_0 ,
    \processQ_reg[7]_1 ,
    \processQ_reg[8]_1 ,
    is_horizontal_gridline1_carry__0,
    \processQ_reg[2]_5 ,
    \processQ_reg[7]_2 ,
    \processQ_reg[0]_1 ,
    \processQ_reg[1]_1 ,
    \processQ_reg[0]_2 ,
    \process_q_reg[1]_1 ,
    \processQ_reg[1]_2 ,
    \processQ_reg[1]_3 ,
    \processQ_reg[9]_1 ,
    \processQ_reg[2]_6 ,
    \processQ_reg[9]_2 ,
    \processQ_reg[2]_7 ,
    \processQ_reg[2]_8 ,
    \process_q_reg[1]_2 ,
    \processQ_reg[9]_3 ,
    \processQ_reg[9]_4 ,
    is_horizontal_gridline1_carry__0_0,
    \processQ_reg[9]_5 ,
    \processQ_reg[9]_6 ,
    \processQ_reg[1]_4 ,
    is_horizontal_gridline1__29_carry__0,
    is_horizontal_gridline1__23_carry,
    q,
    is_horizontal_gridline1__23_carry_0,
    \dc_bias[3]_i_8 ,
    \dc_bias[3]_i_8_0 ,
    \dc_bias[3]_i_8_1 ,
    \dc_bias[3]_i_8_2 ,
    \dc_bias[3]_i_8_3 ,
    is_horizontal_gridline1__23_carry_1,
    E,
    v_blank_is_low_reg,
    v_sync_is_low,
    \processQ_reg[0]_3 ,
    CLK);
  output [3:0]\processQ_reg[7]_0 ;
  output [9:0]Q;
  output [2:0]\processQ_reg[5]_0 ;
  output [2:0]\processQ_reg[4]_0 ;
  output [1:0]\processQ_reg[5]_1 ;
  output [3:0]\processQ_reg[2]_0 ;
  output [1:0]\processQ_reg[2]_1 ;
  output [0:0]\process_q_reg[1] ;
  output [0:0]\process_q_reg[1]_0 ;
  output [1:0]\processQ_reg[2]_2 ;
  output \processQ_reg[8]_0 ;
  output \processQ_reg[1]_0 ;
  output \processQ_reg[5]_2 ;
  output [1:0]\processQ_reg[2]_3 ;
  output \processQ_reg[2]_4 ;
  output \processQ_reg[9]_0 ;
  output \processQ_reg[0]_0 ;
  output \processQ_reg[7]_1 ;
  output [3:0]\processQ_reg[8]_1 ;
  output [0:0]is_horizontal_gridline1_carry__0;
  output [1:0]\processQ_reg[2]_5 ;
  output [3:0]\processQ_reg[7]_2 ;
  output [0:0]\processQ_reg[0]_1 ;
  output [0:0]\processQ_reg[1]_1 ;
  output [0:0]\processQ_reg[0]_2 ;
  output [0:0]\process_q_reg[1]_1 ;
  output [0:0]\processQ_reg[1]_2 ;
  output [0:0]\processQ_reg[1]_3 ;
  output [0:0]\processQ_reg[9]_1 ;
  output [1:0]\processQ_reg[2]_6 ;
  output [0:0]\processQ_reg[9]_2 ;
  output [2:0]\processQ_reg[2]_7 ;
  output [1:0]\processQ_reg[2]_8 ;
  output [0:0]\process_q_reg[1]_2 ;
  output [0:0]\processQ_reg[9]_3 ;
  output [2:0]\processQ_reg[9]_4 ;
  output [2:0]is_horizontal_gridline1_carry__0_0;
  output [0:0]\processQ_reg[9]_5 ;
  output \processQ_reg[9]_6 ;
  output \processQ_reg[1]_4 ;
  input [2:0]is_horizontal_gridline1__29_carry__0;
  input [2:0]is_horizontal_gridline1__23_carry;
  input [8:0]q;
  input [0:0]is_horizontal_gridline1__23_carry_0;
  input [0:0]\dc_bias[3]_i_8 ;
  input [0:0]\dc_bias[3]_i_8_0 ;
  input [0:0]\dc_bias[3]_i_8_1 ;
  input [0:0]\dc_bias[3]_i_8_2 ;
  input \dc_bias[3]_i_8_3 ;
  input [0:0]is_horizontal_gridline1__23_carry_1;
  input [0:0]E;
  input v_blank_is_low_reg;
  input v_sync_is_low;
  input [0:0]\processQ_reg[0]_3 ;
  input CLK;

  wire CLK;
  wire [0:0]E;
  wire [9:0]Q;
  wire \dc_bias[2]_i_33_n_0 ;
  wire \dc_bias[2]_i_34_n_0 ;
  wire \dc_bias[2]_i_35_n_0 ;
  wire \dc_bias[2]_i_44_n_0 ;
  wire \dc_bias[2]_i_45_n_0 ;
  wire \dc_bias[2]_i_46_n_0 ;
  wire \dc_bias[2]_i_47_n_0 ;
  wire \dc_bias[2]_i_48_n_0 ;
  wire \dc_bias[2]_i_49_n_0 ;
  wire \dc_bias[3]_i_19_n_0 ;
  wire \dc_bias[3]_i_20_n_0 ;
  wire \dc_bias[3]_i_21_n_0 ;
  wire \dc_bias[3]_i_26_n_0 ;
  wire [0:0]\dc_bias[3]_i_8 ;
  wire [0:0]\dc_bias[3]_i_8_0 ;
  wire [0:0]\dc_bias[3]_i_8_1 ;
  wire [0:0]\dc_bias[3]_i_8_2 ;
  wire \dc_bias[3]_i_8_3 ;
  wire [2:0]is_horizontal_gridline1__23_carry;
  wire [0:0]is_horizontal_gridline1__23_carry_0;
  wire [0:0]is_horizontal_gridline1__23_carry_1;
  wire [2:0]is_horizontal_gridline1__29_carry__0;
  wire [0:0]is_horizontal_gridline1_carry__0;
  wire [2:0]is_horizontal_gridline1_carry__0_0;
  wire is_horizontal_gridline1_carry__0_i_9_n_0;
  wire [9:1]processQ;
  wire \processQ[0]_i_1__5_n_0 ;
  wire \processQ[3]_i_2_n_0 ;
  wire \processQ[4]_i_1__5_n_0 ;
  wire \processQ[9]_i_2__1_n_0 ;
  wire \processQ[9]_i_3__1_n_0 ;
  wire \processQ_reg[0]_0 ;
  wire [0:0]\processQ_reg[0]_1 ;
  wire [0:0]\processQ_reg[0]_2 ;
  wire [0:0]\processQ_reg[0]_3 ;
  wire \processQ_reg[1]_0 ;
  wire [0:0]\processQ_reg[1]_1 ;
  wire [0:0]\processQ_reg[1]_2 ;
  wire [0:0]\processQ_reg[1]_3 ;
  wire \processQ_reg[1]_4 ;
  wire [3:0]\processQ_reg[2]_0 ;
  wire [1:0]\processQ_reg[2]_1 ;
  wire [1:0]\processQ_reg[2]_2 ;
  wire [1:0]\processQ_reg[2]_3 ;
  wire \processQ_reg[2]_4 ;
  wire [1:0]\processQ_reg[2]_5 ;
  wire [1:0]\processQ_reg[2]_6 ;
  wire [2:0]\processQ_reg[2]_7 ;
  wire [1:0]\processQ_reg[2]_8 ;
  wire [2:0]\processQ_reg[4]_0 ;
  wire [2:0]\processQ_reg[5]_0 ;
  wire [1:0]\processQ_reg[5]_1 ;
  wire \processQ_reg[5]_2 ;
  wire [3:0]\processQ_reg[7]_0 ;
  wire \processQ_reg[7]_1 ;
  wire [3:0]\processQ_reg[7]_2 ;
  wire \processQ_reg[8]_0 ;
  wire [3:0]\processQ_reg[8]_1 ;
  wire \processQ_reg[9]_0 ;
  wire [0:0]\processQ_reg[9]_1 ;
  wire [0:0]\processQ_reg[9]_2 ;
  wire [0:0]\processQ_reg[9]_3 ;
  wire [2:0]\processQ_reg[9]_4 ;
  wire [0:0]\processQ_reg[9]_5 ;
  wire \processQ_reg[9]_6 ;
  wire [0:0]\process_q_reg[1] ;
  wire [0:0]\process_q_reg[1]_0 ;
  wire [0:0]\process_q_reg[1]_1 ;
  wire [0:0]\process_q_reg[1]_2 ;
  wire [8:0]q;
  wire v_blank_is_low_i_3_n_0;
  wire v_blank_is_low_reg;
  wire v_sync_is_low;
  wire v_sync_is_low_i_2_n_0;

  LUT6 #(
    .INIT(64'h1440000204412880)) 
    \dc_bias[2]_i_20 
       (.I0(\dc_bias[2]_i_33_n_0 ),
        .I1(Q[1]),
        .I2(\dc_bias[2]_i_34_n_0 ),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\dc_bias[2]_i_35_n_0 ),
        .O(\processQ_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFDFDFF)) 
    \dc_bias[2]_i_29 
       (.I0(\dc_bias[2]_i_44_n_0 ),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\dc_bias[2]_i_45_n_0 ),
        .O(\processQ_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h14427E6A56427EEB)) 
    \dc_bias[2]_i_33 
       (.I0(\dc_bias[2]_i_46_n_0 ),
        .I1(\dc_bias[2]_i_47_n_0 ),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(\dc_bias[2]_i_34_n_0 ),
        .I5(Q[2]),
        .O(\dc_bias[2]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h255124417DDB755B)) 
    \dc_bias[2]_i_34 
       (.I0(\dc_bias[2]_i_48_n_0 ),
        .I1(Q[4]),
        .I2(\dc_bias[2]_i_49_n_0 ),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(\dc_bias[2]_i_47_n_0 ),
        .O(\dc_bias[2]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dc_bias[2]_i_35 
       (.I0(\dc_bias[2]_i_47_n_0 ),
        .I1(Q[4]),
        .I2(Q[3]),
        .O(\dc_bias[2]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dc_bias[2]_i_44 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\dc_bias[2]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \dc_bias[2]_i_45 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\dc_bias[2]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h79699E79)) 
    \dc_bias[2]_i_46 
       (.I0(Q[5]),
        .I1(Q[9]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(Q[6]),
        .O(\dc_bias[2]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hC68C3163CE9C73E7)) 
    \dc_bias[2]_i_47 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[8]),
        .I5(Q[4]),
        .O(\dc_bias[2]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h2D42D2BD)) 
    \dc_bias[2]_i_48 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(Q[5]),
        .O(\dc_bias[2]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h4FB44B24)) 
    \dc_bias[2]_i_49 
       (.I0(Q[6]),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[5]),
        .O(\dc_bias[2]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h00008F0000000000)) 
    \dc_bias[3]_i_13__0 
       (.I0(\dc_bias[3]_i_8 ),
        .I1(\dc_bias[3]_i_8_0 ),
        .I2(\dc_bias[3]_i_19_n_0 ),
        .I3(Q[2]),
        .I4(Q[9]),
        .I5(\dc_bias[3]_i_20_n_0 ),
        .O(\processQ_reg[2]_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAABABABA)) 
    \dc_bias[3]_i_14 
       (.I0(\dc_bias[3]_i_21_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\dc_bias[3]_i_8_1 ),
        .I4(\dc_bias[3]_i_8_2 ),
        .I5(\dc_bias[3]_i_8_3 ),
        .O(\processQ_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \dc_bias[3]_i_14__0 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(is_horizontal_gridline1_carry__0_i_9_n_0),
        .I4(Q[8]),
        .O(\processQ_reg[7]_1 ));
  LUT6 #(
    .INIT(64'hFEAAAAAAAAAAAAAA)) 
    \dc_bias[3]_i_16 
       (.I0(Q[9]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[8]),
        .I4(Q[7]),
        .I5(\dc_bias[3]_i_26_n_0 ),
        .O(\processQ_reg[9]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dc_bias[3]_i_18 
       (.I0(Q[9]),
        .O(\processQ_reg[9]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dc_bias[3]_i_19 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\dc_bias[3]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dc_bias[3]_i_20 
       (.I0(Q[4]),
        .I1(Q[3]),
        .O(\dc_bias[3]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dc_bias[3]_i_21 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[8]),
        .I3(Q[7]),
        .O(\dc_bias[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    \dc_bias[3]_i_26 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(\dc_bias[3]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hBC08)) 
    \dc_bias[3]_i_62 
       (.I0(Q[2]),
        .I1(q[1]),
        .I2(q[2]),
        .I3(Q[3]),
        .O(\processQ_reg[2]_6 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \dc_bias[3]_i_63 
       (.I0(Q[1]),
        .I1(q[0]),
        .O(\processQ_reg[2]_6 [0]));
  LUT4 #(
    .INIT(16'h4128)) 
    \dc_bias[3]_i_66 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(q[2]),
        .I3(q[1]),
        .O(\processQ_reg[2]_8 [1]));
  LUT3 #(
    .INIT(8'h82)) 
    \dc_bias[3]_i_67 
       (.I0(Q[0]),
        .I1(q[0]),
        .I2(Q[1]),
        .O(\processQ_reg[2]_8 [0]));
  LUT2 #(
    .INIT(4'h1)) 
    \dc_bias[3]_i_70 
       (.I0(Q[1]),
        .I1(q[0]),
        .O(\processQ_reg[1]_2 ));
  LUT3 #(
    .INIT(8'h06)) 
    \dc_bias[3]_i_74 
       (.I0(q[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\process_q_reg[1]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dc_bias[3]_i_77 
       (.I0(Q[1]),
        .I1(q[0]),
        .O(\processQ_reg[1]_3 ));
  LUT3 #(
    .INIT(8'h60)) 
    \dc_bias[3]_i_81 
       (.I0(q[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\process_q_reg[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \dc_bias[3]_i_8__0 
       (.I0(Q[9]),
        .O(\processQ_reg[9]_3 ));
  LUT4 #(
    .INIT(16'hBC08)) 
    i__carry_i_3
       (.I0(Q[2]),
        .I1(q[1]),
        .I2(q[2]),
        .I3(Q[3]),
        .O(\processQ_reg[2]_5 [1]));
  LUT3 #(
    .INIT(8'hB2)) 
    i__carry_i_4
       (.I0(Q[1]),
        .I1(q[0]),
        .I2(Q[0]),
        .O(\processQ_reg[2]_5 [0]));
  LUT3 #(
    .INIT(8'hE8)) 
    i__carry_i_4__0
       (.I0(Q[0]),
        .I1(q[0]),
        .I2(Q[1]),
        .O(\processQ_reg[0]_2 ));
  LUT4 #(
    .INIT(16'h1482)) 
    i__carry_i_7
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(q[2]),
        .I3(q[1]),
        .O(\processQ_reg[2]_1 [1]));
  LUT4 #(
    .INIT(16'h4128)) 
    i__carry_i_7__0
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(q[2]),
        .I3(q[1]),
        .O(\processQ_reg[2]_2 [1]));
  LUT3 #(
    .INIT(8'h06)) 
    i__carry_i_8
       (.I0(q[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\process_q_reg[1]_2 ));
  LUT3 #(
    .INIT(8'h41)) 
    i__carry_i_8__1
       (.I0(Q[0]),
        .I1(q[0]),
        .I2(Q[1]),
        .O(\processQ_reg[2]_1 [0]));
  LUT3 #(
    .INIT(8'h41)) 
    i__carry_i_8__3
       (.I0(Q[0]),
        .I1(q[0]),
        .I2(Q[1]),
        .O(\processQ_reg[2]_2 [0]));
  LUT2 #(
    .INIT(4'hB)) 
    is_horizontal_gridline1__23_carry_i_1
       (.I0(is_horizontal_gridline1__23_carry[2]),
        .I1(is_horizontal_gridline1__23_carry_0),
        .O(is_horizontal_gridline1_carry__0));
  LUT4 #(
    .INIT(16'hD22D)) 
    is_horizontal_gridline1__23_carry_i_2
       (.I0(is_horizontal_gridline1__23_carry_1),
        .I1(is_horizontal_gridline1__23_carry[0]),
        .I2(is_horizontal_gridline1__23_carry[1]),
        .I3(is_horizontal_gridline1__23_carry_0),
        .O(is_horizontal_gridline1_carry__0_0[2]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    is_horizontal_gridline1__23_carry_i_3
       (.I0(is_horizontal_gridline1__23_carry_0),
        .I1(is_horizontal_gridline1__23_carry[2]),
        .I2(is_horizontal_gridline1__23_carry_1),
        .I3(is_horizontal_gridline1__23_carry[0]),
        .O(is_horizontal_gridline1_carry__0_0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    is_horizontal_gridline1__23_carry_i_4
       (.I0(is_horizontal_gridline1__23_carry[2]),
        .I1(is_horizontal_gridline1__23_carry_0),
        .O(is_horizontal_gridline1_carry__0_0[0]));
  LUT4 #(
    .INIT(16'hA955)) 
    is_horizontal_gridline1__29_carry__0_i_1
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(\processQ_reg[5]_1 [1]));
  LUT3 #(
    .INIT(8'h1E)) 
    is_horizontal_gridline1__29_carry__0_i_2
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(\processQ_reg[5]_1 [0]));
  LUT6 #(
    .INIT(64'hAAA9999955566666)) 
    is_horizontal_gridline1__29_carry__0_i_3
       (.I0(is_horizontal_gridline1__29_carry__0[2]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(\processQ_reg[5]_0 [2]));
  LUT5 #(
    .INIT(32'hA85757A8)) 
    is_horizontal_gridline1__29_carry__0_i_4
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(is_horizontal_gridline1__29_carry__0[1]),
        .O(\processQ_reg[5]_0 [1]));
  LUT4 #(
    .INIT(16'h56A9)) 
    is_horizontal_gridline1__29_carry__0_i_5
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(is_horizontal_gridline1__29_carry__0[0]),
        .O(\processQ_reg[5]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    is_horizontal_gridline1__29_carry_i_1
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\processQ_reg[2]_3 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    is_horizontal_gridline1__29_carry_i_2
       (.I0(Q[2]),
        .O(\processQ_reg[2]_3 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    is_horizontal_gridline1__29_carry_i_3
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(is_horizontal_gridline1__23_carry[1]),
        .O(\processQ_reg[2]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    is_horizontal_gridline1__29_carry_i_4
       (.I0(Q[2]),
        .I1(is_horizontal_gridline1__23_carry[0]),
        .O(\processQ_reg[2]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    is_horizontal_gridline1__29_carry_i_5
       (.I0(Q[1]),
        .I1(is_horizontal_gridline1__23_carry_0),
        .O(\processQ_reg[2]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    is_horizontal_gridline1__29_carry_i_6
       (.I0(Q[0]),
        .O(\processQ_reg[2]_0 [0]));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    is_horizontal_gridline1_carry__0_i_1
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(is_horizontal_gridline1_carry__0_i_9_n_0),
        .O(\processQ_reg[8]_1 [3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA9995)) 
    is_horizontal_gridline1_carry__0_i_2
       (.I0(Q[7]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\processQ_reg[8]_1 [2]));
  LUT5 #(
    .INIT(32'hFEAA0155)) 
    is_horizontal_gridline1_carry__0_i_3
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(\processQ_reg[8]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    is_horizontal_gridline1_carry__0_i_4
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\processQ_reg[8]_1 [0]));
  LUT5 #(
    .INIT(32'h333CCCC6)) 
    is_horizontal_gridline1_carry__0_i_5
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(Q[5]),
        .I3(is_horizontal_gridline1_carry__0_i_9_n_0),
        .I4(Q[6]),
        .O(\processQ_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'h3C3C3CCCC6C6C666)) 
    is_horizontal_gridline1_carry__0_i_6
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\processQ_reg[7]_0 [2]));
  LUT5 #(
    .INIT(32'hC6C6C669)) 
    is_horizontal_gridline1_carry__0_i_7
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(\processQ_reg[7]_0 [1]));
  LUT4 #(
    .INIT(16'h699C)) 
    is_horizontal_gridline1_carry__0_i_8
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\processQ_reg[7]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    is_horizontal_gridline1_carry__0_i_9
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(is_horizontal_gridline1_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    is_horizontal_gridline1_carry__1_i_1
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(is_horizontal_gridline1_carry__0_i_9_n_0),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\processQ_reg[9]_5 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    is_horizontal_gridline1_carry__1_i_2
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(is_horizontal_gridline1_carry__0_i_9_n_0),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\processQ_reg[9]_4 [2]));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    is_horizontal_gridline1_carry__1_i_3
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(is_horizontal_gridline1_carry__0_i_9_n_0),
        .O(\processQ_reg[9]_4 [1]));
  LUT6 #(
    .INIT(64'h3333333CCCCCCCC6)) 
    is_horizontal_gridline1_carry__1_i_4
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(is_horizontal_gridline1_carry__0_i_9_n_0),
        .I5(Q[7]),
        .O(\processQ_reg[9]_4 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    is_horizontal_gridline1_carry_i_1
       (.I0(Q[2]),
        .O(\processQ_reg[2]_7 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    is_horizontal_gridline1_carry_i_2
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\processQ_reg[2]_7 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    is_horizontal_gridline1_carry_i_3
       (.I0(Q[2]),
        .O(\processQ_reg[2]_7 [0]));
  LUT3 #(
    .INIT(8'h59)) 
    is_horizontal_gridline1_carry_i_4
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\processQ_reg[4]_0 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    is_horizontal_gridline1_carry_i_5
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .O(\processQ_reg[4]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    is_horizontal_gridline1_carry_i_6
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(\processQ_reg[4]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    is_trigger_volt2_carry__0_i_3
       (.I0(Q[9]),
        .I1(q[8]),
        .I2(q[7]),
        .I3(Q[8]),
        .O(\processQ_reg[9]_1 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    is_trigger_volt2_carry_i_1
       (.I0(Q[7]),
        .I1(q[6]),
        .I2(q[5]),
        .I3(Q[6]),
        .O(\processQ_reg[7]_2 [3]));
  LUT4 #(
    .INIT(16'h44D4)) 
    is_trigger_volt2_carry_i_2
       (.I0(Q[5]),
        .I1(q[4]),
        .I2(q[3]),
        .I3(Q[4]),
        .O(\processQ_reg[7]_2 [2]));
  LUT4 #(
    .INIT(16'h44D4)) 
    is_trigger_volt2_carry_i_3
       (.I0(Q[3]),
        .I1(q[2]),
        .I2(q[1]),
        .I3(Q[2]),
        .O(\processQ_reg[7]_2 [1]));
  LUT3 #(
    .INIT(8'h4D)) 
    is_trigger_volt2_carry_i_4
       (.I0(Q[0]),
        .I1(q[0]),
        .I2(Q[1]),
        .O(\processQ_reg[7]_2 [0]));
  LUT3 #(
    .INIT(8'h82)) 
    is_trigger_volt2_carry_i_8
       (.I0(Q[0]),
        .I1(q[0]),
        .I2(Q[1]),
        .O(\processQ_reg[0]_1 ));
  LUT3 #(
    .INIT(8'h17)) 
    is_trigger_volt4_carry_i_4
       (.I0(Q[1]),
        .I1(q[0]),
        .I2(Q[0]),
        .O(\processQ_reg[1]_1 ));
  LUT3 #(
    .INIT(8'h60)) 
    is_trigger_volt4_carry_i_8
       (.I0(q[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\process_q_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h55551555)) 
    \processQ[0]_i_1__5 
       (.I0(Q[0]),
        .I1(Q[9]),
        .I2(\processQ[3]_i_2_n_0 ),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\processQ[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \processQ[1]_i_1__5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(processQ[1]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h0FF7F000)) 
    \processQ[2]_i_1__4 
       (.I0(Q[9]),
        .I1(\processQ[3]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(processQ[2]));
  LUT6 #(
    .INIT(64'h0FF7FFFFF0000000)) 
    \processQ[3]_i_1__5 
       (.I0(Q[9]),
        .I1(\processQ[3]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(processQ[3]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \processQ[3]_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\processQ[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \processQ[4]_i_1__5 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\processQ[4]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \processQ[5]_i_1__5 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(processQ[5]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \processQ[6]_i_1__4 
       (.I0(Q[6]),
        .I1(\processQ[9]_i_2__1_n_0 ),
        .O(processQ[6]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \processQ[7]_i_1__5 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\processQ[9]_i_2__1_n_0 ),
        .O(processQ[7]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \processQ[8]_i_1__5 
       (.I0(Q[8]),
        .I1(\processQ[9]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(processQ[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFF40000000)) 
    \processQ[9]_i_1__3 
       (.I0(Q[9]),
        .I1(\processQ[9]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[8]),
        .I5(\processQ[9]_i_3__1_n_0 ),
        .O(processQ[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \processQ[9]_i_2__1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\processQ[9]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'hAAA2AAAA)) 
    \processQ[9]_i_3__1 
       (.I0(Q[9]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\processQ[3]_i_2_n_0 ),
        .O(\processQ[9]_i_3__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\processQ[0]_i_1__5_n_0 ),
        .Q(Q[0]),
        .R(\processQ_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(processQ[1]),
        .Q(Q[1]),
        .R(\processQ_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(processQ[2]),
        .Q(Q[2]),
        .R(\processQ_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(processQ[3]),
        .Q(Q[3]),
        .R(\processQ_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\processQ[4]_i_1__5_n_0 ),
        .Q(Q[4]),
        .R(\processQ_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(processQ[5]),
        .Q(Q[5]),
        .R(\processQ_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(processQ[6]),
        .Q(Q[6]),
        .R(\processQ_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(processQ[7]),
        .Q(Q[7]),
        .R(\processQ_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(processQ[8]),
        .Q(Q[8]),
        .R(\processQ_reg[0]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \processQ_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(processQ[9]),
        .Q(Q[9]),
        .R(\processQ_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h00FDFFFF00FD0000)) 
    v_blank_is_low_i_1
       (.I0(\processQ_reg[5]_2 ),
        .I1(Q[9]),
        .I2(v_blank_is_low_i_3_n_0),
        .I3(\processQ[9]_i_3__1_n_0 ),
        .I4(E),
        .I5(v_blank_is_low_reg),
        .O(\processQ_reg[9]_6 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    v_blank_is_low_i_2
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\processQ_reg[5]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    v_blank_is_low_i_3
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .O(v_blank_is_low_i_3_n_0));
  LUT6 #(
    .INIT(64'h0028FFFF00280000)) 
    v_sync_is_low_i_1
       (.I0(v_sync_is_low_i_2_n_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(v_blank_is_low_i_3_n_0),
        .I4(E),
        .I5(v_sync_is_low),
        .O(\processQ_reg[1]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    v_sync_is_low_i_2
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[9]),
        .O(v_sync_is_low_i_2_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_OScope_2Channel_IP_0_0,OScope_2Channel_IP,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "OScope_2Channel_IP,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ac_mclk,
    ac_adc_sdata,
    ac_dac_sdata,
    ac_bclk,
    ac_lrclk,
    scl,
    sda,
    tmds,
    tmdsb,
    btn,
    switch,
    flagQ,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output ac_mclk;
  input ac_adc_sdata;
  output ac_dac_sdata;
  output ac_bclk;
  output ac_lrclk;
  inout scl;
  inout sda;
  output [3:0]tmds;
  output [3:0]tmdsb;
  input [4:0]btn;
  input [3:0]switch;
  output flagQ;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_mode = "slave S00_AXI_CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_mode = "slave S00_AXI_RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_mode = "slave S00_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [6:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [6:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire ac_adc_sdata;
  wire ac_bclk;
  wire ac_dac_sdata;
  wire ac_lrclk;
  wire ac_mclk;
  wire [4:0]btn;
  wire flagQ;
  (* IBUF_LOW_PWR *) wire s00_axi_aclk;
  wire [6:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [6:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire scl;
  wire sda;
  wire [3:0]switch;
  (* SLEW = "SLOW" *) wire [3:0]tmds;
  (* SLEW = "SLOW" *) wire [3:0]tmdsb;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OScope_2Channel_IP U0
       (.BCLK_int_reg(ac_bclk),
        .LRCLK_reg(ac_lrclk),
        .ac_adc_sdata(ac_adc_sdata),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_mclk(ac_mclk),
        .axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .btn(btn[3:0]),
        .flagQ(flagQ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[6:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[6:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .scl(scl),
        .sda(sda),
        .switch(switch),
        .tmds(tmds),
        .tmdsb(tmdsb));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid
   (red_s,
    green_s,
    blue_s,
    clock_s,
    Q,
    \dc_bias_reg[3] ,
    \dc_bias_reg[3]_0 ,
    \dc_bias_reg[2] ,
    \dc_bias_reg[3]_1 ,
    \dc_bias_reg[2]_0 ,
    \dc_bias_reg[0] ,
    \dc_bias_reg[2]_1 ,
    clk_out2,
    clk_out3,
    \encoded_reg[8] ,
    \dc_bias_reg[1] ,
    \encoded_reg[9] ,
    \dc_bias_reg[2]_2 ,
    \dc_bias_reg[3]_2 ,
    \dc_bias_reg[3]_3 ,
    \dc_bias_reg[3]_4 ,
    \dc_bias_reg[3]_5 ,
    \encoded_reg[8]_0 ,
    \dc_bias_reg[3]_6 ,
    \dc_bias_reg[3]_7 ,
    \dc_bias_reg[3]_8 ,
    SR,
    CLK,
    D,
    \encoded_reg[2] ,
    \encoded_reg[9]_0 ,
    \encoded_reg[2]_0 ,
    v_blank_is_low,
    h_blank_is_low,
    \encoded_reg[4] ,
    \encoded_reg[9]_1 ,
    h_sync_is_low);
  output red_s;
  output green_s;
  output blue_s;
  output clock_s;
  output [2:0]Q;
  output [0:0]\dc_bias_reg[3] ;
  output [0:0]\dc_bias_reg[3]_0 ;
  output \dc_bias_reg[2] ;
  output \dc_bias_reg[3]_1 ;
  output \dc_bias_reg[2]_0 ;
  output \dc_bias_reg[0] ;
  output \dc_bias_reg[2]_1 ;
  input clk_out2;
  input clk_out3;
  input \encoded_reg[8] ;
  input \dc_bias_reg[1] ;
  input \encoded_reg[9] ;
  input \dc_bias_reg[2]_2 ;
  input \dc_bias_reg[3]_2 ;
  input \dc_bias_reg[3]_3 ;
  input \dc_bias_reg[3]_4 ;
  input \dc_bias_reg[3]_5 ;
  input \encoded_reg[8]_0 ;
  input \dc_bias_reg[3]_6 ;
  input \dc_bias_reg[3]_7 ;
  input \dc_bias_reg[3]_8 ;
  input [0:0]SR;
  input CLK;
  input [0:0]D;
  input [1:0]\encoded_reg[2] ;
  input \encoded_reg[9]_0 ;
  input [1:0]\encoded_reg[2]_0 ;
  input v_blank_is_low;
  input h_blank_is_low;
  input [3:0]\encoded_reg[4] ;
  input \encoded_reg[9]_1 ;
  input h_sync_is_low;

  wire CLK;
  wire [0:0]D;
  wire D0;
  wire D1;
  wire [2:0]Q;
  wire [0:0]SR;
  wire TDMS_encoder_blue_n_2;
  wire TDMS_encoder_blue_n_3;
  wire TDMS_encoder_blue_n_4;
  wire TDMS_encoder_blue_n_5;
  wire TDMS_encoder_blue_n_6;
  wire TDMS_encoder_blue_n_7;
  wire TDMS_encoder_green_n_10;
  wire TDMS_encoder_green_n_7;
  wire TDMS_encoder_green_n_8;
  wire TDMS_encoder_green_n_9;
  wire TDMS_encoder_red_n_1;
  wire TDMS_encoder_red_n_2;
  wire TDMS_encoder_red_n_3;
  wire TDMS_encoder_red_n_4;
  wire blue_s;
  wire clk_out2;
  wire clk_out3;
  wire clock_s;
  wire [7:0]data1;
  wire \dc_bias_reg[0] ;
  wire \dc_bias_reg[1] ;
  wire \dc_bias_reg[2] ;
  wire \dc_bias_reg[2]_0 ;
  wire \dc_bias_reg[2]_1 ;
  wire \dc_bias_reg[2]_2 ;
  wire [0:0]\dc_bias_reg[3] ;
  wire [0:0]\dc_bias_reg[3]_0 ;
  wire \dc_bias_reg[3]_1 ;
  wire \dc_bias_reg[3]_2 ;
  wire \dc_bias_reg[3]_3 ;
  wire \dc_bias_reg[3]_4 ;
  wire \dc_bias_reg[3]_5 ;
  wire \dc_bias_reg[3]_6 ;
  wire \dc_bias_reg[3]_7 ;
  wire \dc_bias_reg[3]_8 ;
  wire [1:0]\encoded_reg[2] ;
  wire [1:0]\encoded_reg[2]_0 ;
  wire [3:0]\encoded_reg[4] ;
  wire \encoded_reg[8] ;
  wire \encoded_reg[8]_0 ;
  wire \encoded_reg[9] ;
  wire \encoded_reg[9]_0 ;
  wire \encoded_reg[9]_1 ;
  wire green_s;
  wire h_blank_is_low;
  wire h_sync_is_low;
  wire [9:0]latched_blue;
  wire [9:0]latched_green;
  wire [9:0]latched_red;
  wire red_s;
  wire [9:2]shift_blue;
  wire [7:0]shift_blue_0;
  wire \shift_blue_reg_n_0_[0] ;
  wire \shift_blue_reg_n_0_[1] ;
  wire [1:0]shift_clock;
  wire \shift_clock_reg_n_0_[2] ;
  wire \shift_clock_reg_n_0_[3] ;
  wire \shift_clock_reg_n_0_[4] ;
  wire \shift_clock_reg_n_0_[5] ;
  wire \shift_clock_reg_n_0_[6] ;
  wire \shift_clock_reg_n_0_[7] ;
  wire \shift_clock_reg_n_0_[8] ;
  wire \shift_clock_reg_n_0_[9] ;
  wire [9:2]shift_green;
  wire [7:0]shift_green_1;
  wire \shift_green_reg_n_0_[0] ;
  wire \shift_green_reg_n_0_[1] ;
  wire [6:2]shift_red;
  wire \shift_red[0]_i_1_n_0 ;
  wire \shift_red[1]_i_1_n_0 ;
  wire \shift_red[3]_i_1_n_0 ;
  wire \shift_red[5]_i_1_n_0 ;
  wire \shift_red[7]_i_1_n_0 ;
  wire \shift_red[7]_i_2_n_0 ;
  wire \shift_red[9]_i_1_n_0 ;
  wire \shift_red[9]_i_2_n_0 ;
  wire v_blank_is_low;
  wire NLW_ODDR2_blue_R_UNCONNECTED;
  wire NLW_ODDR2_blue_S_UNCONNECTED;
  wire NLW_ODDR2_clock_R_UNCONNECTED;
  wire NLW_ODDR2_clock_S_UNCONNECTED;
  wire NLW_ODDR2_green_R_UNCONNECTED;
  wire NLW_ODDR2_green_S_UNCONNECTED;
  wire NLW_ODDR2_red_R_UNCONNECTED;
  wire NLW_ODDR2_red_S_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "ODDR2" *) 
  (* XILINX_TRANSFORM_PINMAP = "D0:D1 D1:D2 C0:C" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .SRTYPE("ASYNC")) 
    ODDR2_blue
       (.C(clk_out2),
        .CE(1'b1),
        .D1(\shift_blue_reg_n_0_[0] ),
        .D2(\shift_blue_reg_n_0_[1] ),
        .Q(blue_s),
        .R(NLW_ODDR2_blue_R_UNCONNECTED),
        .S(NLW_ODDR2_blue_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "ODDR2" *) 
  (* XILINX_TRANSFORM_PINMAP = "D0:D1 D1:D2 C0:C" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .SRTYPE("ASYNC")) 
    ODDR2_clock
       (.C(clk_out2),
        .CE(1'b1),
        .D1(shift_clock[0]),
        .D2(shift_clock[1]),
        .Q(clock_s),
        .R(NLW_ODDR2_clock_R_UNCONNECTED),
        .S(NLW_ODDR2_clock_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "ODDR2" *) 
  (* XILINX_TRANSFORM_PINMAP = "D0:D1 D1:D2 C0:C" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .SRTYPE("ASYNC")) 
    ODDR2_green
       (.C(clk_out2),
        .CE(1'b1),
        .D1(\shift_green_reg_n_0_[0] ),
        .D2(\shift_green_reg_n_0_[1] ),
        .Q(green_s),
        .R(NLW_ODDR2_green_R_UNCONNECTED),
        .S(NLW_ODDR2_green_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "ODDR2" *) 
  (* XILINX_TRANSFORM_PINMAP = "D0:D1 D1:D2 C0:C" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .SRTYPE("ASYNC")) 
    ODDR2_red
       (.C(clk_out2),
        .CE(1'b1),
        .D1(D0),
        .D2(D1),
        .Q(red_s),
        .R(NLW_ODDR2_red_R_UNCONNECTED),
        .S(NLW_ODDR2_red_S_UNCONNECTED));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder TDMS_encoder_blue
       (.CLK(CLK),
        .D({TDMS_encoder_blue_n_2,TDMS_encoder_blue_n_3,TDMS_encoder_blue_n_4,TDMS_encoder_blue_n_5,TDMS_encoder_blue_n_6,TDMS_encoder_blue_n_7}),
        .Q(\dc_bias_reg[3]_0 ),
        .SR(SR),
        .\dc_bias_reg[1]_0 (\encoded_reg[9] ),
        .\dc_bias_reg[2]_0 (\dc_bias_reg[2]_1 ),
        .\dc_bias_reg[3]_0 (\dc_bias_reg[3]_4 ),
        .\dc_bias_reg[3]_1 (\dc_bias_reg[3]_6 ),
        .\dc_bias_reg[3]_2 (\dc_bias_reg[3]_2 ),
        .\dc_bias_reg[3]_3 (\dc_bias_reg[3]_7 ),
        .\dc_bias_reg[3]_4 (\dc_bias_reg[3]_8 ),
        .\encoded_reg[4]_0 (\encoded_reg[4] ),
        .\encoded_reg[8]_0 (\encoded_reg[8]_0 ),
        .\encoded_reg[9]_0 (\encoded_reg[9]_1 ),
        .\encoded_reg[9]_1 (\encoded_reg[9]_0 ),
        .h_blank_is_low(h_blank_is_low),
        .h_sync_is_low(h_sync_is_low),
        .v_blank_is_low(v_blank_is_low));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0 TDMS_encoder_green
       (.CLK(CLK),
        .D(D),
        .Q(Q),
        .SR(SR),
        .\dc_bias_reg[0]_0 (\dc_bias_reg[0] ),
        .\dc_bias_reg[1]_0 (\dc_bias_reg[1] ),
        .\dc_bias_reg[2]_0 (\dc_bias_reg[2] ),
        .\dc_bias_reg[2]_1 (\dc_bias_reg[2]_0 ),
        .\dc_bias_reg[2]_2 (\dc_bias_reg[2]_2 ),
        .\dc_bias_reg[3]_0 (\dc_bias_reg[3]_1 ),
        .\dc_bias_reg[3]_1 (\dc_bias_reg[3]_2 ),
        .\dc_bias_reg[3]_2 (\dc_bias_reg[3]_3 ),
        .\dc_bias_reg[3]_3 (\dc_bias_reg[3]_4 ),
        .\dc_bias_reg[3]_4 (\dc_bias_reg[3]_5 ),
        .\encoded_reg[2]_0 (\encoded_reg[2]_0 ),
        .\encoded_reg[8]_0 (\encoded_reg[8] ),
        .\encoded_reg[8]_1 (\encoded_reg[9]_0 ),
        .\encoded_reg[9]_0 ({TDMS_encoder_green_n_7,TDMS_encoder_green_n_8,TDMS_encoder_green_n_9,TDMS_encoder_green_n_10}),
        .h_blank_is_low(h_blank_is_low),
        .v_blank_is_low(v_blank_is_low));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1 TDMS_encoder_red
       (.CLK(CLK),
        .D({TDMS_encoder_red_n_1,TDMS_encoder_red_n_2,TDMS_encoder_red_n_3,TDMS_encoder_red_n_4}),
        .Q(\dc_bias_reg[3] ),
        .SR(SR),
        .\encoded_reg[2]_0 (\encoded_reg[2] ),
        .\encoded_reg[9]_0 (\encoded_reg[9] ),
        .\encoded_reg[9]_1 (\encoded_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_7),
        .Q(latched_blue[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_6),
        .Q(latched_blue[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_5),
        .Q(latched_blue[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_4),
        .Q(latched_blue[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_3),
        .Q(latched_blue[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_2),
        .Q(latched_blue[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_10),
        .Q(latched_green[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_9),
        .Q(latched_green[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_8),
        .Q(latched_green[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_7),
        .Q(latched_green[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_4),
        .Q(latched_red[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_3),
        .Q(latched_red[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_2),
        .Q(latched_red[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_1),
        .Q(latched_red[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[0]_i_1 
       (.I0(shift_blue[2]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[0]),
        .O(shift_blue_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[1]_i_1 
       (.I0(shift_blue[3]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[1]),
        .O(shift_blue_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[2]_i_1 
       (.I0(shift_blue[4]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[2]),
        .O(shift_blue_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[3]_i_1 
       (.I0(shift_blue[5]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[1]),
        .O(shift_blue_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[4]_i_1 
       (.I0(shift_blue[6]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[4]),
        .O(shift_blue_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[5]_i_1 
       (.I0(shift_blue[7]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[1]),
        .O(shift_blue_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[6]_i_1 
       (.I0(shift_blue[8]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[4]),
        .O(shift_blue_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[7]_i_1 
       (.I0(shift_blue[9]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[1]),
        .O(shift_blue_0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[0] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_blue_0[0]),
        .Q(\shift_blue_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[1] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_blue_0[1]),
        .Q(\shift_blue_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[2] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_blue_0[2]),
        .Q(shift_blue[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[3] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_blue_0[3]),
        .Q(shift_blue[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[4] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_blue_0[4]),
        .Q(shift_blue[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[5] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_blue_0[5]),
        .Q(shift_blue[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[6] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_blue_0[6]),
        .Q(shift_blue[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[7] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_blue_0[7]),
        .Q(shift_blue[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[8] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(latched_blue[8]),
        .Q(shift_blue[8]),
        .R(\shift_red[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[9] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(latched_blue[9]),
        .Q(shift_blue[9]),
        .R(\shift_red[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[0] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[2] ),
        .Q(shift_clock[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[1] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[3] ),
        .Q(shift_clock[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[2] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[4] ),
        .Q(\shift_clock_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[3] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[5] ),
        .Q(\shift_clock_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[4] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[6] ),
        .Q(\shift_clock_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[5] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[7] ),
        .Q(\shift_clock_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[6] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[8] ),
        .Q(\shift_clock_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[7] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[9] ),
        .Q(\shift_clock_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[8] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_clock[0]),
        .Q(\shift_clock_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[9] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_clock[1]),
        .Q(\shift_clock_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[0]_i_1 
       (.I0(shift_green[2]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[0]),
        .O(shift_green_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[1]_i_1 
       (.I0(shift_green[3]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[0]),
        .O(shift_green_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[2]_i_1 
       (.I0(shift_green[4]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[2]),
        .O(shift_green_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[3]_i_1 
       (.I0(shift_green[5]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[0]),
        .O(shift_green_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[4]_i_1 
       (.I0(shift_green[6]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[2]),
        .O(shift_green_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[5]_i_1 
       (.I0(shift_green[7]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[0]),
        .O(shift_green_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[6]_i_1 
       (.I0(shift_green[8]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[2]),
        .O(shift_green_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[7]_i_1 
       (.I0(shift_green[9]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[0]),
        .O(shift_green_1[7]));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[0] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_green_1[0]),
        .Q(\shift_green_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[1] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_green_1[1]),
        .Q(\shift_green_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[2] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_green_1[2]),
        .Q(shift_green[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[3] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_green_1[3]),
        .Q(shift_green[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[4] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_green_1[4]),
        .Q(shift_green[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[5] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_green_1[5]),
        .Q(shift_green[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[6] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_green_1[6]),
        .Q(shift_green[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[7] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_green_1[7]),
        .Q(shift_green[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[8] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(latched_green[8]),
        .Q(shift_green[8]),
        .R(\shift_red[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[9] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(latched_green[9]),
        .Q(shift_green[9]),
        .R(\shift_red[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_red[0]_i_1 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(data1[0]),
        .O(\shift_red[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_red[1]_i_1 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(data1[1]),
        .O(\shift_red[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[2]_i_1 
       (.I0(data1[2]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[2]),
        .O(shift_red[2]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_red[3]_i_1 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(data1[3]),
        .O(\shift_red[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[4]_i_1 
       (.I0(data1[4]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[2]),
        .O(shift_red[4]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_red[5]_i_1 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(data1[5]),
        .O(\shift_red[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[6]_i_1 
       (.I0(data1[6]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[2]),
        .O(shift_red[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \shift_red[7]_i_1 
       (.I0(latched_red[0]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .O(\shift_red[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \shift_red[7]_i_2 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(data1[7]),
        .O(\shift_red[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \shift_red[9]_i_1 
       (.I0(\shift_red[9]_i_2_n_0 ),
        .I1(\shift_clock_reg_n_0_[5] ),
        .I2(\shift_clock_reg_n_0_[4] ),
        .I3(\shift_clock_reg_n_0_[2] ),
        .I4(\shift_clock_reg_n_0_[3] ),
        .O(\shift_red[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \shift_red[9]_i_2 
       (.I0(\shift_clock_reg_n_0_[8] ),
        .I1(\shift_clock_reg_n_0_[9] ),
        .I2(\shift_clock_reg_n_0_[6] ),
        .I3(\shift_clock_reg_n_0_[7] ),
        .I4(shift_clock[1]),
        .I5(shift_clock[0]),
        .O(\shift_red[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_red_reg[0] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_red[0]_i_1_n_0 ),
        .Q(D0),
        .S(\shift_red[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_red_reg[1] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_red[1]_i_1_n_0 ),
        .Q(D1),
        .S(\shift_red[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[2] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_red[2]),
        .Q(data1[0]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \shift_red_reg[3] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_red[3]_i_1_n_0 ),
        .Q(data1[1]),
        .S(\shift_red[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[4] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_red[4]),
        .Q(data1[2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \shift_red_reg[5] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_red[5]_i_1_n_0 ),
        .Q(data1[3]),
        .S(\shift_red[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[6] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_red[6]),
        .Q(data1[4]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \shift_red_reg[7] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_red[7]_i_2_n_0 ),
        .Q(data1[5]),
        .S(\shift_red[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[8] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(latched_red[8]),
        .Q(data1[6]),
        .R(\shift_red[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[9] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(latched_red[9]),
        .Q(data1[7]),
        .R(\shift_red[9]_i_1_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flag_register
   (flagQ,
    SR,
    process_Q_reg_0,
    s00_axi_aclk);
  output flagQ;
  input [0:0]SR;
  input process_Q_reg_0;
  input s00_axi_aclk;

  wire [0:0]SR;
  wire flagQ;
  wire process_Q_reg_0;
  wire s00_axi_aclk;

  FDRE process_Q_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(process_Q_reg_0),
        .Q(flagQ),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_ctl
   (BCLK_int_reg_0,
    LRCLK_reg_0,
    ac_lrclk_sig_prev_reg,
    \ac_lrclk_count_reg[2] ,
    s00_axi_aresetn_0,
    s00_axi_aresetn_1,
    s00_axi_aresetn_2,
    ac_dac_sdata,
    D,
    \D_R_O_int_reg[23]_0 ,
    SR,
    s00_axi_aclk,
    s00_axi_aresetn,
    \ac_lrclk_count_reg[2]_0 ,
    Q,
    \Data_Out_int_reg[30]_0 ,
    ac_lrclk_count__0,
    ready_sig_reg,
    ready_sig_reg_0,
    ac_adc_sdata,
    switch,
    DOADO,
    \ch2_reg[to_ac][17] );
  output BCLK_int_reg_0;
  output LRCLK_reg_0;
  output ac_lrclk_sig_prev_reg;
  output \ac_lrclk_count_reg[2] ;
  output s00_axi_aresetn_0;
  output s00_axi_aresetn_1;
  output s00_axi_aresetn_2;
  output ac_dac_sdata;
  output [17:0]D;
  output [17:0]\D_R_O_int_reg[23]_0 ;
  input [0:0]SR;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input \ac_lrclk_count_reg[2]_0 ;
  input [17:0]Q;
  input [17:0]\Data_Out_int_reg[30]_0 ;
  input [2:0]ac_lrclk_count__0;
  input ready_sig_reg;
  input ready_sig_reg_0;
  input ac_adc_sdata;
  input [0:0]switch;
  input [15:0]DOADO;
  input [15:0]\ch2_reg[to_ac][17] ;

  wire BCLK_Fall_int;
  wire BCLK_int_i_2_n_0;
  wire BCLK_int_reg_0;
  wire Cnt_Bclk0;
  wire \Cnt_Bclk0_inferred__0/i__carry_n_3 ;
  wire \Cnt_Bclk[4]_i_1_n_0 ;
  wire [4:0]Cnt_Bclk_reg;
  wire [4:0]Cnt_Lrclk;
  wire \Cnt_Lrclk[0]_i_1_n_0 ;
  wire \Cnt_Lrclk[1]_i_1_n_0 ;
  wire \Cnt_Lrclk[2]_i_1_n_0 ;
  wire \Cnt_Lrclk[3]_i_1_n_0 ;
  wire \Cnt_Lrclk[4]_i_2_n_0 ;
  wire [17:0]D;
  wire [15:0]DOADO;
  wire [23:6]D_L_O_int;
  wire D_L_O_int_0;
  wire [23:6]D_R_O_int;
  wire \D_R_O_int[23]_i_1_n_0 ;
  wire [17:0]\D_R_O_int_reg[23]_0 ;
  wire [31:0]Data_In_int;
  wire \Data_In_int[31]_i_1_n_0 ;
  wire \Data_Out_int[13]_i_1_n_0 ;
  wire \Data_Out_int[14]_i_1_n_0 ;
  wire \Data_Out_int[15]_i_1_n_0 ;
  wire \Data_Out_int[16]_i_1_n_0 ;
  wire \Data_Out_int[17]_i_1_n_0 ;
  wire \Data_Out_int[18]_i_1_n_0 ;
  wire \Data_Out_int[19]_i_1_n_0 ;
  wire \Data_Out_int[20]_i_1_n_0 ;
  wire \Data_Out_int[21]_i_1_n_0 ;
  wire \Data_Out_int[22]_i_1_n_0 ;
  wire \Data_Out_int[23]_i_1_n_0 ;
  wire \Data_Out_int[24]_i_1_n_0 ;
  wire \Data_Out_int[25]_i_1_n_0 ;
  wire \Data_Out_int[26]_i_1_n_0 ;
  wire \Data_Out_int[27]_i_1_n_0 ;
  wire \Data_Out_int[28]_i_1_n_0 ;
  wire \Data_Out_int[29]_i_1_n_0 ;
  wire \Data_Out_int[30]_i_1_n_0 ;
  wire \Data_Out_int[30]_i_2_n_0 ;
  wire \Data_Out_int[30]_i_3_n_0 ;
  wire \Data_Out_int[30]_i_4_n_0 ;
  wire \Data_Out_int[31]_i_1_n_0 ;
  wire \Data_Out_int[31]_i_2_n_0 ;
  wire \Data_Out_int[31]_i_3_n_0 ;
  wire \Data_Out_int[31]_i_4_n_0 ;
  wire [17:0]\Data_Out_int_reg[30]_0 ;
  wire \Data_Out_int_reg_n_0_[13] ;
  wire \Data_Out_int_reg_n_0_[14] ;
  wire \Data_Out_int_reg_n_0_[15] ;
  wire \Data_Out_int_reg_n_0_[16] ;
  wire \Data_Out_int_reg_n_0_[17] ;
  wire \Data_Out_int_reg_n_0_[18] ;
  wire \Data_Out_int_reg_n_0_[19] ;
  wire \Data_Out_int_reg_n_0_[20] ;
  wire \Data_Out_int_reg_n_0_[21] ;
  wire \Data_Out_int_reg_n_0_[22] ;
  wire \Data_Out_int_reg_n_0_[23] ;
  wire \Data_Out_int_reg_n_0_[24] ;
  wire \Data_Out_int_reg_n_0_[25] ;
  wire \Data_Out_int_reg_n_0_[26] ;
  wire \Data_Out_int_reg_n_0_[27] ;
  wire \Data_Out_int_reg_n_0_[28] ;
  wire \Data_Out_int_reg_n_0_[29] ;
  wire \Data_Out_int_reg_n_0_[30] ;
  wire LRCLK_i_1_n_0;
  wire LRCLK_i_2_n_0;
  wire LRCLK_reg_0;
  wire [17:0]Q;
  wire [0:0]SR;
  wire ac_adc_sdata;
  wire ac_dac_sdata;
  wire [2:0]ac_lrclk_count__0;
  wire \ac_lrclk_count_reg[2] ;
  wire \ac_lrclk_count_reg[2]_0 ;
  wire ac_lrclk_sig_prev_reg;
  wire [15:0]\ch2_reg[to_ac][17] ;
  wire i__carry_i_1__5_n_0;
  wire i__carry_i_2_n_0;
  wire [4:0]p_0_in;
  wire p_17_in;
  wire ready_sig_reg;
  wire ready_sig_reg_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire s00_axi_aresetn_1;
  wire s00_axi_aresetn_2;
  wire [0:0]switch;
  wire [3:2]\NLW_Cnt_Bclk0_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_Cnt_Bclk0_inferred__0/i__carry_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    BCLK_int_i_2
       (.I0(Cnt_Bclk0),
        .I1(BCLK_int_reg_0),
        .O(BCLK_int_i_2_n_0));
  FDRE BCLK_int_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(BCLK_int_i_2_n_0),
        .Q(BCLK_int_reg_0),
        .R(SR));
  CARRY4 \Cnt_Bclk0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\NLW_Cnt_Bclk0_inferred__0/i__carry_CO_UNCONNECTED [3:2],Cnt_Bclk0,\Cnt_Bclk0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Cnt_Bclk0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1__5_n_0,i__carry_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    \Cnt_Bclk[0]_i_1 
       (.I0(Cnt_Bclk_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Cnt_Bclk[1]_i_1 
       (.I0(Cnt_Bclk_reg[0]),
        .I1(Cnt_Bclk_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Cnt_Bclk[2]_i_1 
       (.I0(Cnt_Bclk_reg[1]),
        .I1(Cnt_Bclk_reg[0]),
        .I2(Cnt_Bclk_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Cnt_Bclk[3]_i_1 
       (.I0(Cnt_Bclk_reg[2]),
        .I1(Cnt_Bclk_reg[0]),
        .I2(Cnt_Bclk_reg[1]),
        .I3(Cnt_Bclk_reg[3]),
        .O(p_0_in[3]));
  LUT2 #(
    .INIT(4'hB)) 
    \Cnt_Bclk[4]_i_1 
       (.I0(Cnt_Bclk0),
        .I1(s00_axi_aresetn),
        .O(\Cnt_Bclk[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Cnt_Bclk[4]_i_2 
       (.I0(Cnt_Bclk_reg[3]),
        .I1(Cnt_Bclk_reg[1]),
        .I2(Cnt_Bclk_reg[0]),
        .I3(Cnt_Bclk_reg[2]),
        .I4(Cnt_Bclk_reg[4]),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bclk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(Cnt_Bclk_reg[0]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bclk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(Cnt_Bclk_reg[1]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bclk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(Cnt_Bclk_reg[2]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bclk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(Cnt_Bclk_reg[3]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bclk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(Cnt_Bclk_reg[4]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Cnt_Lrclk[0]_i_1 
       (.I0(Cnt_Lrclk[0]),
        .O(\Cnt_Lrclk[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Cnt_Lrclk[1]_i_1 
       (.I0(Cnt_Lrclk[0]),
        .I1(Cnt_Lrclk[1]),
        .O(\Cnt_Lrclk[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Cnt_Lrclk[2]_i_1 
       (.I0(Cnt_Lrclk[1]),
        .I1(Cnt_Lrclk[0]),
        .I2(Cnt_Lrclk[2]),
        .O(\Cnt_Lrclk[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Cnt_Lrclk[3]_i_1 
       (.I0(Cnt_Lrclk[2]),
        .I1(Cnt_Lrclk[0]),
        .I2(Cnt_Lrclk[1]),
        .I3(Cnt_Lrclk[3]),
        .O(\Cnt_Lrclk[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Cnt_Lrclk[4]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(Cnt_Bclk0),
        .O(BCLK_Fall_int));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Cnt_Lrclk[4]_i_2 
       (.I0(Cnt_Lrclk[3]),
        .I1(Cnt_Lrclk[1]),
        .I2(Cnt_Lrclk[0]),
        .I3(Cnt_Lrclk[2]),
        .I4(Cnt_Lrclk[4]),
        .O(\Cnt_Lrclk[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Lrclk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[0]_i_1_n_0 ),
        .Q(Cnt_Lrclk[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Lrclk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[1]_i_1_n_0 ),
        .Q(Cnt_Lrclk[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Lrclk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[2]_i_1_n_0 ),
        .Q(Cnt_Lrclk[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Lrclk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[3]_i_1_n_0 ),
        .Q(Cnt_Lrclk[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Lrclk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[4]_i_2_n_0 ),
        .Q(Cnt_Lrclk[4]),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    \D_L_O_int[23]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(LRCLK_reg_0),
        .I2(\Data_Out_int[31]_i_3_n_0 ),
        .O(D_L_O_int_0));
  FDRE \D_L_O_int_reg[10] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[18]),
        .Q(D_L_O_int[10]),
        .R(SR));
  FDRE \D_L_O_int_reg[11] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[19]),
        .Q(D_L_O_int[11]),
        .R(SR));
  FDRE \D_L_O_int_reg[12] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[20]),
        .Q(D_L_O_int[12]),
        .R(SR));
  FDRE \D_L_O_int_reg[13] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[21]),
        .Q(D_L_O_int[13]),
        .R(SR));
  FDRE \D_L_O_int_reg[14] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[22]),
        .Q(D_L_O_int[14]),
        .R(SR));
  FDRE \D_L_O_int_reg[15] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[23]),
        .Q(D_L_O_int[15]),
        .R(SR));
  FDRE \D_L_O_int_reg[16] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[24]),
        .Q(D_L_O_int[16]),
        .R(SR));
  FDRE \D_L_O_int_reg[17] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[25]),
        .Q(D_L_O_int[17]),
        .R(SR));
  FDRE \D_L_O_int_reg[18] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[26]),
        .Q(D_L_O_int[18]),
        .R(SR));
  FDRE \D_L_O_int_reg[19] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[27]),
        .Q(D_L_O_int[19]),
        .R(SR));
  FDRE \D_L_O_int_reg[20] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[28]),
        .Q(D_L_O_int[20]),
        .R(SR));
  FDRE \D_L_O_int_reg[21] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[29]),
        .Q(D_L_O_int[21]),
        .R(SR));
  FDRE \D_L_O_int_reg[22] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[30]),
        .Q(D_L_O_int[22]),
        .R(SR));
  FDRE \D_L_O_int_reg[23] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[31]),
        .Q(D_L_O_int[23]),
        .R(SR));
  FDRE \D_L_O_int_reg[6] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[14]),
        .Q(D_L_O_int[6]),
        .R(SR));
  FDRE \D_L_O_int_reg[7] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[15]),
        .Q(D_L_O_int[7]),
        .R(SR));
  FDRE \D_L_O_int_reg[8] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[16]),
        .Q(D_L_O_int[8]),
        .R(SR));
  FDRE \D_L_O_int_reg[9] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[17]),
        .Q(D_L_O_int[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h04)) 
    \D_R_O_int[23]_i_1 
       (.I0(LRCLK_reg_0),
        .I1(BCLK_int_reg_0),
        .I2(\Data_Out_int[31]_i_3_n_0 ),
        .O(\D_R_O_int[23]_i_1_n_0 ));
  FDRE \D_R_O_int_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[18]),
        .Q(D_R_O_int[10]),
        .R(SR));
  FDRE \D_R_O_int_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[19]),
        .Q(D_R_O_int[11]),
        .R(SR));
  FDRE \D_R_O_int_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[20]),
        .Q(D_R_O_int[12]),
        .R(SR));
  FDRE \D_R_O_int_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[21]),
        .Q(D_R_O_int[13]),
        .R(SR));
  FDRE \D_R_O_int_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[22]),
        .Q(D_R_O_int[14]),
        .R(SR));
  FDRE \D_R_O_int_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[23]),
        .Q(D_R_O_int[15]),
        .R(SR));
  FDRE \D_R_O_int_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[24]),
        .Q(D_R_O_int[16]),
        .R(SR));
  FDRE \D_R_O_int_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[25]),
        .Q(D_R_O_int[17]),
        .R(SR));
  FDRE \D_R_O_int_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[26]),
        .Q(D_R_O_int[18]),
        .R(SR));
  FDRE \D_R_O_int_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[27]),
        .Q(D_R_O_int[19]),
        .R(SR));
  FDRE \D_R_O_int_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[28]),
        .Q(D_R_O_int[20]),
        .R(SR));
  FDRE \D_R_O_int_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[29]),
        .Q(D_R_O_int[21]),
        .R(SR));
  FDRE \D_R_O_int_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[30]),
        .Q(D_R_O_int[22]),
        .R(SR));
  FDRE \D_R_O_int_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[31]),
        .Q(D_R_O_int[23]),
        .R(SR));
  FDRE \D_R_O_int_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[14]),
        .Q(D_R_O_int[6]),
        .R(SR));
  FDRE \D_R_O_int_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[15]),
        .Q(D_R_O_int[7]),
        .R(SR));
  FDRE \D_R_O_int_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[16]),
        .Q(D_R_O_int[8]),
        .R(SR));
  FDRE \D_R_O_int_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[17]),
        .Q(D_R_O_int[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h4F)) 
    \Data_In_int[31]_i_1 
       (.I0(\Data_Out_int[31]_i_3_n_0 ),
        .I1(BCLK_int_reg_0),
        .I2(s00_axi_aresetn),
        .O(\Data_In_int[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Data_In_int[31]_i_2 
       (.I0(Cnt_Bclk0),
        .I1(BCLK_int_reg_0),
        .O(p_17_in));
  FDRE \Data_In_int_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(ac_adc_sdata),
        .Q(Data_In_int[0]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[9]),
        .Q(Data_In_int[10]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[10]),
        .Q(Data_In_int[11]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[11]),
        .Q(Data_In_int[12]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[12]),
        .Q(Data_In_int[13]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[13]),
        .Q(Data_In_int[14]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[14]),
        .Q(Data_In_int[15]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[15]),
        .Q(Data_In_int[16]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[16]),
        .Q(Data_In_int[17]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[17]),
        .Q(Data_In_int[18]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[18]),
        .Q(Data_In_int[19]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[0]),
        .Q(Data_In_int[1]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[19]),
        .Q(Data_In_int[20]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[20]),
        .Q(Data_In_int[21]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[21]),
        .Q(Data_In_int[22]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[22]),
        .Q(Data_In_int[23]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[23]),
        .Q(Data_In_int[24]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[24]),
        .Q(Data_In_int[25]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[25]),
        .Q(Data_In_int[26]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[26]),
        .Q(Data_In_int[27]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[27]),
        .Q(Data_In_int[28]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[28]),
        .Q(Data_In_int[29]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[1]),
        .Q(Data_In_int[2]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[29]),
        .Q(Data_In_int[30]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[30]),
        .Q(Data_In_int[31]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[2]),
        .Q(Data_In_int[3]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[3]),
        .Q(Data_In_int[4]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[4]),
        .Q(Data_In_int[5]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[5]),
        .Q(Data_In_int[6]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[6]),
        .Q(Data_In_int[7]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[7]),
        .Q(Data_In_int[8]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[8]),
        .Q(Data_In_int[9]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_Out_int[13]_i_1 
       (.I0(Q[0]),
        .I1(\Data_Out_int[30]_i_3_n_0 ),
        .I2(\Data_Out_int_reg[30]_0 [0]),
        .I3(\Data_Out_int[30]_i_2_n_0 ),
        .O(\Data_Out_int[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[14]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(\Data_Out_int_reg[30]_0 [1]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Q[1]),
        .I4(\Data_Out_int_reg_n_0_[13] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[15]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(\Data_Out_int_reg[30]_0 [2]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Q[2]),
        .I4(\Data_Out_int_reg_n_0_[14] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[16]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(\Data_Out_int_reg[30]_0 [3]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(\Data_Out_int_reg_n_0_[15] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[17]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(\Data_Out_int_reg[30]_0 [4]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Q[4]),
        .I4(\Data_Out_int_reg_n_0_[16] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[18]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(\Data_Out_int_reg[30]_0 [5]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Q[5]),
        .I4(\Data_Out_int_reg_n_0_[17] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[19]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(\Data_Out_int_reg[30]_0 [6]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Q[6]),
        .I4(\Data_Out_int_reg_n_0_[18] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[20]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(\Data_Out_int_reg[30]_0 [7]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Q[7]),
        .I4(\Data_Out_int_reg_n_0_[19] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[21]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(\Data_Out_int_reg[30]_0 [8]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Q[8]),
        .I4(\Data_Out_int_reg_n_0_[20] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[22]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(\Data_Out_int_reg[30]_0 [9]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Q[9]),
        .I4(\Data_Out_int_reg_n_0_[21] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[23]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(\Data_Out_int_reg[30]_0 [10]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Q[10]),
        .I4(\Data_Out_int_reg_n_0_[22] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[24]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(\Data_Out_int_reg[30]_0 [11]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Q[11]),
        .I4(\Data_Out_int_reg_n_0_[23] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[25]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(\Data_Out_int_reg[30]_0 [12]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Q[12]),
        .I4(\Data_Out_int_reg_n_0_[24] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[26]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(\Data_Out_int_reg[30]_0 [13]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Q[13]),
        .I4(\Data_Out_int_reg_n_0_[25] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[27]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(\Data_Out_int_reg[30]_0 [14]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Q[14]),
        .I4(\Data_Out_int_reg_n_0_[26] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[28]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(\Data_Out_int_reg[30]_0 [15]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Q[15]),
        .I4(\Data_Out_int_reg_n_0_[27] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[29]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(\Data_Out_int_reg[30]_0 [16]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Q[16]),
        .I4(\Data_Out_int_reg_n_0_[28] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[30]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(\Data_Out_int_reg[30]_0 [17]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Q[17]),
        .I4(\Data_Out_int_reg_n_0_[29] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000020FFFFFFFF)) 
    \Data_Out_int[30]_i_2 
       (.I0(\Data_Out_int[30]_i_4_n_0 ),
        .I1(BCLK_int_reg_0),
        .I2(Cnt_Bclk0),
        .I3(LRCLK_reg_0),
        .I4(Cnt_Lrclk[4]),
        .I5(s00_axi_aresetn),
        .O(\Data_Out_int[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \Data_Out_int[30]_i_3 
       (.I0(s00_axi_aresetn),
        .I1(LRCLK_reg_0),
        .I2(BCLK_int_reg_0),
        .I3(\Data_Out_int[31]_i_3_n_0 ),
        .O(\Data_Out_int[30]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \Data_Out_int[30]_i_4 
       (.I0(Cnt_Lrclk[1]),
        .I1(Cnt_Lrclk[0]),
        .I2(Cnt_Lrclk[3]),
        .I3(Cnt_Lrclk[2]),
        .O(\Data_Out_int[30]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hD5FF)) 
    \Data_Out_int[31]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(BCLK_int_reg_0),
        .I2(Cnt_Bclk0),
        .I3(\Data_Out_int[31]_i_3_n_0 ),
        .O(\Data_Out_int[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Out_int[31]_i_2 
       (.I0(\Data_Out_int[31]_i_4_n_0 ),
        .I1(\Data_Out_int_reg_n_0_[30] ),
        .O(\Data_Out_int[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \Data_Out_int[31]_i_3 
       (.I0(Cnt_Lrclk[4]),
        .I1(Cnt_Bclk0),
        .I2(Cnt_Lrclk[2]),
        .I3(Cnt_Lrclk[3]),
        .I4(Cnt_Lrclk[1]),
        .I5(Cnt_Lrclk[0]),
        .O(\Data_Out_int[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \Data_Out_int[31]_i_4 
       (.I0(BCLK_int_reg_0),
        .I1(\Data_Out_int[31]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .O(\Data_Out_int[31]_i_4_n_0 ));
  FDRE \Data_Out_int_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[13]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[14]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[15]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[16]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[17]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[18]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[19]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[20]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[21]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[22]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[23]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[24]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[25]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[26]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[27]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[28]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[29]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[30]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[31]_i_2_n_0 ),
        .Q(ac_dac_sdata),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    LRCLK_i_1
       (.I0(LRCLK_i_2_n_0),
        .I1(Cnt_Bclk0),
        .I2(BCLK_int_reg_0),
        .I3(Cnt_Lrclk[4]),
        .I4(LRCLK_reg_0),
        .O(LRCLK_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    LRCLK_i_2
       (.I0(Cnt_Lrclk[2]),
        .I1(Cnt_Lrclk[0]),
        .I2(Cnt_Lrclk[1]),
        .I3(Cnt_Lrclk[3]),
        .O(LRCLK_i_2_n_0));
  FDRE LRCLK_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(LRCLK_i_1_n_0),
        .Q(LRCLK_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \ac_lrclk_count[0]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\ac_lrclk_count_reg[2]_0 ),
        .I2(LRCLK_reg_0),
        .I3(ac_lrclk_count__0[0]),
        .O(s00_axi_aresetn_1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h8A20AA00)) 
    \ac_lrclk_count[1]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\ac_lrclk_count_reg[2]_0 ),
        .I2(LRCLK_reg_0),
        .I3(ac_lrclk_count__0[1]),
        .I4(ac_lrclk_count__0[0]),
        .O(s00_axi_aresetn_2));
  LUT6 #(
    .INIT(64'h8A20AA00AA00AA00)) 
    \ac_lrclk_count[2]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\ac_lrclk_count_reg[2]_0 ),
        .I2(LRCLK_reg_0),
        .I3(ac_lrclk_count__0[2]),
        .I4(ac_lrclk_count__0[1]),
        .I5(ac_lrclk_count__0[0]),
        .O(s00_axi_aresetn_0));
  LUT3 #(
    .INIT(8'hE2)) 
    ac_lrclk_sig_prev_i_1
       (.I0(\ac_lrclk_count_reg[2]_0 ),
        .I1(s00_axi_aresetn),
        .I2(LRCLK_reg_0),
        .O(ac_lrclk_sig_prev_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch1[incoming_sample][0]_i_1 
       (.I0(D_L_O_int[8]),
        .I1(switch),
        .I2(DOADO[0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch1[incoming_sample][10]_i_1 
       (.I0(D_L_O_int[18]),
        .I1(switch),
        .I2(DOADO[10]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch1[incoming_sample][11]_i_1 
       (.I0(D_L_O_int[19]),
        .I1(switch),
        .I2(DOADO[11]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch1[incoming_sample][12]_i_1 
       (.I0(D_L_O_int[20]),
        .I1(switch),
        .I2(DOADO[12]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch1[incoming_sample][13]_i_1 
       (.I0(D_L_O_int[21]),
        .I1(switch),
        .I2(DOADO[13]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch1[incoming_sample][14]_i_1 
       (.I0(D_L_O_int[22]),
        .I1(switch),
        .I2(DOADO[14]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \ch1[incoming_sample][15]_i_2 
       (.I0(D_L_O_int[23]),
        .I1(switch),
        .I2(DOADO[15]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch1[incoming_sample][1]_i_1 
       (.I0(D_L_O_int[9]),
        .I1(switch),
        .I2(DOADO[1]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch1[incoming_sample][2]_i_1 
       (.I0(D_L_O_int[10]),
        .I1(switch),
        .I2(DOADO[2]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch1[incoming_sample][3]_i_1 
       (.I0(D_L_O_int[11]),
        .I1(switch),
        .I2(DOADO[3]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch1[incoming_sample][4]_i_1 
       (.I0(D_L_O_int[12]),
        .I1(switch),
        .I2(DOADO[4]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch1[incoming_sample][5]_i_1 
       (.I0(D_L_O_int[13]),
        .I1(switch),
        .I2(DOADO[5]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch1[incoming_sample][6]_i_1 
       (.I0(D_L_O_int[14]),
        .I1(switch),
        .I2(DOADO[6]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch1[incoming_sample][7]_i_1 
       (.I0(D_L_O_int[15]),
        .I1(switch),
        .I2(DOADO[7]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch1[incoming_sample][8]_i_1 
       (.I0(D_L_O_int[16]),
        .I1(switch),
        .I2(DOADO[8]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch1[incoming_sample][9]_i_1 
       (.I0(D_L_O_int[17]),
        .I1(switch),
        .I2(DOADO[9]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ch1[to_ac][0]_i_1 
       (.I0(switch),
        .I1(D_L_O_int[6]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ch1[to_ac][1]_i_1 
       (.I0(switch),
        .I1(D_L_O_int[7]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch2[incoming_sample][0]_i_1 
       (.I0(D_R_O_int[8]),
        .I1(switch),
        .I2(\ch2_reg[to_ac][17] [0]),
        .O(\D_R_O_int_reg[23]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch2[incoming_sample][10]_i_1 
       (.I0(D_R_O_int[18]),
        .I1(switch),
        .I2(\ch2_reg[to_ac][17] [10]),
        .O(\D_R_O_int_reg[23]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch2[incoming_sample][11]_i_1 
       (.I0(D_R_O_int[19]),
        .I1(switch),
        .I2(\ch2_reg[to_ac][17] [11]),
        .O(\D_R_O_int_reg[23]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch2[incoming_sample][12]_i_1 
       (.I0(D_R_O_int[20]),
        .I1(switch),
        .I2(\ch2_reg[to_ac][17] [12]),
        .O(\D_R_O_int_reg[23]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch2[incoming_sample][13]_i_1 
       (.I0(D_R_O_int[21]),
        .I1(switch),
        .I2(\ch2_reg[to_ac][17] [13]),
        .O(\D_R_O_int_reg[23]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch2[incoming_sample][14]_i_1 
       (.I0(D_R_O_int[22]),
        .I1(switch),
        .I2(\ch2_reg[to_ac][17] [14]),
        .O(\D_R_O_int_reg[23]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \ch2[incoming_sample][15]_i_1 
       (.I0(D_R_O_int[23]),
        .I1(switch),
        .I2(\ch2_reg[to_ac][17] [15]),
        .O(\D_R_O_int_reg[23]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch2[incoming_sample][1]_i_1 
       (.I0(D_R_O_int[9]),
        .I1(switch),
        .I2(\ch2_reg[to_ac][17] [1]),
        .O(\D_R_O_int_reg[23]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch2[incoming_sample][2]_i_1 
       (.I0(D_R_O_int[10]),
        .I1(switch),
        .I2(\ch2_reg[to_ac][17] [2]),
        .O(\D_R_O_int_reg[23]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch2[incoming_sample][3]_i_1 
       (.I0(D_R_O_int[11]),
        .I1(switch),
        .I2(\ch2_reg[to_ac][17] [3]),
        .O(\D_R_O_int_reg[23]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch2[incoming_sample][4]_i_1 
       (.I0(D_R_O_int[12]),
        .I1(switch),
        .I2(\ch2_reg[to_ac][17] [4]),
        .O(\D_R_O_int_reg[23]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch2[incoming_sample][5]_i_1 
       (.I0(D_R_O_int[13]),
        .I1(switch),
        .I2(\ch2_reg[to_ac][17] [5]),
        .O(\D_R_O_int_reg[23]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch2[incoming_sample][6]_i_1 
       (.I0(D_R_O_int[14]),
        .I1(switch),
        .I2(\ch2_reg[to_ac][17] [6]),
        .O(\D_R_O_int_reg[23]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch2[incoming_sample][7]_i_1 
       (.I0(D_R_O_int[15]),
        .I1(switch),
        .I2(\ch2_reg[to_ac][17] [7]),
        .O(\D_R_O_int_reg[23]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch2[incoming_sample][8]_i_1 
       (.I0(D_R_O_int[16]),
        .I1(switch),
        .I2(\ch2_reg[to_ac][17] [8]),
        .O(\D_R_O_int_reg[23]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ch2[incoming_sample][9]_i_1 
       (.I0(D_R_O_int[17]),
        .I1(switch),
        .I2(\ch2_reg[to_ac][17] [9]),
        .O(\D_R_O_int_reg[23]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ch2[to_ac][0]_i_1 
       (.I0(switch),
        .I1(D_R_O_int[6]),
        .O(\D_R_O_int_reg[23]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ch2[to_ac][1]_i_1 
       (.I0(switch),
        .I1(D_R_O_int[7]),
        .O(\D_R_O_int_reg[23]_0 [1]));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_1__5
       (.I0(Cnt_Bclk_reg[3]),
        .I1(Cnt_Bclk_reg[4]),
        .O(i__carry_i_1__5_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    i__carry_i_2
       (.I0(Cnt_Bclk_reg[2]),
        .I1(Cnt_Bclk_reg[1]),
        .I2(Cnt_Bclk_reg[0]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h00F0FFFF00200000)) 
    ready_sig_i_1
       (.I0(ac_lrclk_count__0[2]),
        .I1(ready_sig_reg),
        .I2(LRCLK_reg_0),
        .I3(\ac_lrclk_count_reg[2]_0 ),
        .I4(s00_axi_aresetn),
        .I5(ready_sig_reg_0),
        .O(\ac_lrclk_count_reg[2] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lab2_datapath
   (SR,
    flagQ,
    q,
    Q,
    \process_q_reg[10] ,
    sw,
    \ch2_reg[incoming_sample][15]_0 ,
    CO,
    \process_q_reg[9] ,
    ac_mclk,
    ac_dac_sdata,
    LRCLK_reg,
    BCLK_int_reg,
    tmds,
    tmdsb,
    scl,
    sda,
    s00_axi_aclk,
    WREN,
    s00_axi_aresetn,
    process_Q_reg,
    \sdp_bl.ramb18_dp_bl.ram18_bl ,
    switch,
    \sdp_bl.ramb18_dp_bl.ram18_bl_0 ,
    \sdp_bl.ramb18_dp_bl.ram18_bl_1 ,
    SS,
    E,
    ac_adc_sdata,
    btn);
  output [0:0]SR;
  output flagQ;
  output [9:0]q;
  output [15:0]Q;
  output [9:0]\process_q_reg[10] ;
  output [1:0]sw;
  output [15:0]\ch2_reg[incoming_sample][15]_0 ;
  output [0:0]CO;
  output [0:0]\process_q_reg[9] ;
  output ac_mclk;
  output ac_dac_sdata;
  output LRCLK_reg;
  output BCLK_int_reg;
  output [3:0]tmds;
  output [3:0]tmdsb;
  inout scl;
  inout sda;
  input s00_axi_aclk;
  input WREN;
  input s00_axi_aresetn;
  input [0:0]process_Q_reg;
  input [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl ;
  input [3:0]switch;
  input [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  input [9:0]\sdp_bl.ramb18_dp_bl.ram18_bl_1 ;
  input [0:0]SS;
  input [0:0]E;
  input ac_adc_sdata;
  input [3:0]btn;

  wire Audio_Codec_n_5;
  wire BCLK_int_reg;
  wire [0:0]CO;
  wire [0:0]E;
  wire \Inst_vga/inst_color_mapper/is_trigger_time3 ;
  wire \Inst_vga/inst_color_mapper/is_trigger_time318_in ;
  wire \Inst_vga/inst_color_mapper/is_trigger_time421_in ;
  wire \Inst_vga/inst_color_mapper/is_trigger_time425_in ;
  wire \Inst_vga/inst_color_mapper/is_trigger_time524_in ;
  wire \Inst_vga/inst_color_mapper/is_trigger_volt2 ;
  wire \Inst_vga/inst_color_mapper/is_trigger_volt4 ;
  wire \Inst_vga/inst_color_mapper/is_trigger_volt410_in ;
  wire \Inst_vga/inst_color_mapper/is_trigger_volt414_in ;
  wire \Inst_vga/inst_color_mapper/is_trigger_volt513_in ;
  wire LRCLK_reg;
  wire [15:0]Q;
  wire [9:0]RDADDR;
  wire [0:0]SR;
  wire [0:0]SS;
  wire [9:0]WRADDR;
  wire WREN;
  wire ac_adc_sdata;
  wire ac_dac_sdata;
  wire ac_mclk;
  wire [3:0]btn;
  wire [17:0]\ch1[from_ac] ;
  wire \ch1[incoming_sample] ;
  wire ch1_in_vgrid;
  wire \ch1_reg[to_ac_n_0_][0] ;
  wire \ch1_reg[to_ac_n_0_][10] ;
  wire \ch1_reg[to_ac_n_0_][11] ;
  wire \ch1_reg[to_ac_n_0_][12] ;
  wire \ch1_reg[to_ac_n_0_][13] ;
  wire \ch1_reg[to_ac_n_0_][14] ;
  wire \ch1_reg[to_ac_n_0_][15] ;
  wire \ch1_reg[to_ac_n_0_][16] ;
  wire \ch1_reg[to_ac_n_0_][17] ;
  wire \ch1_reg[to_ac_n_0_][1] ;
  wire \ch1_reg[to_ac_n_0_][2] ;
  wire \ch1_reg[to_ac_n_0_][3] ;
  wire \ch1_reg[to_ac_n_0_][4] ;
  wire \ch1_reg[to_ac_n_0_][5] ;
  wire \ch1_reg[to_ac_n_0_][6] ;
  wire \ch1_reg[to_ac_n_0_][7] ;
  wire \ch1_reg[to_ac_n_0_][8] ;
  wire \ch1_reg[to_ac_n_0_][9] ;
  wire [17:0]\ch2[from_ac] ;
  wire ch2_in_vgrid;
  wire [15:0]\ch2_reg[incoming_sample][15]_0 ;
  wire \ch2_reg[to_ac_n_0_][0] ;
  wire \ch2_reg[to_ac_n_0_][10] ;
  wire \ch2_reg[to_ac_n_0_][11] ;
  wire \ch2_reg[to_ac_n_0_][12] ;
  wire \ch2_reg[to_ac_n_0_][13] ;
  wire \ch2_reg[to_ac_n_0_][14] ;
  wire \ch2_reg[to_ac_n_0_][15] ;
  wire \ch2_reg[to_ac_n_0_][16] ;
  wire \ch2_reg[to_ac_n_0_][17] ;
  wire \ch2_reg[to_ac_n_0_][1] ;
  wire \ch2_reg[to_ac_n_0_][2] ;
  wire \ch2_reg[to_ac_n_0_][3] ;
  wire \ch2_reg[to_ac_n_0_][4] ;
  wire \ch2_reg[to_ac_n_0_][5] ;
  wire \ch2_reg[to_ac_n_0_][6] ;
  wire \ch2_reg[to_ac_n_0_][7] ;
  wire \ch2_reg[to_ac_n_0_][8] ;
  wire \ch2_reg[to_ac_n_0_][9] ;
  wire flagQ;
  wire lopt;
  wire [9:0]\position[row] ;
  wire [8:1]previous_sample;
  wire [0:0]process_Q_reg;
  wire [9:0]\process_q_reg[10] ;
  wire [0:0]\process_q_reg[9] ;
  wire [9:0]q;
  wire rightChannelMemory_n_1;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire scl;
  wire sda;
  wire [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl ;
  wire [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  wire [9:0]\sdp_bl.ramb18_dp_bl.ram18_bl_1 ;
  wire [1:0]sw;
  wire [3:0]switch;
  wire [3:0]tmds;
  wire [3:0]tmdsb;
  wire trig_v_detect_n_0;
  wire trigt_stepper_n_10;
  wire trigt_stepper_n_11;
  wire trigt_stepper_n_12;
  wire trigt_stepper_n_13;
  wire trigt_stepper_n_14;
  wire trigt_stepper_n_15;
  wire trigt_stepper_n_16;
  wire trigt_stepper_n_17;
  wire trigt_stepper_n_18;
  wire trigt_stepper_n_19;
  wire trigt_stepper_n_21;
  wire trigt_stepper_n_22;
  wire trigt_stepper_n_23;
  wire trigt_stepper_n_24;
  wire trigt_stepper_n_26;
  wire trigt_stepper_n_27;
  wire trigt_stepper_n_28;
  wire trigt_stepper_n_29;
  wire trigt_stepper_n_30;
  wire trigt_stepper_n_31;
  wire trigt_stepper_n_32;
  wire trigt_stepper_n_33;
  wire trigt_stepper_n_34;
  wire trigt_stepper_n_35;
  wire trigt_stepper_n_36;
  wire trigt_stepper_n_37;
  wire trigt_stepper_n_38;
  wire trigt_stepper_n_39;
  wire trigt_stepper_n_40;
  wire trigt_stepper_n_41;
  wire trigt_stepper_n_42;
  wire trigt_stepper_n_43;
  wire trigt_stepper_n_44;
  wire trigt_stepper_n_45;
  wire trigt_stepper_n_46;
  wire trigt_stepper_n_47;
  wire trigt_stepper_n_48;
  wire trigt_stepper_n_49;
  wire trigt_stepper_n_50;
  wire trigt_stepper_n_51;
  wire trigv_stepper_n_10;
  wire trigv_stepper_n_11;
  wire trigv_stepper_n_12;
  wire trigv_stepper_n_13;
  wire trigv_stepper_n_17;
  wire trigv_stepper_n_18;
  wire trigv_stepper_n_19;
  wire trigv_stepper_n_20;
  wire trigv_stepper_n_21;
  wire trigv_stepper_n_22;
  wire trigv_stepper_n_23;
  wire trigv_stepper_n_24;
  wire trigv_stepper_n_25;
  wire trigv_stepper_n_26;
  wire trigv_stepper_n_27;
  wire trigv_stepper_n_28;
  wire trigv_stepper_n_29;
  wire trigv_stepper_n_30;
  wire trigv_stepper_n_31;
  wire trigv_stepper_n_32;
  wire trigv_stepper_n_33;
  wire trigv_stepper_n_34;
  wire trigv_stepper_n_35;
  wire trigv_stepper_n_36;
  wire trigv_stepper_n_37;
  wire trigv_stepper_n_38;
  wire trigv_stepper_n_39;
  wire trigv_stepper_n_40;
  wire trigv_stepper_n_41;
  wire trigv_stepper_n_42;
  wire trigv_stepper_n_43;
  wire trigv_stepper_n_44;
  wire trigv_stepper_n_45;
  wire trigv_stepper_n_46;
  wire trigv_stepper_n_47;
  wire trigv_stepper_n_48;
  wire trigv_stepper_n_49;
  wire trigv_stepper_n_50;
  wire trigv_stepper_n_51;
  wire trigv_stepper_n_52;
  wire trigv_stepper_n_53;
  wire video_inst_n_36;
  wire video_inst_n_37;
  wire video_inst_n_38;
  wire video_inst_n_39;
  wire video_inst_n_40;
  wire video_inst_n_41;
  wire video_inst_n_42;
  wire video_inst_n_43;
  wire video_inst_n_44;
  wire video_inst_n_45;
  wire video_inst_n_46;
  wire video_inst_n_47;
  wire video_inst_n_48;
  wire video_inst_n_49;
  wire video_inst_n_50;
  wire video_inst_n_51;
  wire video_inst_n_52;
  wire video_inst_n_53;
  wire video_inst_n_54;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Audio_Codec_Wrapper Audio_Codec
       (.BCLK_int_reg(BCLK_int_reg),
        .D(\ch1[from_ac] ),
        .\D_R_O_int_reg[23] (\ch2[from_ac] ),
        .\Data_Out_int_reg[30] ({\ch1_reg[to_ac_n_0_][17] ,\ch1_reg[to_ac_n_0_][16] ,\ch1_reg[to_ac_n_0_][15] ,\ch1_reg[to_ac_n_0_][14] ,\ch1_reg[to_ac_n_0_][13] ,\ch1_reg[to_ac_n_0_][12] ,\ch1_reg[to_ac_n_0_][11] ,\ch1_reg[to_ac_n_0_][10] ,\ch1_reg[to_ac_n_0_][9] ,\ch1_reg[to_ac_n_0_][8] ,\ch1_reg[to_ac_n_0_][7] ,\ch1_reg[to_ac_n_0_][6] ,\ch1_reg[to_ac_n_0_][5] ,\ch1_reg[to_ac_n_0_][4] ,\ch1_reg[to_ac_n_0_][3] ,\ch1_reg[to_ac_n_0_][2] ,\ch1_reg[to_ac_n_0_][1] ,\ch1_reg[to_ac_n_0_][0] }),
        .E(sw[0]),
        .LRCLK_reg(LRCLK_reg),
        .Q({\ch2_reg[to_ac_n_0_][17] ,\ch2_reg[to_ac_n_0_][16] ,\ch2_reg[to_ac_n_0_][15] ,\ch2_reg[to_ac_n_0_][14] ,\ch2_reg[to_ac_n_0_][13] ,\ch2_reg[to_ac_n_0_][12] ,\ch2_reg[to_ac_n_0_][11] ,\ch2_reg[to_ac_n_0_][10] ,\ch2_reg[to_ac_n_0_][9] ,\ch2_reg[to_ac_n_0_][8] ,\ch2_reg[to_ac_n_0_][7] ,\ch2_reg[to_ac_n_0_][6] ,\ch2_reg[to_ac_n_0_][5] ,\ch2_reg[to_ac_n_0_][4] ,\ch2_reg[to_ac_n_0_][3] ,\ch2_reg[to_ac_n_0_][2] ,\ch2_reg[to_ac_n_0_][1] ,\ch2_reg[to_ac_n_0_][0] }),
        .SR(SR),
        .ac_adc_sdata(ac_adc_sdata),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_mclk(ac_mclk),
        .flagQ(flagQ),
        .lopt(lopt),
        .process_Q_reg(process_Q_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(\ch1[incoming_sample] ),
        .scl(scl),
        .sda(sda),
        .\slv_reg10_reg[0] (Audio_Codec_n_5),
        .switch(switch[3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter address_counter
       (.ADDRBWRADDR(WRADDR),
        .E(E),
        .SS(SS),
        .s00_axi_aclk(s00_axi_aclk),
        .\sdp_bl.ramb18_dp_bl.ram18_bl (\sdp_bl.ramb18_dp_bl.ram18_bl_1 ),
        .sw(sw[1]),
        .switch(switch[2]));
  FDRE \ch1_reg[incoming_sample][0] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch1[from_ac] [2]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \ch1_reg[incoming_sample][10] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch1[from_ac] [12]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \ch1_reg[incoming_sample][11] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch1[from_ac] [13]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \ch1_reg[incoming_sample][12] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch1[from_ac] [14]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \ch1_reg[incoming_sample][13] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch1[from_ac] [15]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \ch1_reg[incoming_sample][14] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch1[from_ac] [16]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \ch1_reg[incoming_sample][15] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch1[from_ac] [17]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \ch1_reg[incoming_sample][1] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch1[from_ac] [3]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \ch1_reg[incoming_sample][2] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch1[from_ac] [4]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \ch1_reg[incoming_sample][3] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch1[from_ac] [5]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \ch1_reg[incoming_sample][4] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch1[from_ac] [6]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \ch1_reg[incoming_sample][5] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch1[from_ac] [7]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \ch1_reg[incoming_sample][6] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch1[from_ac] [8]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \ch1_reg[incoming_sample][7] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch1[from_ac] [9]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \ch1_reg[incoming_sample][8] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch1[from_ac] [10]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \ch1_reg[incoming_sample][9] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch1[from_ac] [11]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \ch1_reg[to_ac][0] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch1[from_ac] [0]),
        .Q(\ch1_reg[to_ac_n_0_][0] ),
        .R(SR));
  FDRE \ch1_reg[to_ac][10] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch1[from_ac] [10]),
        .Q(\ch1_reg[to_ac_n_0_][10] ),
        .R(SR));
  FDRE \ch1_reg[to_ac][11] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch1[from_ac] [11]),
        .Q(\ch1_reg[to_ac_n_0_][11] ),
        .R(SR));
  FDRE \ch1_reg[to_ac][12] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch1[from_ac] [12]),
        .Q(\ch1_reg[to_ac_n_0_][12] ),
        .R(SR));
  FDRE \ch1_reg[to_ac][13] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch1[from_ac] [13]),
        .Q(\ch1_reg[to_ac_n_0_][13] ),
        .R(SR));
  FDRE \ch1_reg[to_ac][14] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch1[from_ac] [14]),
        .Q(\ch1_reg[to_ac_n_0_][14] ),
        .R(SR));
  FDRE \ch1_reg[to_ac][15] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch1[from_ac] [15]),
        .Q(\ch1_reg[to_ac_n_0_][15] ),
        .R(SR));
  FDRE \ch1_reg[to_ac][16] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch1[from_ac] [16]),
        .Q(\ch1_reg[to_ac_n_0_][16] ),
        .R(SR));
  FDRE \ch1_reg[to_ac][17] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch1[from_ac] [17]),
        .Q(\ch1_reg[to_ac_n_0_][17] ),
        .R(SR));
  FDRE \ch1_reg[to_ac][1] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch1[from_ac] [1]),
        .Q(\ch1_reg[to_ac_n_0_][1] ),
        .R(SR));
  FDRE \ch1_reg[to_ac][2] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch1[from_ac] [2]),
        .Q(\ch1_reg[to_ac_n_0_][2] ),
        .R(SR));
  FDRE \ch1_reg[to_ac][3] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch1[from_ac] [3]),
        .Q(\ch1_reg[to_ac_n_0_][3] ),
        .R(SR));
  FDRE \ch1_reg[to_ac][4] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch1[from_ac] [4]),
        .Q(\ch1_reg[to_ac_n_0_][4] ),
        .R(SR));
  FDRE \ch1_reg[to_ac][5] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch1[from_ac] [5]),
        .Q(\ch1_reg[to_ac_n_0_][5] ),
        .R(SR));
  FDRE \ch1_reg[to_ac][6] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch1[from_ac] [6]),
        .Q(\ch1_reg[to_ac_n_0_][6] ),
        .R(SR));
  FDRE \ch1_reg[to_ac][7] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch1[from_ac] [7]),
        .Q(\ch1_reg[to_ac_n_0_][7] ),
        .R(SR));
  FDRE \ch1_reg[to_ac][8] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch1[from_ac] [8]),
        .Q(\ch1_reg[to_ac_n_0_][8] ),
        .R(SR));
  FDRE \ch1_reg[to_ac][9] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch1[from_ac] [9]),
        .Q(\ch1_reg[to_ac_n_0_][9] ),
        .R(SR));
  FDRE \ch2_reg[incoming_sample][0] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch2[from_ac] [2]),
        .Q(\ch2_reg[incoming_sample][15]_0 [0]),
        .R(1'b0));
  FDRE \ch2_reg[incoming_sample][10] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch2[from_ac] [12]),
        .Q(\ch2_reg[incoming_sample][15]_0 [10]),
        .R(1'b0));
  FDRE \ch2_reg[incoming_sample][11] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch2[from_ac] [13]),
        .Q(\ch2_reg[incoming_sample][15]_0 [11]),
        .R(1'b0));
  FDRE \ch2_reg[incoming_sample][12] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch2[from_ac] [14]),
        .Q(\ch2_reg[incoming_sample][15]_0 [12]),
        .R(1'b0));
  FDRE \ch2_reg[incoming_sample][13] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch2[from_ac] [15]),
        .Q(\ch2_reg[incoming_sample][15]_0 [13]),
        .R(1'b0));
  FDRE \ch2_reg[incoming_sample][14] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch2[from_ac] [16]),
        .Q(\ch2_reg[incoming_sample][15]_0 [14]),
        .R(1'b0));
  FDRE \ch2_reg[incoming_sample][15] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch2[from_ac] [17]),
        .Q(\ch2_reg[incoming_sample][15]_0 [15]),
        .R(1'b0));
  FDRE \ch2_reg[incoming_sample][1] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch2[from_ac] [3]),
        .Q(\ch2_reg[incoming_sample][15]_0 [1]),
        .R(1'b0));
  FDRE \ch2_reg[incoming_sample][2] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch2[from_ac] [4]),
        .Q(\ch2_reg[incoming_sample][15]_0 [2]),
        .R(1'b0));
  FDRE \ch2_reg[incoming_sample][3] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch2[from_ac] [5]),
        .Q(\ch2_reg[incoming_sample][15]_0 [3]),
        .R(1'b0));
  FDRE \ch2_reg[incoming_sample][4] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch2[from_ac] [6]),
        .Q(\ch2_reg[incoming_sample][15]_0 [4]),
        .R(1'b0));
  FDRE \ch2_reg[incoming_sample][5] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch2[from_ac] [7]),
        .Q(\ch2_reg[incoming_sample][15]_0 [5]),
        .R(1'b0));
  FDRE \ch2_reg[incoming_sample][6] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch2[from_ac] [8]),
        .Q(\ch2_reg[incoming_sample][15]_0 [6]),
        .R(1'b0));
  FDRE \ch2_reg[incoming_sample][7] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch2[from_ac] [9]),
        .Q(\ch2_reg[incoming_sample][15]_0 [7]),
        .R(1'b0));
  FDRE \ch2_reg[incoming_sample][8] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch2[from_ac] [10]),
        .Q(\ch2_reg[incoming_sample][15]_0 [8]),
        .R(1'b0));
  FDRE \ch2_reg[incoming_sample][9] 
       (.C(s00_axi_aclk),
        .CE(\ch1[incoming_sample] ),
        .D(\ch2[from_ac] [11]),
        .Q(\ch2_reg[incoming_sample][15]_0 [9]),
        .R(1'b0));
  FDRE \ch2_reg[to_ac][0] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch2[from_ac] [0]),
        .Q(\ch2_reg[to_ac_n_0_][0] ),
        .R(SR));
  FDRE \ch2_reg[to_ac][10] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch2[from_ac] [10]),
        .Q(\ch2_reg[to_ac_n_0_][10] ),
        .R(SR));
  FDRE \ch2_reg[to_ac][11] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch2[from_ac] [11]),
        .Q(\ch2_reg[to_ac_n_0_][11] ),
        .R(SR));
  FDRE \ch2_reg[to_ac][12] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch2[from_ac] [12]),
        .Q(\ch2_reg[to_ac_n_0_][12] ),
        .R(SR));
  FDRE \ch2_reg[to_ac][13] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch2[from_ac] [13]),
        .Q(\ch2_reg[to_ac_n_0_][13] ),
        .R(SR));
  FDRE \ch2_reg[to_ac][14] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch2[from_ac] [14]),
        .Q(\ch2_reg[to_ac_n_0_][14] ),
        .R(SR));
  FDRE \ch2_reg[to_ac][15] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch2[from_ac] [15]),
        .Q(\ch2_reg[to_ac_n_0_][15] ),
        .R(SR));
  FDRE \ch2_reg[to_ac][16] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch2[from_ac] [16]),
        .Q(\ch2_reg[to_ac_n_0_][16] ),
        .R(SR));
  FDRE \ch2_reg[to_ac][17] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch2[from_ac] [17]),
        .Q(\ch2_reg[to_ac_n_0_][17] ),
        .R(SR));
  FDRE \ch2_reg[to_ac][1] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch2[from_ac] [1]),
        .Q(\ch2_reg[to_ac_n_0_][1] ),
        .R(SR));
  FDRE \ch2_reg[to_ac][2] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch2[from_ac] [2]),
        .Q(\ch2_reg[to_ac_n_0_][2] ),
        .R(SR));
  FDRE \ch2_reg[to_ac][3] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch2[from_ac] [3]),
        .Q(\ch2_reg[to_ac_n_0_][3] ),
        .R(SR));
  FDRE \ch2_reg[to_ac][4] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch2[from_ac] [4]),
        .Q(\ch2_reg[to_ac_n_0_][4] ),
        .R(SR));
  FDRE \ch2_reg[to_ac][5] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch2[from_ac] [5]),
        .Q(\ch2_reg[to_ac_n_0_][5] ),
        .R(SR));
  FDRE \ch2_reg[to_ac][6] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch2[from_ac] [6]),
        .Q(\ch2_reg[to_ac_n_0_][6] ),
        .R(SR));
  FDRE \ch2_reg[to_ac][7] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch2[from_ac] [7]),
        .Q(\ch2_reg[to_ac_n_0_][7] ),
        .R(SR));
  FDRE \ch2_reg[to_ac][8] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch2[from_ac] [8]),
        .Q(\ch2_reg[to_ac_n_0_][8] ),
        .R(SR));
  FDRE \ch2_reg[to_ac][9] 
       (.C(s00_axi_aclk),
        .CE(sw[0]),
        .D(\ch2[from_ac] [9]),
        .Q(\ch2_reg[to_ac_n_0_][9] ),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flag_register flag_reg_inst
       (.SR(SR),
        .flagQ(flagQ),
        .process_Q_reg_0(Audio_Codec_n_5),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized1 leftChannelMemory
       (.ADDRBWRADDR(WRADDR),
        .CO(ch1_in_vgrid),
        .Q(Q),
        .S(video_inst_n_54),
        .SR(SR),
        .WREN(WREN),
        .out(RDADDR),
        .\position[row] (\position[row] [8:0]),
        .s00_axi_aclk(s00_axi_aclk),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_0 (\sdp_bl.ramb18_dp_bl.ram18_bl ),
        .switch(switch[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized2 rightChannelMemory
       (.ADDRBWRADDR(WRADDR),
        .CO(ch2_in_vgrid),
        .Q(RDADDR),
        .S(video_inst_n_44),
        .SR(SR),
        .WREN(WREN),
        .\dc_bias[2]_i_2 (ch1_in_vgrid),
        .\dc_bias[2]_i_2_0 (video_inst_n_38),
        .\dc_bias_reg[3]_i_7_0 (\position[row] [8:0]),
        .s00_axi_aclk(s00_axi_aclk),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_0 (\sdp_bl.ramb18_dp_bl.ram18_bl_0 ),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_1 (\ch2_reg[incoming_sample][15]_0 ),
        .switch(switch[2:0]),
        .switch_1_sp_1(rightChannelMemory_n_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trigger_detector trig_v_detect
       (.E(sw[0]),
        .Q(Q[15:7]),
        .S(trig_v_detect_n_0),
        .SR(SR),
        .\previous_sample_reg[8]_0 (previous_sample),
        .q(q[0]),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_numeric_stepper__parameterized0 trigt_stepper
       (.CO(\Inst_vga/inst_color_mapper/is_trigger_time318_in ),
        .DI({trigt_stepper_n_14,trigt_stepper_n_15}),
        .Q(RDADDR[9:1]),
        .S({trigt_stepper_n_10,trigt_stepper_n_11}),
        .SR(SR),
        .btn({btn[3],btn[1]}),
        .\dc_bias[3]_i_14 (\Inst_vga/inst_color_mapper/is_trigger_time421_in ),
        .\dc_bias[3]_i_14_0 (\Inst_vga/inst_color_mapper/is_trigger_time425_in ),
        .\dc_bias[3]_i_14_1 (\Inst_vga/inst_color_mapper/is_trigger_time524_in ),
        .\dc_bias[3]_i_14_2 (\position[row] [1:0]),
        .\dc_bias_reg[3]_i_18_0 (video_inst_n_47),
        .\dc_bias_reg[3]_i_18_1 (video_inst_n_37),
        .\dc_bias_reg[3]_i_22_0 (video_inst_n_46),
        .\dc_bias_reg[3]_i_22_1 (video_inst_n_45),
        .\dc_bias_reg[3]_i_34_0 ({video_inst_n_48,video_inst_n_49}),
        .\dc_bias_reg[3]_i_34_1 ({video_inst_n_52,video_inst_n_53}),
        .\processQ_reg[1] (trigt_stepper_n_27),
        .\processQ_reg[6] ({trigt_stepper_n_28,trigt_stepper_n_29}),
        .\processQ_reg[6]_0 ({trigt_stepper_n_47,trigt_stepper_n_48,trigt_stepper_n_49}),
        .\processQ_reg[7] ({trigt_stepper_n_17,trigt_stepper_n_18,trigt_stepper_n_19}),
        .\processQ_reg[7]_0 ({trigt_stepper_n_22,trigt_stepper_n_23,trigt_stepper_n_24}),
        .\processQ_reg[7]_1 ({trigt_stepper_n_35,trigt_stepper_n_36,trigt_stepper_n_37,trigt_stepper_n_38}),
        .\processQ_reg[9] (trigt_stepper_n_16),
        .\processQ_reg[9]_0 (trigt_stepper_n_21),
        .\processQ_reg[9]_1 (\Inst_vga/inst_color_mapper/is_trigger_time3 ),
        .\processQ_reg[9]_2 (trigt_stepper_n_26),
        .\processQ_reg[9]_3 (trigt_stepper_n_43),
        .\process_q_reg[10]_0 ({trigt_stepper_n_12,trigt_stepper_n_13}),
        .\process_q_reg[10]_1 ({trigt_stepper_n_41,trigt_stepper_n_42}),
        .\process_q_reg[7]_0 ({trigt_stepper_n_30,trigt_stepper_n_31}),
        .\process_q_reg[7]_1 ({trigt_stepper_n_32,trigt_stepper_n_33,trigt_stepper_n_34}),
        .\process_q_reg[7]_2 ({trigt_stepper_n_39,trigt_stepper_n_40}),
        .\process_q_reg[7]_3 ({trigt_stepper_n_44,trigt_stepper_n_45,trigt_stepper_n_46}),
        .\process_q_reg[9]_0 ({trigt_stepper_n_50,trigt_stepper_n_51}),
        .q(\process_q_reg[10] ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_numeric_stepper trigv_stepper
       (.CO(CO),
        .DI({trigv_stepper_n_17,trigv_stepper_n_18}),
        .Q(Q[15:7]),
        .S({trigv_stepper_n_10,trigv_stepper_n_11}),
        .SR(SR),
        .btn({btn[2],btn[0]}),
        .\dc_bias[3]_i_8 (\Inst_vga/inst_color_mapper/is_trigger_volt410_in ),
        .\dc_bias[3]_i_8_0 (\Inst_vga/inst_color_mapper/is_trigger_volt414_in ),
        .\dc_bias[3]_i_8_1 (\Inst_vga/inst_color_mapper/is_trigger_volt513_in ),
        .\dc_bias[3]_i_8_2 (RDADDR[1:0]),
        .\dc_bias[3]_i_8_3 (\Inst_vga/inst_color_mapper/is_trigger_volt4 ),
        .\dc_bias[3]_i_8_4 (\Inst_vga/inst_color_mapper/is_trigger_volt2 ),
        .\dc_bias_reg[3]_i_24_0 ({video_inst_n_42,video_inst_n_43}),
        .\dc_bias_reg[3]_i_24_1 ({video_inst_n_50,video_inst_n_51}),
        .\dc_bias_reg[3]_i_25_0 (video_inst_n_40),
        .\dc_bias_reg[3]_i_25_1 (video_inst_n_39),
        .\dc_bias_reg[3]_i_26_0 (video_inst_n_41),
        .\dc_bias_reg[3]_i_26_1 (video_inst_n_36),
        .i__i_1_0(previous_sample),
        .i__i_1_1(trig_v_detect_n_0),
        .\is_trigger_volt4_inferred__0/i__carry__0 (\position[row] [9:1]),
        .\processQ_reg[0] (trigv_stepper_n_28),
        .\processQ_reg[0]_0 (trigv_stepper_n_29),
        .\processQ_reg[6] ({trigv_stepper_n_30,trigv_stepper_n_31}),
        .\processQ_reg[6]_0 ({trigv_stepper_n_49,trigv_stepper_n_50,trigv_stepper_n_51}),
        .\processQ_reg[7] ({trigv_stepper_n_20,trigv_stepper_n_21,trigv_stepper_n_22}),
        .\processQ_reg[7]_0 ({trigv_stepper_n_24,trigv_stepper_n_25,trigv_stepper_n_26}),
        .\processQ_reg[7]_1 ({trigv_stepper_n_34,trigv_stepper_n_35,trigv_stepper_n_36,trigv_stepper_n_37}),
        .\processQ_reg[9] (trigv_stepper_n_19),
        .\processQ_reg[9]_0 (trigv_stepper_n_23),
        .\processQ_reg[9]_1 (trigv_stepper_n_27),
        .\processQ_reg[9]_2 (trigv_stepper_n_40),
        .\process_q_reg[10]_0 ({trigv_stepper_n_12,trigv_stepper_n_13}),
        .\process_q_reg[10]_1 (trigv_stepper_n_45),
        .\process_q_reg[7]_0 ({trigv_stepper_n_32,trigv_stepper_n_33}),
        .\process_q_reg[7]_1 ({trigv_stepper_n_38,trigv_stepper_n_39}),
        .\process_q_reg[7]_2 ({trigv_stepper_n_41,trigv_stepper_n_42,trigv_stepper_n_43}),
        .\process_q_reg[7]_3 ({trigv_stepper_n_46,trigv_stepper_n_47,trigv_stepper_n_48}),
        .\process_q_reg[7]_4 ({trigv_stepper_n_52,trigv_stepper_n_53}),
        .\process_q_reg[9]_0 (\process_q_reg[9] ),
        .\process_q_reg[9]_1 (trigv_stepper_n_44),
        .q(q),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video video_inst
       (.CO(ch1_in_vgrid),
        .DI({trigv_stepper_n_17,trigv_stepper_n_18}),
        .Q(RDADDR),
        .S({trigv_stepper_n_10,trigv_stepper_n_11}),
        .SR(SR),
        .\dc_bias[3]_i_13__0 (\process_q_reg[10] ),
        .\dc_bias[3]_i_13__0_0 ({trigt_stepper_n_41,trigt_stepper_n_42}),
        .\dc_bias[3]_i_14 (trigt_stepper_n_26),
        .\dc_bias[3]_i_14_0 ({trigt_stepper_n_50,trigt_stepper_n_51}),
        .\dc_bias[3]_i_15__0 (trigv_stepper_n_23),
        .\dc_bias[3]_i_15__0_0 ({trigv_stepper_n_12,trigv_stepper_n_13}),
        .\dc_bias[3]_i_15__0_1 (trigv_stepper_n_19),
        .\dc_bias[3]_i_15__0_2 ({trigv_stepper_n_32,trigv_stepper_n_33}),
        .\dc_bias[3]_i_15__0_3 (trigv_stepper_n_40),
        .\dc_bias[3]_i_16__0 (trigv_stepper_n_27),
        .\dc_bias[3]_i_16__0_0 ({trigv_stepper_n_52,trigv_stepper_n_53}),
        .\dc_bias[3]_i_16__0_1 (trigv_stepper_n_44),
        .\dc_bias[3]_i_16__0_2 (trigv_stepper_n_45),
        .\dc_bias[3]_i_2 (trigv_stepper_n_28),
        .\dc_bias[3]_i_23 (trigt_stepper_n_21),
        .\dc_bias[3]_i_23_0 ({trigt_stepper_n_12,trigt_stepper_n_13}),
        .\dc_bias[3]_i_23_1 (trigt_stepper_n_16),
        .\dc_bias[3]_i_23_2 ({trigt_stepper_n_30,trigt_stepper_n_31}),
        .\dc_bias[3]_i_23_3 (trigt_stepper_n_43),
        .\dc_bias[3]_i_23_4 ({trigt_stepper_n_10,trigt_stepper_n_11}),
        .\dc_bias[3]_i_2_0 (trigv_stepper_n_29),
        .\dc_bias[3]_i_8 (\Inst_vga/inst_color_mapper/is_trigger_time3 ),
        .\dc_bias[3]_i_8_0 (\Inst_vga/inst_color_mapper/is_trigger_time318_in ),
        .\dc_bias[3]_i_8_1 (trigt_stepper_n_27),
        .\encoded_reg[4] (ch2_in_vgrid),
        .\encoded_reg[8] (rightChannelMemory_n_1),
        .is_trigger_time2_carry__0({trigt_stepper_n_32,trigt_stepper_n_33,trigt_stepper_n_34}),
        .is_trigger_time4_carry__0({trigt_stepper_n_17,trigt_stepper_n_18,trigt_stepper_n_19}),
        .is_trigger_time4_carry__0_0({trigt_stepper_n_44,trigt_stepper_n_45,trigt_stepper_n_46}),
        .\is_trigger_time4_inferred__0/i__carry__0 ({trigt_stepper_n_22,trigt_stepper_n_23,trigt_stepper_n_24}),
        .\is_trigger_time4_inferred__0/i__carry__0_0 ({trigt_stepper_n_47,trigt_stepper_n_48,trigt_stepper_n_49}),
        .\is_trigger_time4_inferred__1/i__carry__0 ({trigt_stepper_n_35,trigt_stepper_n_36,trigt_stepper_n_37,trigt_stepper_n_38}),
        .\is_trigger_time4_inferred__1/i__carry__0_0 ({trigt_stepper_n_39,trigt_stepper_n_40}),
        .\is_trigger_time5_inferred__0/i__carry__0 ({trigt_stepper_n_14,trigt_stepper_n_15}),
        .\is_trigger_time5_inferred__0/i__carry__0_0 ({trigt_stepper_n_28,trigt_stepper_n_29}),
        .is_trigger_volt2_carry__0({trigv_stepper_n_41,trigv_stepper_n_42,trigv_stepper_n_43}),
        .is_trigger_volt4_carry__0({trigv_stepper_n_20,trigv_stepper_n_21,trigv_stepper_n_22}),
        .is_trigger_volt4_carry__0_0({trigv_stepper_n_46,trigv_stepper_n_47,trigv_stepper_n_48}),
        .\is_trigger_volt4_inferred__0/i__carry__0 ({trigv_stepper_n_24,trigv_stepper_n_25,trigv_stepper_n_26}),
        .\is_trigger_volt4_inferred__0/i__carry__0_0 ({trigv_stepper_n_49,trigv_stepper_n_50,trigv_stepper_n_51}),
        .\is_trigger_volt4_inferred__1/i__carry__0 ({trigv_stepper_n_34,trigv_stepper_n_35,trigv_stepper_n_36,trigv_stepper_n_37}),
        .\is_trigger_volt4_inferred__1/i__carry__0_0 ({trigv_stepper_n_38,trigv_stepper_n_39}),
        .\is_trigger_volt5_inferred__0/i__carry__0 ({trigv_stepper_n_30,trigv_stepper_n_31}),
        .lopt(lopt),
        .\processQ_reg[1] (video_inst_n_40),
        .\processQ_reg[1]_0 (video_inst_n_41),
        .\processQ_reg[1]_1 (video_inst_n_46),
        .\processQ_reg[1]_2 (video_inst_n_47),
        .\processQ_reg[2] ({video_inst_n_42,video_inst_n_43}),
        .\processQ_reg[2]_0 ({video_inst_n_48,video_inst_n_49}),
        .\processQ_reg[2]_1 ({video_inst_n_50,video_inst_n_51}),
        .\processQ_reg[2]_2 ({video_inst_n_52,video_inst_n_53}),
        .\processQ_reg[9] (\position[row] ),
        .\processQ_reg[9]_0 (\Inst_vga/inst_color_mapper/is_trigger_volt410_in ),
        .\processQ_reg[9]_1 (\Inst_vga/inst_color_mapper/is_trigger_volt4 ),
        .\processQ_reg[9]_2 (\Inst_vga/inst_color_mapper/is_trigger_volt513_in ),
        .\processQ_reg[9]_3 (\Inst_vga/inst_color_mapper/is_trigger_volt414_in ),
        .\processQ_reg[9]_4 (\Inst_vga/inst_color_mapper/is_trigger_time421_in ),
        .\processQ_reg[9]_5 (\Inst_vga/inst_color_mapper/is_trigger_time524_in ),
        .\processQ_reg[9]_6 (\Inst_vga/inst_color_mapper/is_trigger_time425_in ),
        .\processQ_reg[9]_7 (video_inst_n_38),
        .\processQ_reg[9]_8 (video_inst_n_44),
        .\processQ_reg[9]_9 (video_inst_n_54),
        .\process_q_reg[10] (\Inst_vga/inst_color_mapper/is_trigger_volt2 ),
        .\process_q_reg[1] (video_inst_n_36),
        .\process_q_reg[1]_0 (video_inst_n_37),
        .\process_q_reg[1]_1 (video_inst_n_39),
        .\process_q_reg[1]_2 (video_inst_n_45),
        .q(q),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .switch(switch[1:0]),
        .tmds(tmds),
        .tmdsb(tmdsb));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lab2_fsm
   (\FSM_onehot_state_reg[2]_0 ,
    SS,
    WREN,
    CO,
    \FSM_onehot_state_reg[2]_1 ,
    sw,
    Q,
    switch,
    SR,
    s00_axi_aclk);
  output \FSM_onehot_state_reg[2]_0 ;
  output [0:0]SS;
  output WREN;
  input [0:0]CO;
  input [0:0]\FSM_onehot_state_reg[2]_1 ;
  input [1:0]sw;
  input [0:0]Q;
  input [0:0]switch;
  input [0:0]SR;
  input s00_axi_aclk;

  wire [0:0]CO;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire [0:0]\FSM_onehot_state_reg[2]_1 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]SS;
  wire WREN;
  wire \__0/i__n_0 ;
  wire s00_axi_aclk;
  wire [1:0]sw;
  wire [0:0]switch;

  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_0 ),
        .I1(sw[1]),
        .I2(\__0/i__n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sw[1]),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .I3(\__0/i__n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EAAA0000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(CO),
        .I3(\FSM_onehot_state_reg[2]_1 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(sw[0]),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "store_samples:100,wait_for_trigger:001,wait_for_ready:010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "store_samples:100,wait_for_trigger:001,wait_for_ready:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "store_samples:100,wait_for_trigger:001,wait_for_ready:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg[2]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \__0/i_ 
       (.I0(\FSM_onehot_state_reg[2]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(CO),
        .I3(\FSM_onehot_state_reg[2]_1 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(sw[0]),
        .O(\__0/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \processQ[9]_i_1__5 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .O(SS));
  LUT3 #(
    .INIT(8'hB8)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_1__0 
       (.I0(Q),
        .I1(switch),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .O(WREN));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lec10
   (D,
    SS,
    Q,
    s00_axi_aresetn,
    s00_axi_aclk);
  output [3:0]D;
  output [0:0]SS;
  input [5:0]Q;
  input s00_axi_aresetn;
  input s00_axi_aclk;

  wire [3:0]D;
  wire \FSM_onehot_state[9]_i_2_n_0 ;
  wire \FSM_onehot_state[9]_i_3_n_0 ;
  wire \FSM_onehot_state[9]_i_4_n_0 ;
  wire [5:0]Q;
  wire [0:0]SS;
  wire [19:1]plusOp;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire [19:0]processQ;
  wire \processQ[19]_i_1_n_0 ;
  wire \processQ_reg_n_0_[0] ;
  wire \processQ_reg_n_0_[10] ;
  wire \processQ_reg_n_0_[11] ;
  wire \processQ_reg_n_0_[12] ;
  wire \processQ_reg_n_0_[13] ;
  wire \processQ_reg_n_0_[14] ;
  wire \processQ_reg_n_0_[15] ;
  wire \processQ_reg_n_0_[16] ;
  wire \processQ_reg_n_0_[17] ;
  wire \processQ_reg_n_0_[18] ;
  wire \processQ_reg_n_0_[19] ;
  wire \processQ_reg_n_0_[1] ;
  wire \processQ_reg_n_0_[2] ;
  wire \processQ_reg_n_0_[3] ;
  wire \processQ_reg_n_0_[4] ;
  wire \processQ_reg_n_0_[5] ;
  wire \processQ_reg_n_0_[6] ;
  wire \processQ_reg_n_0_[7] ;
  wire \processQ_reg_n_0_[8] ;
  wire \processQ_reg_n_0_[9] ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [3:2]NLW_plusOp_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__3_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    BCLK_int_i_1
       (.I0(s00_axi_aresetn),
        .O(SS));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[9]_i_2_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[9]_i_2_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(Q[4]),
        .I1(\FSM_onehot_state[9]_i_2_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(Q[4]),
        .I1(\FSM_onehot_state[9]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \FSM_onehot_state[9]_i_2 
       (.I0(\processQ_reg_n_0_[19] ),
        .I1(\processQ_reg_n_0_[16] ),
        .I2(\processQ_reg_n_0_[18] ),
        .I3(\processQ_reg_n_0_[17] ),
        .I4(\FSM_onehot_state[9]_i_3_n_0 ),
        .I5(\processQ_reg_n_0_[15] ),
        .O(\FSM_onehot_state[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A888)) 
    \FSM_onehot_state[9]_i_3 
       (.I0(\processQ_reg_n_0_[14] ),
        .I1(\FSM_onehot_state[9]_i_4_n_0 ),
        .I2(\processQ_reg_n_0_[9] ),
        .I3(\processQ_reg_n_0_[7] ),
        .I4(\processQ_reg_n_0_[6] ),
        .I5(\processQ_reg_n_0_[8] ),
        .O(\FSM_onehot_state[9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[9]_i_4 
       (.I0(\processQ_reg_n_0_[10] ),
        .I1(\processQ_reg_n_0_[13] ),
        .I2(\processQ_reg_n_0_[11] ),
        .I3(\processQ_reg_n_0_[12] ),
        .O(\FSM_onehot_state[9]_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\processQ_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S({\processQ_reg_n_0_[4] ,\processQ_reg_n_0_[3] ,\processQ_reg_n_0_[2] ,\processQ_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S({\processQ_reg_n_0_[8] ,\processQ_reg_n_0_[7] ,\processQ_reg_n_0_[6] ,\processQ_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S({\processQ_reg_n_0_[12] ,\processQ_reg_n_0_[11] ,\processQ_reg_n_0_[10] ,\processQ_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:13]),
        .S({\processQ_reg_n_0_[16] ,\processQ_reg_n_0_[15] ,\processQ_reg_n_0_[14] ,\processQ_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({NLW_plusOp_carry__3_CO_UNCONNECTED[3:2],plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__3_O_UNCONNECTED[3],plusOp[19:17]}),
        .S({1'b0,\processQ_reg_n_0_[19] ,\processQ_reg_n_0_[18] ,\processQ_reg_n_0_[17] }));
  LUT5 #(
    .INIT(32'h01010100)) 
    \processQ[0]_i_1__0 
       (.I0(\processQ_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[0]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[10]_i_1 
       (.I0(plusOp[10]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[10]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[11]_i_1 
       (.I0(plusOp[11]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[11]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[12]_i_1 
       (.I0(plusOp[12]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[12]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[13]_i_1 
       (.I0(plusOp[13]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[13]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[14]_i_1 
       (.I0(plusOp[14]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[14]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[15]_i_1 
       (.I0(plusOp[15]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[15]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[16]_i_1 
       (.I0(plusOp[16]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[16]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[17]_i_1 
       (.I0(plusOp[17]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[17]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[18]_i_1 
       (.I0(plusOp[18]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[18]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \processQ[19]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[3]),
        .O(\processQ[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[19]_i_2 
       (.I0(plusOp[19]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[19]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[1]_i_1__0 
       (.I0(plusOp[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[1]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[2]_i_1__0 
       (.I0(plusOp[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[2]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[3]_i_1__0 
       (.I0(plusOp[3]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[3]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[4]_i_1__0 
       (.I0(plusOp[4]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[4]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[5]_i_1__0 
       (.I0(plusOp[5]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[5]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[6]_i_1__0 
       (.I0(plusOp[6]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[6]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[7]_i_1__0 
       (.I0(plusOp[7]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[7]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[8]_i_1__0 
       (.I0(plusOp[8]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[8]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[9]_i_1 
       (.I0(plusOp[9]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[9]));
  FDRE \processQ_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[0]),
        .Q(\processQ_reg_n_0_[0] ),
        .R(SS));
  FDRE \processQ_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[10]),
        .Q(\processQ_reg_n_0_[10] ),
        .R(SS));
  FDRE \processQ_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[11]),
        .Q(\processQ_reg_n_0_[11] ),
        .R(SS));
  FDRE \processQ_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[12]),
        .Q(\processQ_reg_n_0_[12] ),
        .R(SS));
  FDRE \processQ_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[13]),
        .Q(\processQ_reg_n_0_[13] ),
        .R(SS));
  FDRE \processQ_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[14]),
        .Q(\processQ_reg_n_0_[14] ),
        .R(SS));
  FDRE \processQ_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[15]),
        .Q(\processQ_reg_n_0_[15] ),
        .R(SS));
  FDRE \processQ_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[16]),
        .Q(\processQ_reg_n_0_[16] ),
        .R(SS));
  FDRE \processQ_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[17]),
        .Q(\processQ_reg_n_0_[17] ),
        .R(SS));
  FDRE \processQ_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[18]),
        .Q(\processQ_reg_n_0_[18] ),
        .R(SS));
  FDRE \processQ_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[19]),
        .Q(\processQ_reg_n_0_[19] ),
        .R(SS));
  FDRE \processQ_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[1]),
        .Q(\processQ_reg_n_0_[1] ),
        .R(SS));
  FDRE \processQ_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[2]),
        .Q(\processQ_reg_n_0_[2] ),
        .R(SS));
  FDRE \processQ_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[3]),
        .Q(\processQ_reg_n_0_[3] ),
        .R(SS));
  FDRE \processQ_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[4]),
        .Q(\processQ_reg_n_0_[4] ),
        .R(SS));
  FDRE \processQ_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[5]),
        .Q(\processQ_reg_n_0_[5] ),
        .R(SS));
  FDRE \processQ_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[6]),
        .Q(\processQ_reg_n_0_[6] ),
        .R(SS));
  FDRE \processQ_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[7]),
        .Q(\processQ_reg_n_0_[7] ),
        .R(SS));
  FDRE \processQ_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[8]),
        .Q(\processQ_reg_n_0_[8] ),
        .R(SS));
  FDRE \processQ_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1_n_0 ),
        .D(processQ[9]),
        .Q(\processQ_reg_n_0_[9] ),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "lec10" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lec10_3
   (D,
    Q,
    SS,
    s00_axi_aclk);
  output [3:0]D;
  input [5:0]Q;
  input [0:0]SS;
  input s00_axi_aclk;

  wire [3:0]D;
  wire \FSM_onehot_state[9]_i_2__0_n_0 ;
  wire \FSM_onehot_state[9]_i_3__0_n_0 ;
  wire \FSM_onehot_state[9]_i_4__0_n_0 ;
  wire [5:0]Q;
  wire [0:0]SS;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__1_n_4;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__2_n_4;
  wire plusOp_carry__2_n_5;
  wire plusOp_carry__2_n_6;
  wire plusOp_carry__2_n_7;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__3_n_5;
  wire plusOp_carry__3_n_6;
  wire plusOp_carry__3_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire \processQ[0]_i_1__1_n_0 ;
  wire \processQ[10]_i_1__0_n_0 ;
  wire \processQ[11]_i_1__0_n_0 ;
  wire \processQ[12]_i_1__0_n_0 ;
  wire \processQ[13]_i_1__0_n_0 ;
  wire \processQ[14]_i_1__0_n_0 ;
  wire \processQ[15]_i_1__0_n_0 ;
  wire \processQ[16]_i_1__0_n_0 ;
  wire \processQ[17]_i_1__0_n_0 ;
  wire \processQ[18]_i_1__0_n_0 ;
  wire \processQ[19]_i_1__0_n_0 ;
  wire \processQ[19]_i_2__0_n_0 ;
  wire \processQ[1]_i_1__1_n_0 ;
  wire \processQ[2]_i_1__1_n_0 ;
  wire \processQ[3]_i_1__1_n_0 ;
  wire \processQ[4]_i_1__1_n_0 ;
  wire \processQ[5]_i_1__1_n_0 ;
  wire \processQ[6]_i_1__1_n_0 ;
  wire \processQ[7]_i_1__1_n_0 ;
  wire \processQ[8]_i_1__1_n_0 ;
  wire \processQ[9]_i_1__0_n_0 ;
  wire \processQ_reg_n_0_[0] ;
  wire \processQ_reg_n_0_[10] ;
  wire \processQ_reg_n_0_[11] ;
  wire \processQ_reg_n_0_[12] ;
  wire \processQ_reg_n_0_[13] ;
  wire \processQ_reg_n_0_[14] ;
  wire \processQ_reg_n_0_[15] ;
  wire \processQ_reg_n_0_[16] ;
  wire \processQ_reg_n_0_[17] ;
  wire \processQ_reg_n_0_[18] ;
  wire \processQ_reg_n_0_[19] ;
  wire \processQ_reg_n_0_[1] ;
  wire \processQ_reg_n_0_[2] ;
  wire \processQ_reg_n_0_[3] ;
  wire \processQ_reg_n_0_[4] ;
  wire \processQ_reg_n_0_[5] ;
  wire \processQ_reg_n_0_[6] ;
  wire \processQ_reg_n_0_[7] ;
  wire \processQ_reg_n_0_[8] ;
  wire \processQ_reg_n_0_[9] ;
  wire s00_axi_aclk;
  wire [3:2]NLW_plusOp_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__3_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[4]_i_1__0 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[9]_i_2__0_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[5]_i_1__0 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[9]_i_2__0_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[8]_i_1__0 
       (.I0(Q[4]),
        .I1(\FSM_onehot_state[9]_i_2__0_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[9]_i_1__0 
       (.I0(Q[4]),
        .I1(\FSM_onehot_state[9]_i_2__0_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \FSM_onehot_state[9]_i_2__0 
       (.I0(\processQ_reg_n_0_[18] ),
        .I1(\processQ_reg_n_0_[17] ),
        .I2(\processQ_reg_n_0_[19] ),
        .I3(\processQ_reg_n_0_[16] ),
        .I4(\FSM_onehot_state[9]_i_3__0_n_0 ),
        .I5(\processQ_reg_n_0_[15] ),
        .O(\FSM_onehot_state[9]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A888)) 
    \FSM_onehot_state[9]_i_3__0 
       (.I0(\processQ_reg_n_0_[14] ),
        .I1(\FSM_onehot_state[9]_i_4__0_n_0 ),
        .I2(\processQ_reg_n_0_[9] ),
        .I3(\processQ_reg_n_0_[7] ),
        .I4(\processQ_reg_n_0_[6] ),
        .I5(\processQ_reg_n_0_[8] ),
        .O(\FSM_onehot_state[9]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[9]_i_4__0 
       (.I0(\processQ_reg_n_0_[11] ),
        .I1(\processQ_reg_n_0_[12] ),
        .I2(\processQ_reg_n_0_[10] ),
        .I3(\processQ_reg_n_0_[13] ),
        .O(\FSM_onehot_state[9]_i_4__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\processQ_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .S({\processQ_reg_n_0_[4] ,\processQ_reg_n_0_[3] ,\processQ_reg_n_0_[2] ,\processQ_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .S({\processQ_reg_n_0_[8] ,\processQ_reg_n_0_[7] ,\processQ_reg_n_0_[6] ,\processQ_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__1_n_4,plusOp_carry__1_n_5,plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .S({\processQ_reg_n_0_[12] ,\processQ_reg_n_0_[11] ,\processQ_reg_n_0_[10] ,\processQ_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__2_n_4,plusOp_carry__2_n_5,plusOp_carry__2_n_6,plusOp_carry__2_n_7}),
        .S({\processQ_reg_n_0_[16] ,\processQ_reg_n_0_[15] ,\processQ_reg_n_0_[14] ,\processQ_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({NLW_plusOp_carry__3_CO_UNCONNECTED[3:2],plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__3_O_UNCONNECTED[3],plusOp_carry__3_n_5,plusOp_carry__3_n_6,plusOp_carry__3_n_7}),
        .S({1'b0,\processQ_reg_n_0_[19] ,\processQ_reg_n_0_[18] ,\processQ_reg_n_0_[17] }));
  LUT5 #(
    .INIT(32'h01010100)) 
    \processQ[0]_i_1__1 
       (.I0(\processQ_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[10]_i_1__0 
       (.I0(plusOp_carry__1_n_6),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[10]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[11]_i_1__0 
       (.I0(plusOp_carry__1_n_5),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[11]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[12]_i_1__0 
       (.I0(plusOp_carry__1_n_4),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[12]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[13]_i_1__0 
       (.I0(plusOp_carry__2_n_7),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[13]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[14]_i_1__0 
       (.I0(plusOp_carry__2_n_6),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[14]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[15]_i_1__0 
       (.I0(plusOp_carry__2_n_5),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[15]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[16]_i_1__0 
       (.I0(plusOp_carry__2_n_4),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[16]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[17]_i_1__0 
       (.I0(plusOp_carry__3_n_7),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[17]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[18]_i_1__0 
       (.I0(plusOp_carry__3_n_6),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[18]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \processQ[19]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[3]),
        .O(\processQ[19]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[19]_i_2__0 
       (.I0(plusOp_carry__3_n_5),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[19]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[1]_i_1__1 
       (.I0(plusOp_carry_n_7),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[2]_i_1__1 
       (.I0(plusOp_carry_n_6),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[2]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[3]_i_1__1 
       (.I0(plusOp_carry_n_5),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[3]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[4]_i_1__1 
       (.I0(plusOp_carry_n_4),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[5]_i_1__1 
       (.I0(plusOp_carry__0_n_7),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[5]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[6]_i_1__1 
       (.I0(plusOp_carry__0_n_6),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[6]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[7]_i_1__1 
       (.I0(plusOp_carry__0_n_5),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[7]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[8]_i_1__1 
       (.I0(plusOp_carry__0_n_4),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[8]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[9]_i_1__0 
       (.I0(plusOp_carry__1_n_7),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[9]_i_1__0_n_0 ));
  FDRE \processQ_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[0]_i_1__1_n_0 ),
        .Q(\processQ_reg_n_0_[0] ),
        .R(SS));
  FDRE \processQ_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[10]_i_1__0_n_0 ),
        .Q(\processQ_reg_n_0_[10] ),
        .R(SS));
  FDRE \processQ_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[11]_i_1__0_n_0 ),
        .Q(\processQ_reg_n_0_[11] ),
        .R(SS));
  FDRE \processQ_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[12]_i_1__0_n_0 ),
        .Q(\processQ_reg_n_0_[12] ),
        .R(SS));
  FDRE \processQ_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[13]_i_1__0_n_0 ),
        .Q(\processQ_reg_n_0_[13] ),
        .R(SS));
  FDRE \processQ_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[14]_i_1__0_n_0 ),
        .Q(\processQ_reg_n_0_[14] ),
        .R(SS));
  FDRE \processQ_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[15]_i_1__0_n_0 ),
        .Q(\processQ_reg_n_0_[15] ),
        .R(SS));
  FDRE \processQ_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[16]_i_1__0_n_0 ),
        .Q(\processQ_reg_n_0_[16] ),
        .R(SS));
  FDRE \processQ_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[17]_i_1__0_n_0 ),
        .Q(\processQ_reg_n_0_[17] ),
        .R(SS));
  FDRE \processQ_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[18]_i_1__0_n_0 ),
        .Q(\processQ_reg_n_0_[18] ),
        .R(SS));
  FDRE \processQ_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[19]_i_2__0_n_0 ),
        .Q(\processQ_reg_n_0_[19] ),
        .R(SS));
  FDRE \processQ_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[1]_i_1__1_n_0 ),
        .Q(\processQ_reg_n_0_[1] ),
        .R(SS));
  FDRE \processQ_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[2]_i_1__1_n_0 ),
        .Q(\processQ_reg_n_0_[2] ),
        .R(SS));
  FDRE \processQ_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[3]_i_1__1_n_0 ),
        .Q(\processQ_reg_n_0_[3] ),
        .R(SS));
  FDRE \processQ_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[4]_i_1__1_n_0 ),
        .Q(\processQ_reg_n_0_[4] ),
        .R(SS));
  FDRE \processQ_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[5]_i_1__1_n_0 ),
        .Q(\processQ_reg_n_0_[5] ),
        .R(SS));
  FDRE \processQ_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[6]_i_1__1_n_0 ),
        .Q(\processQ_reg_n_0_[6] ),
        .R(SS));
  FDRE \processQ_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[7]_i_1__1_n_0 ),
        .Q(\processQ_reg_n_0_[7] ),
        .R(SS));
  FDRE \processQ_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[8]_i_1__1_n_0 ),
        .Q(\processQ_reg_n_0_[8] ),
        .R(SS));
  FDRE \processQ_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__0_n_0 ),
        .D(\processQ[9]_i_1__0_n_0 ),
        .Q(\processQ_reg_n_0_[9] ),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "lec10" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lec10_6
   (D,
    E,
    Q,
    SR,
    s00_axi_aclk);
  output [3:0]D;
  output [0:0]E;
  input [5:0]Q;
  input [0:0]SR;
  input s00_axi_aclk;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[9]_i_2__1_n_0 ;
  wire \FSM_onehot_state[9]_i_3__1_n_0 ;
  wire \FSM_onehot_state[9]_i_4__1_n_0 ;
  wire [5:0]Q;
  wire [0:0]SR;
  wire [19:1]plusOp;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire [19:0]processQ;
  wire \processQ_reg_n_0_[0] ;
  wire \processQ_reg_n_0_[10] ;
  wire \processQ_reg_n_0_[11] ;
  wire \processQ_reg_n_0_[12] ;
  wire \processQ_reg_n_0_[13] ;
  wire \processQ_reg_n_0_[14] ;
  wire \processQ_reg_n_0_[15] ;
  wire \processQ_reg_n_0_[16] ;
  wire \processQ_reg_n_0_[17] ;
  wire \processQ_reg_n_0_[18] ;
  wire \processQ_reg_n_0_[19] ;
  wire \processQ_reg_n_0_[1] ;
  wire \processQ_reg_n_0_[2] ;
  wire \processQ_reg_n_0_[3] ;
  wire \processQ_reg_n_0_[4] ;
  wire \processQ_reg_n_0_[5] ;
  wire \processQ_reg_n_0_[6] ;
  wire \processQ_reg_n_0_[7] ;
  wire \processQ_reg_n_0_[8] ;
  wire \processQ_reg_n_0_[9] ;
  wire s00_axi_aclk;
  wire [3:2]NLW_plusOp_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__3_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[4]_i_1__1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[9]_i_2__1_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[5]_i_1__1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[9]_i_2__1_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[8]_i_1__1 
       (.I0(Q[4]),
        .I1(\FSM_onehot_state[9]_i_2__1_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[9]_i_1__1 
       (.I0(Q[4]),
        .I1(\FSM_onehot_state[9]_i_2__1_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \FSM_onehot_state[9]_i_2__1 
       (.I0(\processQ_reg_n_0_[19] ),
        .I1(\processQ_reg_n_0_[16] ),
        .I2(\processQ_reg_n_0_[18] ),
        .I3(\processQ_reg_n_0_[17] ),
        .I4(\FSM_onehot_state[9]_i_3__1_n_0 ),
        .I5(\processQ_reg_n_0_[15] ),
        .O(\FSM_onehot_state[9]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A888)) 
    \FSM_onehot_state[9]_i_3__1 
       (.I0(\processQ_reg_n_0_[14] ),
        .I1(\FSM_onehot_state[9]_i_4__1_n_0 ),
        .I2(\processQ_reg_n_0_[9] ),
        .I3(\processQ_reg_n_0_[7] ),
        .I4(\processQ_reg_n_0_[6] ),
        .I5(\processQ_reg_n_0_[8] ),
        .O(\FSM_onehot_state[9]_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[9]_i_4__1 
       (.I0(\processQ_reg_n_0_[11] ),
        .I1(\processQ_reg_n_0_[12] ),
        .I2(\processQ_reg_n_0_[10] ),
        .I3(\processQ_reg_n_0_[13] ),
        .O(\FSM_onehot_state[9]_i_4__1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\processQ_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S({\processQ_reg_n_0_[4] ,\processQ_reg_n_0_[3] ,\processQ_reg_n_0_[2] ,\processQ_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S({\processQ_reg_n_0_[8] ,\processQ_reg_n_0_[7] ,\processQ_reg_n_0_[6] ,\processQ_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S({\processQ_reg_n_0_[12] ,\processQ_reg_n_0_[11] ,\processQ_reg_n_0_[10] ,\processQ_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:13]),
        .S({\processQ_reg_n_0_[16] ,\processQ_reg_n_0_[15] ,\processQ_reg_n_0_[14] ,\processQ_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({NLW_plusOp_carry__3_CO_UNCONNECTED[3:2],plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__3_O_UNCONNECTED[3],plusOp[19:17]}),
        .S({1'b0,\processQ_reg_n_0_[19] ,\processQ_reg_n_0_[18] ,\processQ_reg_n_0_[17] }));
  LUT5 #(
    .INIT(32'h01010100)) 
    \processQ[0]_i_1__2 
       (.I0(\processQ_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[0]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[10]_i_1__1 
       (.I0(plusOp[10]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[10]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[11]_i_1__1 
       (.I0(plusOp[11]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[11]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[12]_i_1__1 
       (.I0(plusOp[12]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[12]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[13]_i_1__1 
       (.I0(plusOp[13]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[13]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[14]_i_1__1 
       (.I0(plusOp[14]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[14]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[15]_i_1__1 
       (.I0(plusOp[15]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[15]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[16]_i_1__1 
       (.I0(plusOp[16]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[16]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[17]_i_1__1 
       (.I0(plusOp[17]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[17]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[18]_i_1__1 
       (.I0(plusOp[18]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[18]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \processQ[19]_i_1__1 
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(E));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[19]_i_2__1 
       (.I0(plusOp[19]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[19]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[1]_i_1__2 
       (.I0(plusOp[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[1]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[2]_i_1__2 
       (.I0(plusOp[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[2]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[3]_i_1__2 
       (.I0(plusOp[3]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[3]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[4]_i_1__2 
       (.I0(plusOp[4]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[4]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[5]_i_1__2 
       (.I0(plusOp[5]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[5]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[6]_i_1__2 
       (.I0(plusOp[6]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[6]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[7]_i_1__2 
       (.I0(plusOp[7]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[7]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[8]_i_1__2 
       (.I0(plusOp[8]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[8]));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[9]_i_1__1 
       (.I0(plusOp[9]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(processQ[9]));
  FDRE \processQ_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[0]),
        .Q(\processQ_reg_n_0_[0] ),
        .R(SR));
  FDRE \processQ_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[10]),
        .Q(\processQ_reg_n_0_[10] ),
        .R(SR));
  FDRE \processQ_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[11]),
        .Q(\processQ_reg_n_0_[11] ),
        .R(SR));
  FDRE \processQ_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[12]),
        .Q(\processQ_reg_n_0_[12] ),
        .R(SR));
  FDRE \processQ_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[13]),
        .Q(\processQ_reg_n_0_[13] ),
        .R(SR));
  FDRE \processQ_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[14]),
        .Q(\processQ_reg_n_0_[14] ),
        .R(SR));
  FDRE \processQ_reg[15] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[15]),
        .Q(\processQ_reg_n_0_[15] ),
        .R(SR));
  FDRE \processQ_reg[16] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[16]),
        .Q(\processQ_reg_n_0_[16] ),
        .R(SR));
  FDRE \processQ_reg[17] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[17]),
        .Q(\processQ_reg_n_0_[17] ),
        .R(SR));
  FDRE \processQ_reg[18] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[18]),
        .Q(\processQ_reg_n_0_[18] ),
        .R(SR));
  FDRE \processQ_reg[19] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[19]),
        .Q(\processQ_reg_n_0_[19] ),
        .R(SR));
  FDRE \processQ_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[1]),
        .Q(\processQ_reg_n_0_[1] ),
        .R(SR));
  FDRE \processQ_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[2]),
        .Q(\processQ_reg_n_0_[2] ),
        .R(SR));
  FDRE \processQ_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[3]),
        .Q(\processQ_reg_n_0_[3] ),
        .R(SR));
  FDRE \processQ_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[4]),
        .Q(\processQ_reg_n_0_[4] ),
        .R(SR));
  FDRE \processQ_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[5]),
        .Q(\processQ_reg_n_0_[5] ),
        .R(SR));
  FDRE \processQ_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[6]),
        .Q(\processQ_reg_n_0_[6] ),
        .R(SR));
  FDRE \processQ_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[7]),
        .Q(\processQ_reg_n_0_[7] ),
        .R(SR));
  FDRE \processQ_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[8]),
        .Q(\processQ_reg_n_0_[8] ),
        .R(SR));
  FDRE \processQ_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[9]),
        .Q(\processQ_reg_n_0_[9] ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "lec10" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lec10_7
   (D,
    Q,
    SR,
    s00_axi_aclk);
  output [3:0]D;
  input [5:0]Q;
  input [0:0]SR;
  input s00_axi_aclk;

  wire [3:0]D;
  wire \FSM_onehot_state[9]_i_2__2_n_0 ;
  wire \FSM_onehot_state[9]_i_3__2_n_0 ;
  wire \FSM_onehot_state[9]_i_4__2_n_0 ;
  wire [5:0]Q;
  wire [0:0]SR;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__1_n_4;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__2_n_4;
  wire plusOp_carry__2_n_5;
  wire plusOp_carry__2_n_6;
  wire plusOp_carry__2_n_7;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__3_n_5;
  wire plusOp_carry__3_n_6;
  wire plusOp_carry__3_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire \processQ[0]_i_1__3_n_0 ;
  wire \processQ[10]_i_1__2_n_0 ;
  wire \processQ[11]_i_1__2_n_0 ;
  wire \processQ[12]_i_1__2_n_0 ;
  wire \processQ[13]_i_1__2_n_0 ;
  wire \processQ[14]_i_1__2_n_0 ;
  wire \processQ[15]_i_1__2_n_0 ;
  wire \processQ[16]_i_1__2_n_0 ;
  wire \processQ[17]_i_1__2_n_0 ;
  wire \processQ[18]_i_1__2_n_0 ;
  wire \processQ[19]_i_1__2_n_0 ;
  wire \processQ[19]_i_2__2_n_0 ;
  wire \processQ[1]_i_1__3_n_0 ;
  wire \processQ[2]_i_1__3_n_0 ;
  wire \processQ[3]_i_1__3_n_0 ;
  wire \processQ[4]_i_1__3_n_0 ;
  wire \processQ[5]_i_1__3_n_0 ;
  wire \processQ[6]_i_1__3_n_0 ;
  wire \processQ[7]_i_1__3_n_0 ;
  wire \processQ[8]_i_1__3_n_0 ;
  wire \processQ[9]_i_1__2_n_0 ;
  wire \processQ_reg_n_0_[0] ;
  wire \processQ_reg_n_0_[10] ;
  wire \processQ_reg_n_0_[11] ;
  wire \processQ_reg_n_0_[12] ;
  wire \processQ_reg_n_0_[13] ;
  wire \processQ_reg_n_0_[14] ;
  wire \processQ_reg_n_0_[15] ;
  wire \processQ_reg_n_0_[16] ;
  wire \processQ_reg_n_0_[17] ;
  wire \processQ_reg_n_0_[18] ;
  wire \processQ_reg_n_0_[19] ;
  wire \processQ_reg_n_0_[1] ;
  wire \processQ_reg_n_0_[2] ;
  wire \processQ_reg_n_0_[3] ;
  wire \processQ_reg_n_0_[4] ;
  wire \processQ_reg_n_0_[5] ;
  wire \processQ_reg_n_0_[6] ;
  wire \processQ_reg_n_0_[7] ;
  wire \processQ_reg_n_0_[8] ;
  wire \processQ_reg_n_0_[9] ;
  wire s00_axi_aclk;
  wire [3:2]NLW_plusOp_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__3_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[4]_i_1__2 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[9]_i_2__2_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[5]_i_1__2 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[9]_i_2__2_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[8]_i_1__2 
       (.I0(Q[4]),
        .I1(\FSM_onehot_state[9]_i_2__2_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[9]_i_1__2 
       (.I0(Q[4]),
        .I1(\FSM_onehot_state[9]_i_2__2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \FSM_onehot_state[9]_i_2__2 
       (.I0(\processQ_reg_n_0_[19] ),
        .I1(\processQ_reg_n_0_[16] ),
        .I2(\processQ_reg_n_0_[18] ),
        .I3(\processQ_reg_n_0_[17] ),
        .I4(\FSM_onehot_state[9]_i_3__2_n_0 ),
        .I5(\processQ_reg_n_0_[15] ),
        .O(\FSM_onehot_state[9]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A888)) 
    \FSM_onehot_state[9]_i_3__2 
       (.I0(\processQ_reg_n_0_[14] ),
        .I1(\FSM_onehot_state[9]_i_4__2_n_0 ),
        .I2(\processQ_reg_n_0_[9] ),
        .I3(\processQ_reg_n_0_[7] ),
        .I4(\processQ_reg_n_0_[6] ),
        .I5(\processQ_reg_n_0_[8] ),
        .O(\FSM_onehot_state[9]_i_3__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[9]_i_4__2 
       (.I0(\processQ_reg_n_0_[11] ),
        .I1(\processQ_reg_n_0_[12] ),
        .I2(\processQ_reg_n_0_[10] ),
        .I3(\processQ_reg_n_0_[13] ),
        .O(\FSM_onehot_state[9]_i_4__2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\processQ_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .S({\processQ_reg_n_0_[4] ,\processQ_reg_n_0_[3] ,\processQ_reg_n_0_[2] ,\processQ_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .S({\processQ_reg_n_0_[8] ,\processQ_reg_n_0_[7] ,\processQ_reg_n_0_[6] ,\processQ_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__1_n_4,plusOp_carry__1_n_5,plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .S({\processQ_reg_n_0_[12] ,\processQ_reg_n_0_[11] ,\processQ_reg_n_0_[10] ,\processQ_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__2_n_4,plusOp_carry__2_n_5,plusOp_carry__2_n_6,plusOp_carry__2_n_7}),
        .S({\processQ_reg_n_0_[16] ,\processQ_reg_n_0_[15] ,\processQ_reg_n_0_[14] ,\processQ_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({NLW_plusOp_carry__3_CO_UNCONNECTED[3:2],plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__3_O_UNCONNECTED[3],plusOp_carry__3_n_5,plusOp_carry__3_n_6,plusOp_carry__3_n_7}),
        .S({1'b0,\processQ_reg_n_0_[19] ,\processQ_reg_n_0_[18] ,\processQ_reg_n_0_[17] }));
  LUT5 #(
    .INIT(32'h01010100)) 
    \processQ[0]_i_1__3 
       (.I0(\processQ_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[0]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[10]_i_1__2 
       (.I0(plusOp_carry__1_n_6),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[10]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[11]_i_1__2 
       (.I0(plusOp_carry__1_n_5),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[11]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[12]_i_1__2 
       (.I0(plusOp_carry__1_n_4),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[12]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[13]_i_1__2 
       (.I0(plusOp_carry__2_n_7),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[13]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[14]_i_1__2 
       (.I0(plusOp_carry__2_n_6),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[14]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[15]_i_1__2 
       (.I0(plusOp_carry__2_n_5),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[15]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[16]_i_1__2 
       (.I0(plusOp_carry__2_n_4),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[16]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[17]_i_1__2 
       (.I0(plusOp_carry__3_n_7),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[17]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[18]_i_1__2 
       (.I0(plusOp_carry__3_n_6),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[18]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \processQ[19]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[3]),
        .O(\processQ[19]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[19]_i_2__2 
       (.I0(plusOp_carry__3_n_5),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[19]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[1]_i_1__3 
       (.I0(plusOp_carry_n_7),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[1]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[2]_i_1__3 
       (.I0(plusOp_carry_n_6),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[2]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[3]_i_1__3 
       (.I0(plusOp_carry_n_5),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[3]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[4]_i_1__3 
       (.I0(plusOp_carry_n_4),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[4]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[5]_i_1__3 
       (.I0(plusOp_carry__0_n_7),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[5]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[6]_i_1__3 
       (.I0(plusOp_carry__0_n_6),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[6]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[7]_i_1__3 
       (.I0(plusOp_carry__0_n_5),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[7]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[8]_i_1__3 
       (.I0(plusOp_carry__0_n_4),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[8]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \processQ[9]_i_1__2 
       (.I0(plusOp_carry__1_n_7),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\processQ[9]_i_1__2_n_0 ));
  FDRE \processQ_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[0]_i_1__3_n_0 ),
        .Q(\processQ_reg_n_0_[0] ),
        .R(SR));
  FDRE \processQ_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[10]_i_1__2_n_0 ),
        .Q(\processQ_reg_n_0_[10] ),
        .R(SR));
  FDRE \processQ_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[11]_i_1__2_n_0 ),
        .Q(\processQ_reg_n_0_[11] ),
        .R(SR));
  FDRE \processQ_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[12]_i_1__2_n_0 ),
        .Q(\processQ_reg_n_0_[12] ),
        .R(SR));
  FDRE \processQ_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[13]_i_1__2_n_0 ),
        .Q(\processQ_reg_n_0_[13] ),
        .R(SR));
  FDRE \processQ_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[14]_i_1__2_n_0 ),
        .Q(\processQ_reg_n_0_[14] ),
        .R(SR));
  FDRE \processQ_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[15]_i_1__2_n_0 ),
        .Q(\processQ_reg_n_0_[15] ),
        .R(SR));
  FDRE \processQ_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[16]_i_1__2_n_0 ),
        .Q(\processQ_reg_n_0_[16] ),
        .R(SR));
  FDRE \processQ_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[17]_i_1__2_n_0 ),
        .Q(\processQ_reg_n_0_[17] ),
        .R(SR));
  FDRE \processQ_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[18]_i_1__2_n_0 ),
        .Q(\processQ_reg_n_0_[18] ),
        .R(SR));
  FDRE \processQ_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[19]_i_2__2_n_0 ),
        .Q(\processQ_reg_n_0_[19] ),
        .R(SR));
  FDRE \processQ_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[1]_i_1__3_n_0 ),
        .Q(\processQ_reg_n_0_[1] ),
        .R(SR));
  FDRE \processQ_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[2]_i_1__3_n_0 ),
        .Q(\processQ_reg_n_0_[2] ),
        .R(SR));
  FDRE \processQ_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[3]_i_1__3_n_0 ),
        .Q(\processQ_reg_n_0_[3] ),
        .R(SR));
  FDRE \processQ_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[4]_i_1__3_n_0 ),
        .Q(\processQ_reg_n_0_[4] ),
        .R(SR));
  FDRE \processQ_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[5]_i_1__3_n_0 ),
        .Q(\processQ_reg_n_0_[5] ),
        .R(SR));
  FDRE \processQ_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[6]_i_1__3_n_0 ),
        .Q(\processQ_reg_n_0_[6] ),
        .R(SR));
  FDRE \processQ_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[7]_i_1__3_n_0 ),
        .Q(\processQ_reg_n_0_[7] ),
        .R(SR));
  FDRE \processQ_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[8]_i_1__3_n_0 ),
        .Q(\processQ_reg_n_0_[8] ),
        .R(SR));
  FDRE \processQ_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\processQ[19]_i_1__2_n_0 ),
        .D(\processQ[9]_i_1__2_n_0 ),
        .Q(\processQ_reg_n_0_[9] ),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_numeric_stepper
   (q,
    S,
    \process_q_reg[10]_0 ,
    CO,
    \process_q_reg[9]_0 ,
    SR,
    DI,
    \processQ_reg[9] ,
    \processQ_reg[7] ,
    \processQ_reg[9]_0 ,
    \processQ_reg[7]_0 ,
    \processQ_reg[9]_1 ,
    \processQ_reg[0] ,
    \processQ_reg[0]_0 ,
    \processQ_reg[6] ,
    \process_q_reg[7]_0 ,
    \processQ_reg[7]_1 ,
    \process_q_reg[7]_1 ,
    \processQ_reg[9]_2 ,
    \process_q_reg[7]_2 ,
    \process_q_reg[9]_1 ,
    \process_q_reg[10]_1 ,
    \process_q_reg[7]_3 ,
    \processQ_reg[6]_0 ,
    \process_q_reg[7]_4 ,
    Q,
    i__i_1_0,
    i__i_1_1,
    s00_axi_aresetn,
    \dc_bias_reg[3]_i_24_0 ,
    \dc_bias_reg[3]_i_24_1 ,
    \dc_bias_reg[3]_i_25_0 ,
    \dc_bias_reg[3]_i_25_1 ,
    \dc_bias_reg[3]_i_26_0 ,
    \dc_bias_reg[3]_i_26_1 ,
    \is_trigger_volt4_inferred__0/i__carry__0 ,
    \dc_bias[3]_i_8 ,
    \dc_bias[3]_i_8_0 ,
    \dc_bias[3]_i_8_1 ,
    \dc_bias[3]_i_8_2 ,
    \dc_bias[3]_i_8_3 ,
    \dc_bias[3]_i_8_4 ,
    s00_axi_aclk,
    btn);
  output [9:0]q;
  output [1:0]S;
  output [1:0]\process_q_reg[10]_0 ;
  output [0:0]CO;
  output [0:0]\process_q_reg[9]_0 ;
  output [0:0]SR;
  output [1:0]DI;
  output [0:0]\processQ_reg[9] ;
  output [2:0]\processQ_reg[7] ;
  output [0:0]\processQ_reg[9]_0 ;
  output [2:0]\processQ_reg[7]_0 ;
  output [0:0]\processQ_reg[9]_1 ;
  output \processQ_reg[0] ;
  output \processQ_reg[0]_0 ;
  output [1:0]\processQ_reg[6] ;
  output [1:0]\process_q_reg[7]_0 ;
  output [3:0]\processQ_reg[7]_1 ;
  output [1:0]\process_q_reg[7]_1 ;
  output [0:0]\processQ_reg[9]_2 ;
  output [2:0]\process_q_reg[7]_2 ;
  output [0:0]\process_q_reg[9]_1 ;
  output [0:0]\process_q_reg[10]_1 ;
  output [2:0]\process_q_reg[7]_3 ;
  output [2:0]\processQ_reg[6]_0 ;
  output [1:0]\process_q_reg[7]_4 ;
  input [8:0]Q;
  input [7:0]i__i_1_0;
  input [0:0]i__i_1_1;
  input s00_axi_aresetn;
  input [1:0]\dc_bias_reg[3]_i_24_0 ;
  input [1:0]\dc_bias_reg[3]_i_24_1 ;
  input [0:0]\dc_bias_reg[3]_i_25_0 ;
  input [0:0]\dc_bias_reg[3]_i_25_1 ;
  input [0:0]\dc_bias_reg[3]_i_26_0 ;
  input [0:0]\dc_bias_reg[3]_i_26_1 ;
  input [8:0]\is_trigger_volt4_inferred__0/i__carry__0 ;
  input [0:0]\dc_bias[3]_i_8 ;
  input [0:0]\dc_bias[3]_i_8_0 ;
  input [0:0]\dc_bias[3]_i_8_1 ;
  input [1:0]\dc_bias[3]_i_8_2 ;
  input [0:0]\dc_bias[3]_i_8_3 ;
  input [0:0]\dc_bias[3]_i_8_4 ;
  input s00_axi_aclk;
  input [1:0]btn;

  wire [0:0]CO;
  wire [1:0]DI;
  wire [8:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire [1:0]btn;
  wire \dc_bias[3]_i_36_n_0 ;
  wire \dc_bias[3]_i_37_n_0 ;
  wire \dc_bias[3]_i_39_n_0 ;
  wire \dc_bias[3]_i_40_n_0 ;
  wire \dc_bias[3]_i_42_n_0 ;
  wire \dc_bias[3]_i_43_n_0 ;
  wire \dc_bias[3]_i_61_n_0 ;
  wire \dc_bias[3]_i_64_n_0 ;
  wire \dc_bias[3]_i_65_n_0 ;
  wire \dc_bias[3]_i_68_n_0 ;
  wire \dc_bias[3]_i_69_n_0 ;
  wire \dc_bias[3]_i_71_n_0 ;
  wire \dc_bias[3]_i_72_n_0 ;
  wire \dc_bias[3]_i_73_n_0 ;
  wire \dc_bias[3]_i_75_n_0 ;
  wire \dc_bias[3]_i_76_n_0 ;
  wire \dc_bias[3]_i_78_n_0 ;
  wire \dc_bias[3]_i_79_n_0 ;
  wire [0:0]\dc_bias[3]_i_8 ;
  wire \dc_bias[3]_i_80_n_0 ;
  wire [0:0]\dc_bias[3]_i_8_0 ;
  wire [0:0]\dc_bias[3]_i_8_1 ;
  wire [1:0]\dc_bias[3]_i_8_2 ;
  wire [0:0]\dc_bias[3]_i_8_3 ;
  wire [0:0]\dc_bias[3]_i_8_4 ;
  wire [1:0]\dc_bias_reg[3]_i_24_0 ;
  wire [1:0]\dc_bias_reg[3]_i_24_1 ;
  wire \dc_bias_reg[3]_i_24_n_3 ;
  wire [0:0]\dc_bias_reg[3]_i_25_0 ;
  wire [0:0]\dc_bias_reg[3]_i_25_1 ;
  wire \dc_bias_reg[3]_i_25_n_3 ;
  wire [0:0]\dc_bias_reg[3]_i_26_0 ;
  wire [0:0]\dc_bias_reg[3]_i_26_1 ;
  wire \dc_bias_reg[3]_i_26_n_3 ;
  wire \dc_bias_reg[3]_i_35_n_0 ;
  wire \dc_bias_reg[3]_i_35_n_1 ;
  wire \dc_bias_reg[3]_i_35_n_2 ;
  wire \dc_bias_reg[3]_i_35_n_3 ;
  wire \dc_bias_reg[3]_i_38_n_0 ;
  wire \dc_bias_reg[3]_i_38_n_1 ;
  wire \dc_bias_reg[3]_i_38_n_2 ;
  wire \dc_bias_reg[3]_i_38_n_3 ;
  wire \dc_bias_reg[3]_i_41_n_0 ;
  wire \dc_bias_reg[3]_i_41_n_1 ;
  wire \dc_bias_reg[3]_i_41_n_2 ;
  wire \dc_bias_reg[3]_i_41_n_3 ;
  wire debounced_up;
  wire down_button_debounce_inst_n_0;
  wire down_button_debounce_inst_n_1;
  wire down_button_debounce_inst_n_10;
  wire down_button_debounce_inst_n_11;
  wire down_button_debounce_inst_n_12;
  wire down_button_debounce_inst_n_2;
  wire down_button_debounce_inst_n_3;
  wire down_button_debounce_inst_n_4;
  wire down_button_debounce_inst_n_5;
  wire down_button_debounce_inst_n_6;
  wire down_button_debounce_inst_n_7;
  wire down_button_debounce_inst_n_8;
  wire down_button_debounce_inst_n_9;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry_i_10_n_0;
  wire i__carry_i_9_n_0;
  wire i__i_10_n_0;
  wire i__i_11_n_0;
  wire i__i_12_n_0;
  wire i__i_13_n_0;
  wire i__i_14_n_0;
  wire i__i_15_n_0;
  wire i__i_16_n_0;
  wire i__i_17_n_0;
  wire i__i_19_n_0;
  wire [7:0]i__i_1_0;
  wire [0:0]i__i_1_1;
  wire i__i_1_n_3;
  wire i__i_20_n_0;
  wire i__i_21_n_0;
  wire i__i_22_n_0;
  wire i__i_23_n_0;
  wire i__i_24_n_0;
  wire i__i_25_n_0;
  wire i__i_26_n_0;
  wire i__i_27_n_0;
  wire i__i_2_n_3;
  wire i__i_3_n_0;
  wire i__i_3_n_1;
  wire i__i_3_n_2;
  wire i__i_3_n_3;
  wire i__i_4_n_0;
  wire i__i_5_n_0;
  wire i__i_6_n_0;
  wire i__i_7_n_0;
  wire i__i_7_n_1;
  wire i__i_7_n_2;
  wire i__i_7_n_3;
  wire i__i_8_n_0;
  wire i__i_9_n_0;
  wire is_trigger_volt4_carry__0_i_4_n_0;
  wire is_trigger_volt4_carry_i_10_n_0;
  wire is_trigger_volt4_carry_i_9_n_0;
  wire [8:0]\is_trigger_volt4_inferred__0/i__carry__0 ;
  wire prev_down;
  wire prev_up_reg_n_0;
  wire \processQ_reg[0] ;
  wire \processQ_reg[0]_0 ;
  wire [1:0]\processQ_reg[6] ;
  wire [2:0]\processQ_reg[6]_0 ;
  wire [2:0]\processQ_reg[7] ;
  wire [2:0]\processQ_reg[7]_0 ;
  wire [3:0]\processQ_reg[7]_1 ;
  wire [0:0]\processQ_reg[9] ;
  wire [0:0]\processQ_reg[9]_0 ;
  wire [0:0]\processQ_reg[9]_1 ;
  wire [0:0]\processQ_reg[9]_2 ;
  wire \process_q[10]_i_10_n_0 ;
  wire \process_q[10]_i_5_n_0 ;
  wire \process_q[10]_i_6_n_0 ;
  wire \process_q[10]_i_7_n_0 ;
  wire \process_q[10]_i_8_n_0 ;
  wire \process_q[3]_i_4_n_0 ;
  wire \process_q[7]_i_2__0_n_0 ;
  wire \process_q[7]_i_3_n_0 ;
  wire \process_q[7]_i_4_n_0 ;
  wire [1:0]\process_q_reg[10]_0 ;
  wire [0:0]\process_q_reg[10]_1 ;
  wire [1:0]\process_q_reg[7]_0 ;
  wire [1:0]\process_q_reg[7]_1 ;
  wire [2:0]\process_q_reg[7]_2 ;
  wire [2:0]\process_q_reg[7]_3 ;
  wire [1:0]\process_q_reg[7]_4 ;
  wire [0:0]\process_q_reg[9]_0 ;
  wire [0:0]\process_q_reg[9]_1 ;
  wire [9:0]q;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \video_inst/Inst_vga/inst_color_mapper/is_trigger_volt3 ;
  wire \video_inst/Inst_vga/inst_color_mapper/is_trigger_volt37_in ;
  wire \video_inst/Inst_vga/inst_color_mapper/is_trigger_volt5 ;
  wire [3:2]\NLW_dc_bias_reg[3]_i_24_CO_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_24_O_UNCONNECTED ;
  wire [3:2]\NLW_dc_bias_reg[3]_i_25_CO_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_25_O_UNCONNECTED ;
  wire [3:2]\NLW_dc_bias_reg[3]_i_26_CO_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_26_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_35_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_38_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_41_O_UNCONNECTED ;
  wire [3:2]NLW_i__i_1_CO_UNCONNECTED;
  wire [3:0]NLW_i__i_1_O_UNCONNECTED;
  wire [3:2]NLW_i__i_2_CO_UNCONNECTED;
  wire [3:0]NLW_i__i_2_O_UNCONNECTED;
  wire [3:0]NLW_i__i_3_O_UNCONNECTED;
  wire [3:0]NLW_i__i_7_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000077770FFF)) 
    \dc_bias[3]_i_15__0 
       (.I0(\dc_bias[3]_i_8 ),
        .I1(\video_inst/Inst_vga/inst_color_mapper/is_trigger_volt5 ),
        .I2(\dc_bias[3]_i_8_0 ),
        .I3(\dc_bias[3]_i_8_1 ),
        .I4(\dc_bias[3]_i_8_2 [0]),
        .I5(\dc_bias[3]_i_8_2 [1]),
        .O(\processQ_reg[0] ));
  LUT6 #(
    .INIT(64'h0FFF777700000000)) 
    \dc_bias[3]_i_16__0 
       (.I0(\video_inst/Inst_vga/inst_color_mapper/is_trigger_volt37_in ),
        .I1(\dc_bias[3]_i_8_3 ),
        .I2(\dc_bias[3]_i_8_4 ),
        .I3(\video_inst/Inst_vga/inst_color_mapper/is_trigger_volt3 ),
        .I4(\dc_bias[3]_i_8_2 [0]),
        .I5(\dc_bias[3]_i_8_2 [1]),
        .O(\processQ_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h0004FFFB)) 
    \dc_bias[3]_i_36 
       (.I0(q[6]),
        .I1(i__carry__0_i_5_n_0),
        .I2(q[7]),
        .I3(q[8]),
        .I4(q[9]),
        .O(\dc_bias[3]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h8484428421211821)) 
    \dc_bias[3]_i_37 
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [7]),
        .I1(q[8]),
        .I2(q[7]),
        .I3(i__carry__0_i_5_n_0),
        .I4(q[6]),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [8]),
        .O(\dc_bias[3]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    \dc_bias[3]_i_39 
       (.I0(q[9]),
        .I1(q[0]),
        .I2(q[7]),
        .I3(is_trigger_volt4_carry__0_i_4_n_0),
        .I4(q[8]),
        .O(\dc_bias[3]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0990909060090909)) 
    \dc_bias[3]_i_40 
       (.I0(q[8]),
        .I1(\is_trigger_volt4_inferred__0/i__carry__0 [8]),
        .I2(q[7]),
        .I3(q[0]),
        .I4(is_trigger_volt4_carry__0_i_4_n_0),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [7]),
        .O(\dc_bias[3]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h00000004FFFFFFFB)) 
    \dc_bias[3]_i_42 
       (.I0(q[6]),
        .I1(i__carry__0_i_5_n_0),
        .I2(q[0]),
        .I3(q[7]),
        .I4(q[8]),
        .I5(q[9]),
        .O(\dc_bias[3]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h9006909009900909)) 
    \dc_bias[3]_i_43 
       (.I0(q[8]),
        .I1(\is_trigger_volt4_inferred__0/i__carry__0 [8]),
        .I2(q[7]),
        .I3(q[6]),
        .I4(i__carry__0_i_4_n_0),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [7]),
        .O(\dc_bias[3]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    \dc_bias[3]_i_61 
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [6]),
        .I1(i__carry_i_9_n_0),
        .I2(q[5]),
        .I3(q[6]),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [5]),
        .O(\dc_bias[3]_i_61_n_0 ));
  LUT5 #(
    .INIT(32'h42841821)) 
    \dc_bias[3]_i_64 
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [5]),
        .I1(q[6]),
        .I2(q[5]),
        .I3(i__carry_i_9_n_0),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [6]),
        .O(\dc_bias[3]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h8484844221212118)) 
    \dc_bias[3]_i_65 
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [3]),
        .I1(q[4]),
        .I2(q[3]),
        .I3(q[2]),
        .I4(q[1]),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [4]),
        .O(\dc_bias[3]_i_65_n_0 ));
  LUT5 #(
    .INIT(32'h15403D54)) 
    \dc_bias[3]_i_68 
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [4]),
        .I1(is_trigger_volt4_carry_i_10_n_0),
        .I2(q[3]),
        .I3(q[4]),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [3]),
        .O(\dc_bias[3]_i_68_n_0 ));
  LUT5 #(
    .INIT(32'h143F00D4)) 
    \dc_bias[3]_i_69 
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [1]),
        .I1(q[1]),
        .I2(q[0]),
        .I3(\is_trigger_volt4_inferred__0/i__carry__0 [2]),
        .I4(q[2]),
        .O(\dc_bias[3]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h0990909060090909)) 
    \dc_bias[3]_i_71 
       (.I0(q[6]),
        .I1(\is_trigger_volt4_inferred__0/i__carry__0 [6]),
        .I2(q[5]),
        .I3(q[0]),
        .I4(is_trigger_volt4_carry_i_9_n_0),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [5]),
        .O(\dc_bias[3]_i_71_n_0 ));
  LUT5 #(
    .INIT(32'h09906009)) 
    \dc_bias[3]_i_72 
       (.I0(q[4]),
        .I1(\is_trigger_volt4_inferred__0/i__carry__0 [4]),
        .I2(q[3]),
        .I3(is_trigger_volt4_carry_i_10_n_0),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [3]),
        .O(\dc_bias[3]_i_72_n_0 ));
  LUT5 #(
    .INIT(32'h09906009)) 
    \dc_bias[3]_i_73 
       (.I0(q[2]),
        .I1(\is_trigger_volt4_inferred__0/i__carry__0 [2]),
        .I2(q[0]),
        .I3(q[1]),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [1]),
        .O(\dc_bias[3]_i_73_n_0 ));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    \dc_bias[3]_i_75 
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [4]),
        .I1(i__carry_i_10_n_0),
        .I2(q[3]),
        .I3(q[4]),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [3]),
        .O(\dc_bias[3]_i_75_n_0 ));
  LUT5 #(
    .INIT(32'h2ABC02A8)) 
    \dc_bias[3]_i_76 
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [2]),
        .I1(q[0]),
        .I2(q[1]),
        .I3(q[2]),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [1]),
        .O(\dc_bias[3]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h8488424421221811)) 
    \dc_bias[3]_i_78 
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [5]),
        .I1(q[6]),
        .I2(q[0]),
        .I3(i__carry_i_9_n_0),
        .I4(q[5]),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [6]),
        .O(\dc_bias[3]_i_78_n_0 ));
  LUT5 #(
    .INIT(32'h42841821)) 
    \dc_bias[3]_i_79 
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [3]),
        .I1(q[4]),
        .I2(q[3]),
        .I3(i__carry_i_10_n_0),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [4]),
        .O(\dc_bias[3]_i_79_n_0 ));
  LUT5 #(
    .INIT(32'h84422118)) 
    \dc_bias[3]_i_80 
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [1]),
        .I1(q[2]),
        .I2(q[1]),
        .I3(q[0]),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [2]),
        .O(\dc_bias[3]_i_80_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_24 
       (.CI(\dc_bias_reg[3]_i_35_n_0 ),
        .CO({\NLW_dc_bias_reg[3]_i_24_CO_UNCONNECTED [3:2],\video_inst/Inst_vga/inst_color_mapper/is_trigger_volt5 ,\dc_bias_reg[3]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\processQ_reg[9] }),
        .O(\NLW_dc_bias_reg[3]_i_24_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\dc_bias[3]_i_36_n_0 ,\dc_bias[3]_i_37_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_25 
       (.CI(\dc_bias_reg[3]_i_38_n_0 ),
        .CO({\NLW_dc_bias_reg[3]_i_25_CO_UNCONNECTED [3:2],\video_inst/Inst_vga/inst_color_mapper/is_trigger_volt37_in ,\dc_bias_reg[3]_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,\processQ_reg[9]_0 }),
        .O(\NLW_dc_bias_reg[3]_i_25_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\dc_bias[3]_i_39_n_0 ,\dc_bias[3]_i_40_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_26 
       (.CI(\dc_bias_reg[3]_i_41_n_0 ),
        .CO({\NLW_dc_bias_reg[3]_i_26_CO_UNCONNECTED [3:2],\video_inst/Inst_vga/inst_color_mapper/is_trigger_volt3 ,\dc_bias_reg[3]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\processQ_reg[9]_1 }),
        .O(\NLW_dc_bias_reg[3]_i_26_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\dc_bias[3]_i_42_n_0 ,\dc_bias[3]_i_43_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_35 
       (.CI(1'b0),
        .CO({\dc_bias_reg[3]_i_35_n_0 ,\dc_bias_reg[3]_i_35_n_1 ,\dc_bias_reg[3]_i_35_n_2 ,\dc_bias_reg[3]_i_35_n_3 }),
        .CYINIT(1'b1),
        .DI({\dc_bias[3]_i_61_n_0 ,DI[0],\dc_bias_reg[3]_i_24_0 }),
        .O(\NLW_dc_bias_reg[3]_i_35_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_64_n_0 ,\dc_bias[3]_i_65_n_0 ,\dc_bias_reg[3]_i_24_1 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_38 
       (.CI(1'b0),
        .CO({\dc_bias_reg[3]_i_38_n_0 ,\dc_bias_reg[3]_i_38_n_1 ,\dc_bias_reg[3]_i_38_n_2 ,\dc_bias_reg[3]_i_38_n_3 }),
        .CYINIT(1'b1),
        .DI({\processQ_reg[7] [2],\dc_bias[3]_i_68_n_0 ,\dc_bias[3]_i_69_n_0 ,\dc_bias_reg[3]_i_25_0 }),
        .O(\NLW_dc_bias_reg[3]_i_38_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_71_n_0 ,\dc_bias[3]_i_72_n_0 ,\dc_bias[3]_i_73_n_0 ,\dc_bias_reg[3]_i_25_1 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_41 
       (.CI(1'b0),
        .CO({\dc_bias_reg[3]_i_41_n_0 ,\dc_bias_reg[3]_i_41_n_1 ,\dc_bias_reg[3]_i_41_n_2 ,\dc_bias_reg[3]_i_41_n_3 }),
        .CYINIT(1'b1),
        .DI({\processQ_reg[7]_0 [2],\dc_bias[3]_i_75_n_0 ,\dc_bias[3]_i_76_n_0 ,\dc_bias_reg[3]_i_26_0 }),
        .O(\NLW_dc_bias_reg[3]_i_41_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_78_n_0 ,\dc_bias[3]_i_79_n_0 ,\dc_bias[3]_i_80_n_0 ,\dc_bias_reg[3]_i_26_1 }));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_debounce down_button_debounce_inst
       (.D({down_button_debounce_inst_n_1,down_button_debounce_inst_n_2,down_button_debounce_inst_n_3,down_button_debounce_inst_n_4,down_button_debounce_inst_n_5,down_button_debounce_inst_n_6,down_button_debounce_inst_n_7,down_button_debounce_inst_n_8,down_button_debounce_inst_n_9,down_button_debounce_inst_n_10}),
        .E(down_button_debounce_inst_n_0),
        .Q(q),
        .S(\process_q[3]_i_4_n_0 ),
        .SS(SR),
        .btn(btn),
        .\btn[2] (down_button_debounce_inst_n_12),
        .btn_0_sp_1(down_button_debounce_inst_n_11),
        .prev_down(prev_down),
        .prev_up_reg(prev_up_reg_n_0),
        .\process_q[10]_i_4_0 (debounced_up),
        .\process_q_reg[10] ({\process_q[10]_i_5_n_0 ,\process_q[10]_i_6_n_0 ,\process_q[10]_i_7_n_0 }),
        .\process_q_reg[1] (\process_q[10]_i_8_n_0 ),
        .\process_q_reg[1]_0 (\process_q[10]_i_10_n_0 ),
        .\process_q_reg[7] ({\process_q[7]_i_2__0_n_0 ,\process_q[7]_i_3_n_0 ,\process_q[7]_i_4_n_0 }),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  LUT6 #(
    .INIT(64'h20AABACF0020AA8A)) 
    i__carry__0_i_1
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [8]),
        .I1(q[6]),
        .I2(i__carry__0_i_5_n_0),
        .I3(q[7]),
        .I4(q[8]),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [7]),
        .O(\processQ_reg[9] ));
  LUT6 #(
    .INIT(64'h20AABACF0020AA8A)) 
    i__carry__0_i_1__0
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [8]),
        .I1(q[6]),
        .I2(i__carry__0_i_4_n_0),
        .I3(q[7]),
        .I4(q[8]),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [7]),
        .O(\processQ_reg[9]_1 ));
  LUT5 #(
    .INIT(32'h15403D54)) 
    i__carry__0_i_1__1
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [8]),
        .I1(is_trigger_volt4_carry__0_i_4_n_0),
        .I2(q[7]),
        .I3(q[8]),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [7]),
        .O(\processQ_reg[9]_2 ));
  LUT5 #(
    .INIT(32'h0004FFFB)) 
    i__carry__0_i_2
       (.I0(q[6]),
        .I1(i__carry__0_i_5_n_0),
        .I2(q[7]),
        .I3(q[8]),
        .I4(q[9]),
        .O(\process_q_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'h00000004FFFFFFFB)) 
    i__carry__0_i_2__1
       (.I0(q[6]),
        .I1(i__carry__0_i_5_n_0),
        .I2(q[0]),
        .I3(q[7]),
        .I4(q[8]),
        .I5(q[9]),
        .O(\process_q_reg[7]_4 [1]));
  LUT4 #(
    .INIT(16'h9555)) 
    i__carry__0_i_2__3
       (.I0(q[9]),
        .I1(q[8]),
        .I2(is_trigger_volt4_carry__0_i_4_n_0),
        .I3(q[7]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h8484428421211821)) 
    i__carry__0_i_3
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [7]),
        .I1(q[8]),
        .I2(q[7]),
        .I3(i__carry__0_i_5_n_0),
        .I4(q[6]),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [8]),
        .O(\process_q_reg[7]_0 [0]));
  LUT5 #(
    .INIT(32'h09906009)) 
    i__carry__0_i_3__0
       (.I0(q[8]),
        .I1(\is_trigger_volt4_inferred__0/i__carry__0 [8]),
        .I2(q[7]),
        .I3(is_trigger_volt4_carry__0_i_4_n_0),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [7]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h9006909009900909)) 
    i__carry__0_i_3__3
       (.I0(q[8]),
        .I1(\is_trigger_volt4_inferred__0/i__carry__0 [8]),
        .I2(q[7]),
        .I3(q[6]),
        .I4(i__carry__0_i_4_n_0),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [7]),
        .O(\process_q_reg[7]_4 [0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    i__carry__0_i_4
       (.I0(q[5]),
        .I1(q[3]),
        .I2(q[2]),
        .I3(q[1]),
        .I4(q[4]),
        .I5(q[0]),
        .O(i__carry__0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    i__carry__0_i_5
       (.I0(q[4]),
        .I1(q[1]),
        .I2(q[2]),
        .I3(q[3]),
        .I4(q[5]),
        .O(i__carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    i__carry_i_1
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [6]),
        .I1(i__carry_i_9_n_0),
        .I2(q[5]),
        .I3(q[6]),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [5]),
        .O(DI[1]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_10
       (.I0(q[1]),
        .I1(q[0]),
        .I2(q[2]),
        .O(i__carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h22A2BBCB0020AA8A)) 
    i__carry_i_1__0
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [6]),
        .I1(q[5]),
        .I2(i__carry_i_9_n_0),
        .I3(q[0]),
        .I4(q[6]),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [5]),
        .O(\processQ_reg[7]_0 [2]));
  LUT5 #(
    .INIT(32'h15403D54)) 
    i__carry_i_1__1
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [6]),
        .I1(is_trigger_volt4_carry_i_9_n_0),
        .I2(q[5]),
        .I3(q[6]),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [5]),
        .O(\processQ_reg[7]_1 [3]));
  LUT6 #(
    .INIT(64'h02AAABFC0002AAA8)) 
    i__carry_i_2__0
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [4]),
        .I1(q[1]),
        .I2(q[2]),
        .I3(q[3]),
        .I4(q[4]),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [3]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h155540003FD55540)) 
    i__carry_i_2__1
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [4]),
        .I1(q[1]),
        .I2(q[2]),
        .I3(q[3]),
        .I4(q[4]),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [3]),
        .O(\processQ_reg[7]_1 [2]));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    i__carry_i_2__4
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [4]),
        .I1(i__carry_i_10_n_0),
        .I2(q[3]),
        .I3(q[4]),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [3]),
        .O(\processQ_reg[7]_0 [1]));
  LUT4 #(
    .INIT(16'h112B)) 
    i__carry_i_3__0
       (.I0(q[2]),
        .I1(\is_trigger_volt4_inferred__0/i__carry__0 [2]),
        .I2(\is_trigger_volt4_inferred__0/i__carry__0 [1]),
        .I3(q[1]),
        .O(\processQ_reg[7]_1 [1]));
  LUT5 #(
    .INIT(32'h2ABC02A8)) 
    i__carry_i_3__3
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [2]),
        .I1(q[0]),
        .I2(q[1]),
        .I3(q[2]),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [1]),
        .O(\processQ_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4__1
       (.I0(q[0]),
        .I1(\is_trigger_volt4_inferred__0/i__carry__0 [0]),
        .O(\processQ_reg[7]_1 [0]));
  LUT5 #(
    .INIT(32'h42841821)) 
    i__carry_i_5
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [5]),
        .I1(q[6]),
        .I2(q[5]),
        .I3(i__carry_i_9_n_0),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [6]),
        .O(\processQ_reg[6] [1]));
  LUT5 #(
    .INIT(32'h09906009)) 
    i__carry_i_5__0
       (.I0(q[6]),
        .I1(\is_trigger_volt4_inferred__0/i__carry__0 [6]),
        .I2(q[5]),
        .I3(is_trigger_volt4_carry_i_9_n_0),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [5]),
        .O(\process_q_reg[7]_1 [1]));
  LUT6 #(
    .INIT(64'h8488424421221811)) 
    i__carry_i_5__3
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [5]),
        .I1(q[6]),
        .I2(q[0]),
        .I3(i__carry_i_9_n_0),
        .I4(q[5]),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [6]),
        .O(\processQ_reg[6]_0 [2]));
  LUT6 #(
    .INIT(64'h8484844221212118)) 
    i__carry_i_6
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [3]),
        .I1(q[4]),
        .I2(q[3]),
        .I3(q[2]),
        .I4(q[1]),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [4]),
        .O(\processQ_reg[6] [0]));
  LUT6 #(
    .INIT(64'h0990909060090909)) 
    i__carry_i_6__0
       (.I0(q[4]),
        .I1(\is_trigger_volt4_inferred__0/i__carry__0 [4]),
        .I2(q[3]),
        .I3(q[1]),
        .I4(q[2]),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [3]),
        .O(\process_q_reg[7]_1 [0]));
  LUT5 #(
    .INIT(32'h42841821)) 
    i__carry_i_6__3
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [3]),
        .I1(q[4]),
        .I2(q[3]),
        .I3(i__carry_i_10_n_0),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [4]),
        .O(\processQ_reg[6]_0 [1]));
  LUT5 #(
    .INIT(32'h84422118)) 
    i__carry_i_7__3
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [1]),
        .I1(q[2]),
        .I2(q[1]),
        .I3(q[0]),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [2]),
        .O(\processQ_reg[6]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    i__carry_i_9
       (.I0(q[3]),
        .I1(q[2]),
        .I2(q[1]),
        .I3(q[4]),
        .O(i__carry_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 i__i_1
       (.CI(i__i_3_n_0),
        .CO({NLW_i__i_1_CO_UNCONNECTED[3:2],CO,i__i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,i__i_4_n_0}),
        .O(NLW_i__i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,i__i_5_n_0,i__i_6_n_0}));
  LUT6 #(
    .INIT(64'h8000000015556AAA)) 
    i__i_10
       (.I0(Q[8]),
        .I1(q[5]),
        .I2(i__i_19_n_0),
        .I3(q[6]),
        .I4(q[7]),
        .I5(q[8]),
        .O(i__i_10_n_0));
  LUT5 #(
    .INIT(32'h12221BB2)) 
    i__i_11
       (.I0(q[6]),
        .I1(i__i_1_0[6]),
        .I2(q[5]),
        .I3(i__i_19_n_0),
        .I4(i__i_1_0[5]),
        .O(i__i_11_n_0));
  LUT6 #(
    .INIT(64'h00001444D4443FFF)) 
    i__i_12
       (.I0(i__i_1_0[3]),
        .I1(q[3]),
        .I2(q[1]),
        .I3(q[2]),
        .I4(q[4]),
        .I5(i__i_1_0[4]),
        .O(i__i_12_n_0));
  LUT4 #(
    .INIT(16'h105B)) 
    i__i_13
       (.I0(q[1]),
        .I1(i__i_1_0[1]),
        .I2(q[2]),
        .I3(i__i_1_0[2]),
        .O(i__i_13_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__i_14
       (.I0(q[0]),
        .I1(i__i_1_0[0]),
        .O(i__i_14_n_0));
  LUT5 #(
    .INIT(32'h60061881)) 
    i__i_15
       (.I0(i__i_19_n_0),
        .I1(q[5]),
        .I2(q[6]),
        .I3(i__i_1_0[6]),
        .I4(i__i_1_0[5]),
        .O(i__i_15_n_0));
  LUT6 #(
    .INIT(64'h0078780080070780)) 
    i__i_16
       (.I0(q[2]),
        .I1(q[1]),
        .I2(q[3]),
        .I3(q[4]),
        .I4(i__i_1_0[4]),
        .I5(i__i_1_0[3]),
        .O(i__i_16_n_0));
  LUT4 #(
    .INIT(16'h0690)) 
    i__i_17
       (.I0(q[2]),
        .I1(i__i_1_0[2]),
        .I2(i__i_1_0[1]),
        .I3(q[1]),
        .O(i__i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    i__i_19
       (.I0(q[4]),
        .I1(q[3]),
        .I2(q[1]),
        .I3(q[2]),
        .O(i__i_19_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 i__i_2
       (.CI(i__i_7_n_0),
        .CO({NLW_i__i_2_CO_UNCONNECTED[3:2],\process_q_reg[9]_0 ,i__i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__i_8_n_0}),
        .O(NLW_i__i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,i__i_9_n_0,i__i_10_n_0}));
  LUT5 #(
    .INIT(32'h9F878100)) 
    i__i_20
       (.I0(q[5]),
        .I1(i__i_19_n_0),
        .I2(q[6]),
        .I3(Q[6]),
        .I4(Q[7]),
        .O(i__i_20_n_0));
  LUT6 #(
    .INIT(64'hD4A0A0E8A0E8A0E8)) 
    i__i_21
       (.I0(q[4]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(q[3]),
        .I4(q[1]),
        .I5(q[2]),
        .O(i__i_21_n_0));
  LUT4 #(
    .INIT(16'hC8B0)) 
    i__i_22
       (.I0(Q[2]),
        .I1(q[1]),
        .I2(Q[3]),
        .I3(q[2]),
        .O(i__i_22_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    i__i_23
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(q[0]),
        .O(i__i_23_n_0));
  LUT5 #(
    .INIT(32'h60061881)) 
    i__i_24
       (.I0(i__i_19_n_0),
        .I1(q[5]),
        .I2(q[6]),
        .I3(Q[7]),
        .I4(Q[6]),
        .O(i__i_24_n_0));
  LUT6 #(
    .INIT(64'h0660606090060606)) 
    i__i_25
       (.I0(Q[5]),
        .I1(q[4]),
        .I2(q[3]),
        .I3(q[1]),
        .I4(q[2]),
        .I5(Q[4]),
        .O(i__i_25_n_0));
  LUT4 #(
    .INIT(16'h4224)) 
    i__i_26
       (.I0(q[1]),
        .I1(Q[2]),
        .I2(q[2]),
        .I3(Q[3]),
        .O(i__i_26_n_0));
  LUT3 #(
    .INIT(8'h21)) 
    i__i_27
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(q[0]),
        .O(i__i_27_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 i__i_3
       (.CI(1'b0),
        .CO({i__i_3_n_0,i__i_3_n_1,i__i_3_n_2,i__i_3_n_3}),
        .CYINIT(1'b0),
        .DI({i__i_11_n_0,i__i_12_n_0,i__i_13_n_0,i__i_14_n_0}),
        .O(NLW_i__i_3_O_UNCONNECTED[3:0]),
        .S({i__i_15_n_0,i__i_16_n_0,i__i_17_n_0,i__i_1_1}));
  LUT6 #(
    .INIT(64'h3DDDDDDDDCCCCCCC)) 
    i__i_4
       (.I0(i__i_1_0[7]),
        .I1(q[8]),
        .I2(q[6]),
        .I3(i__i_19_n_0),
        .I4(q[5]),
        .I5(q[7]),
        .O(i__i_4_n_0));
  LUT6 #(
    .INIT(64'h800000007FFFFFFF)) 
    i__i_5
       (.I0(q[6]),
        .I1(i__i_19_n_0),
        .I2(q[5]),
        .I3(q[7]),
        .I4(q[8]),
        .I5(q[9]),
        .O(i__i_5_n_0));
  LUT6 #(
    .INIT(64'h400000002AAA9555)) 
    i__i_6
       (.I0(i__i_1_0[7]),
        .I1(q[5]),
        .I2(i__i_19_n_0),
        .I3(q[6]),
        .I4(q[7]),
        .I5(q[8]),
        .O(i__i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 i__i_7
       (.CI(1'b0),
        .CO({i__i_7_n_0,i__i_7_n_1,i__i_7_n_2,i__i_7_n_3}),
        .CYINIT(1'b1),
        .DI({i__i_20_n_0,i__i_21_n_0,i__i_22_n_0,i__i_23_n_0}),
        .O(NLW_i__i_7_O_UNCONNECTED[3:0]),
        .S({i__i_24_n_0,i__i_25_n_0,i__i_26_n_0,i__i_27_n_0}));
  LUT6 #(
    .INIT(64'h0000000081111111)) 
    i__i_8
       (.I0(q[8]),
        .I1(q[7]),
        .I2(q[6]),
        .I3(i__i_19_n_0),
        .I4(q[5]),
        .I5(Q[8]),
        .O(i__i_8_n_0));
  LUT6 #(
    .INIT(64'h800000007FFFFFFF)) 
    i__i_9
       (.I0(q[6]),
        .I1(i__i_19_n_0),
        .I2(q[5]),
        .I3(q[7]),
        .I4(q[8]),
        .I5(q[9]),
        .O(i__i_9_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    is_trigger_volt2_carry__0_i_1
       (.I0(q[8]),
        .I1(\is_trigger_volt4_inferred__0/i__carry__0 [8]),
        .I2(q[7]),
        .I3(\is_trigger_volt4_inferred__0/i__carry__0 [7]),
        .O(\process_q_reg[9]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    is_trigger_volt2_carry__0_i_2
       (.I0(q[9]),
        .O(\process_q_reg[10]_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    is_trigger_volt2_carry_i_5
       (.I0(q[6]),
        .I1(\is_trigger_volt4_inferred__0/i__carry__0 [6]),
        .I2(q[5]),
        .I3(\is_trigger_volt4_inferred__0/i__carry__0 [5]),
        .O(\process_q_reg[7]_2 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    is_trigger_volt2_carry_i_6
       (.I0(q[4]),
        .I1(\is_trigger_volt4_inferred__0/i__carry__0 [4]),
        .I2(q[3]),
        .I3(\is_trigger_volt4_inferred__0/i__carry__0 [3]),
        .O(\process_q_reg[7]_2 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    is_trigger_volt2_carry_i_7
       (.I0(q[1]),
        .I1(\is_trigger_volt4_inferred__0/i__carry__0 [1]),
        .I2(q[2]),
        .I3(\is_trigger_volt4_inferred__0/i__carry__0 [2]),
        .O(\process_q_reg[7]_2 [0]));
  LUT6 #(
    .INIT(64'h155540003FD55540)) 
    is_trigger_volt4_carry__0_i_1
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [8]),
        .I1(q[0]),
        .I2(is_trigger_volt4_carry__0_i_4_n_0),
        .I3(q[7]),
        .I4(q[8]),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [7]),
        .O(\processQ_reg[9]_0 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    is_trigger_volt4_carry__0_i_2
       (.I0(q[9]),
        .I1(q[0]),
        .I2(q[7]),
        .I3(is_trigger_volt4_carry__0_i_4_n_0),
        .I4(q[8]),
        .O(\process_q_reg[10]_0 [1]));
  LUT6 #(
    .INIT(64'h0990909060090909)) 
    is_trigger_volt4_carry__0_i_3
       (.I0(q[8]),
        .I1(\is_trigger_volt4_inferred__0/i__carry__0 [8]),
        .I2(q[7]),
        .I3(q[0]),
        .I4(is_trigger_volt4_carry__0_i_4_n_0),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [7]),
        .O(\process_q_reg[10]_0 [0]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    is_trigger_volt4_carry__0_i_4
       (.I0(q[5]),
        .I1(q[3]),
        .I2(q[2]),
        .I3(q[1]),
        .I4(q[4]),
        .I5(q[6]),
        .O(is_trigger_volt4_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h155540003DDD5444)) 
    is_trigger_volt4_carry_i_1
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [6]),
        .I1(q[5]),
        .I2(is_trigger_volt4_carry_i_9_n_0),
        .I3(q[0]),
        .I4(q[6]),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [5]),
        .O(\processQ_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h80)) 
    is_trigger_volt4_carry_i_10
       (.I0(q[0]),
        .I1(q[1]),
        .I2(q[2]),
        .O(is_trigger_volt4_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h15403D54)) 
    is_trigger_volt4_carry_i_2
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [4]),
        .I1(is_trigger_volt4_carry_i_10_n_0),
        .I2(q[3]),
        .I3(q[4]),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [3]),
        .O(\processQ_reg[7] [1]));
  LUT5 #(
    .INIT(32'h143F00D4)) 
    is_trigger_volt4_carry_i_3
       (.I0(\is_trigger_volt4_inferred__0/i__carry__0 [1]),
        .I1(q[1]),
        .I2(q[0]),
        .I3(\is_trigger_volt4_inferred__0/i__carry__0 [2]),
        .I4(q[2]),
        .O(\processQ_reg[7] [0]));
  LUT6 #(
    .INIT(64'h0990909060090909)) 
    is_trigger_volt4_carry_i_5
       (.I0(q[6]),
        .I1(\is_trigger_volt4_inferred__0/i__carry__0 [6]),
        .I2(q[5]),
        .I3(q[0]),
        .I4(is_trigger_volt4_carry_i_9_n_0),
        .I5(\is_trigger_volt4_inferred__0/i__carry__0 [5]),
        .O(\process_q_reg[7]_3 [2]));
  LUT5 #(
    .INIT(32'h09906009)) 
    is_trigger_volt4_carry_i_6
       (.I0(q[4]),
        .I1(\is_trigger_volt4_inferred__0/i__carry__0 [4]),
        .I2(q[3]),
        .I3(is_trigger_volt4_carry_i_10_n_0),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [3]),
        .O(\process_q_reg[7]_3 [1]));
  LUT5 #(
    .INIT(32'h09906009)) 
    is_trigger_volt4_carry_i_7
       (.I0(q[2]),
        .I1(\is_trigger_volt4_inferred__0/i__carry__0 [2]),
        .I2(q[0]),
        .I3(q[1]),
        .I4(\is_trigger_volt4_inferred__0/i__carry__0 [1]),
        .O(\process_q_reg[7]_3 [0]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    is_trigger_volt4_carry_i_9
       (.I0(q[3]),
        .I1(q[2]),
        .I2(q[1]),
        .I3(q[4]),
        .O(is_trigger_volt4_carry_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    prev_down_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(down_button_debounce_inst_n_11),
        .Q(prev_down),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    prev_up_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(down_button_debounce_inst_n_12),
        .Q(prev_up_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \process_q[10]_i_10 
       (.I0(q[4]),
        .I1(q[5]),
        .I2(q[7]),
        .I3(q[6]),
        .I4(q[8]),
        .O(\process_q[10]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \process_q[10]_i_5 
       (.I0(q[8]),
        .I1(q[9]),
        .O(\process_q[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \process_q[10]_i_6 
       (.I0(q[7]),
        .I1(q[8]),
        .O(\process_q[10]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \process_q[10]_i_7 
       (.I0(q[6]),
        .I1(q[7]),
        .O(\process_q[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF1FFFFFF)) 
    \process_q[10]_i_8 
       (.I0(q[4]),
        .I1(q[5]),
        .I2(q[9]),
        .I3(q[6]),
        .I4(q[7]),
        .O(\process_q[10]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \process_q[3]_i_4 
       (.I0(q[0]),
        .O(\process_q[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \process_q[7]_i_2__0 
       (.I0(q[5]),
        .I1(q[6]),
        .O(\process_q[7]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \process_q[7]_i_3 
       (.I0(q[4]),
        .I1(q[5]),
        .O(\process_q[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \process_q[7]_i_4 
       (.I0(q[3]),
        .I1(q[4]),
        .O(\process_q[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \process_q_reg[10] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_1),
        .Q(q[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \process_q_reg[1] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_10),
        .Q(q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b1)) 
    \process_q_reg[2] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_9),
        .Q(q[1]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \process_q_reg[3] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_8),
        .Q(q[2]),
        .S(SR));
  FDRE #(
    .INIT(1'b1)) 
    \process_q_reg[4] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_7),
        .Q(q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \process_q_reg[5] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_6),
        .Q(q[4]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \process_q_reg[6] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_5),
        .Q(q[5]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \process_q_reg[7] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_4),
        .Q(q[6]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \process_q_reg[8] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_3),
        .Q(q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \process_q_reg[9] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_2),
        .Q(q[8]),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_debounce_2 up_button_debounce_inst
       (.Q(debounced_up),
        .SS(SR),
        .btn(btn[1]),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
endmodule

(* ORIG_REF_NAME = "numeric_stepper" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_numeric_stepper__parameterized0
   (q,
    S,
    \process_q_reg[10]_0 ,
    DI,
    \processQ_reg[9] ,
    \processQ_reg[7] ,
    CO,
    \processQ_reg[9]_0 ,
    \processQ_reg[7]_0 ,
    \processQ_reg[9]_1 ,
    \processQ_reg[9]_2 ,
    \processQ_reg[1] ,
    \processQ_reg[6] ,
    \process_q_reg[7]_0 ,
    \process_q_reg[7]_1 ,
    \processQ_reg[7]_1 ,
    \process_q_reg[7]_2 ,
    \process_q_reg[10]_1 ,
    \processQ_reg[9]_3 ,
    \process_q_reg[7]_3 ,
    \processQ_reg[6]_0 ,
    \process_q_reg[9]_0 ,
    \dc_bias_reg[3]_i_34_0 ,
    \dc_bias_reg[3]_i_34_1 ,
    \dc_bias_reg[3]_i_22_0 ,
    \dc_bias_reg[3]_i_22_1 ,
    \dc_bias_reg[3]_i_18_0 ,
    \dc_bias_reg[3]_i_18_1 ,
    Q,
    \dc_bias[3]_i_14 ,
    \dc_bias[3]_i_14_0 ,
    \dc_bias[3]_i_14_1 ,
    \dc_bias[3]_i_14_2 ,
    SR,
    s00_axi_aclk,
    s00_axi_aresetn,
    btn);
  output [9:0]q;
  output [1:0]S;
  output [1:0]\process_q_reg[10]_0 ;
  output [1:0]DI;
  output [0:0]\processQ_reg[9] ;
  output [2:0]\processQ_reg[7] ;
  output [0:0]CO;
  output [0:0]\processQ_reg[9]_0 ;
  output [2:0]\processQ_reg[7]_0 ;
  output [0:0]\processQ_reg[9]_1 ;
  output [0:0]\processQ_reg[9]_2 ;
  output \processQ_reg[1] ;
  output [1:0]\processQ_reg[6] ;
  output [1:0]\process_q_reg[7]_0 ;
  output [2:0]\process_q_reg[7]_1 ;
  output [3:0]\processQ_reg[7]_1 ;
  output [1:0]\process_q_reg[7]_2 ;
  output [1:0]\process_q_reg[10]_1 ;
  output [0:0]\processQ_reg[9]_3 ;
  output [2:0]\process_q_reg[7]_3 ;
  output [2:0]\processQ_reg[6]_0 ;
  output [1:0]\process_q_reg[9]_0 ;
  input [1:0]\dc_bias_reg[3]_i_34_0 ;
  input [1:0]\dc_bias_reg[3]_i_34_1 ;
  input [0:0]\dc_bias_reg[3]_i_22_0 ;
  input [0:0]\dc_bias_reg[3]_i_22_1 ;
  input [0:0]\dc_bias_reg[3]_i_18_0 ;
  input [0:0]\dc_bias_reg[3]_i_18_1 ;
  input [8:0]Q;
  input [0:0]\dc_bias[3]_i_14 ;
  input [0:0]\dc_bias[3]_i_14_0 ;
  input [0:0]\dc_bias[3]_i_14_1 ;
  input [1:0]\dc_bias[3]_i_14_2 ;
  input [0:0]SR;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [1:0]btn;

  wire [0:0]CO;
  wire [1:0]DI;
  wire [8:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire [1:0]btn;
  wire [0:0]\dc_bias[3]_i_14 ;
  wire [0:0]\dc_bias[3]_i_14_0 ;
  wire [0:0]\dc_bias[3]_i_14_1 ;
  wire [1:0]\dc_bias[3]_i_14_2 ;
  wire \dc_bias[3]_i_29_n_0 ;
  wire \dc_bias[3]_i_30_n_0 ;
  wire \dc_bias[3]_i_32_n_0 ;
  wire \dc_bias[3]_i_33_n_0 ;
  wire \dc_bias[3]_i_44_n_0 ;
  wire \dc_bias[3]_i_45_n_0 ;
  wire \dc_bias[3]_i_47_n_0 ;
  wire \dc_bias[3]_i_48_n_0 ;
  wire \dc_bias[3]_i_49_n_0 ;
  wire \dc_bias[3]_i_51_n_0 ;
  wire \dc_bias[3]_i_52_n_0 ;
  wire \dc_bias[3]_i_54_n_0 ;
  wire \dc_bias[3]_i_55_n_0 ;
  wire \dc_bias[3]_i_56_n_0 ;
  wire \dc_bias[3]_i_59_n_0 ;
  wire \dc_bias[3]_i_60_n_0 ;
  wire \dc_bias[3]_i_82_n_0 ;
  wire \dc_bias[3]_i_85_n_0 ;
  wire \dc_bias[3]_i_86_n_0 ;
  wire [0:0]\dc_bias_reg[3]_i_18_0 ;
  wire [0:0]\dc_bias_reg[3]_i_18_1 ;
  wire \dc_bias_reg[3]_i_18_n_3 ;
  wire [0:0]\dc_bias_reg[3]_i_22_0 ;
  wire [0:0]\dc_bias_reg[3]_i_22_1 ;
  wire \dc_bias_reg[3]_i_22_n_3 ;
  wire \dc_bias_reg[3]_i_28_n_0 ;
  wire \dc_bias_reg[3]_i_28_n_1 ;
  wire \dc_bias_reg[3]_i_28_n_2 ;
  wire \dc_bias_reg[3]_i_28_n_3 ;
  wire \dc_bias_reg[3]_i_31_n_0 ;
  wire \dc_bias_reg[3]_i_31_n_1 ;
  wire \dc_bias_reg[3]_i_31_n_2 ;
  wire \dc_bias_reg[3]_i_31_n_3 ;
  wire [1:0]\dc_bias_reg[3]_i_34_0 ;
  wire [1:0]\dc_bias_reg[3]_i_34_1 ;
  wire \dc_bias_reg[3]_i_34_n_3 ;
  wire \dc_bias_reg[3]_i_58_n_0 ;
  wire \dc_bias_reg[3]_i_58_n_1 ;
  wire \dc_bias_reg[3]_i_58_n_2 ;
  wire \dc_bias_reg[3]_i_58_n_3 ;
  wire debounced_up;
  wire down_button_debounce_inst_n_0;
  wire down_button_debounce_inst_n_1;
  wire down_button_debounce_inst_n_10;
  wire down_button_debounce_inst_n_11;
  wire down_button_debounce_inst_n_12;
  wire down_button_debounce_inst_n_2;
  wire down_button_debounce_inst_n_3;
  wire down_button_debounce_inst_n_4;
  wire down_button_debounce_inst_n_5;
  wire down_button_debounce_inst_n_6;
  wire down_button_debounce_inst_n_7;
  wire down_button_debounce_inst_n_8;
  wire down_button_debounce_inst_n_9;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry_i_10__0_n_0;
  wire i__carry_i_9__0_n_0;
  wire is_trigger_time4_carry__0_i_4_n_0;
  wire is_trigger_time4_carry_i_10_n_0;
  wire is_trigger_time4_carry_i_9_n_0;
  wire prev_down;
  wire prev_up_reg_n_0;
  wire \processQ_reg[1] ;
  wire [1:0]\processQ_reg[6] ;
  wire [2:0]\processQ_reg[6]_0 ;
  wire [2:0]\processQ_reg[7] ;
  wire [2:0]\processQ_reg[7]_0 ;
  wire [3:0]\processQ_reg[7]_1 ;
  wire [0:0]\processQ_reg[9] ;
  wire [0:0]\processQ_reg[9]_0 ;
  wire [0:0]\processQ_reg[9]_1 ;
  wire [0:0]\processQ_reg[9]_2 ;
  wire [0:0]\processQ_reg[9]_3 ;
  wire \process_q[10]_i_10__0_n_0 ;
  wire \process_q[10]_i_5__0_n_0 ;
  wire \process_q[10]_i_6__0_n_0 ;
  wire \process_q[10]_i_7__0_n_0 ;
  wire \process_q[10]_i_8__0_n_0 ;
  wire \process_q[10]_i_9__0_n_0 ;
  wire \process_q[3]_i_4__0_n_0 ;
  wire \process_q[7]_i_2_n_0 ;
  wire \process_q[7]_i_3__0_n_0 ;
  wire \process_q[7]_i_4__0_n_0 ;
  wire \process_q[7]_i_5__0_n_0 ;
  wire [1:0]\process_q_reg[10]_0 ;
  wire [1:0]\process_q_reg[10]_1 ;
  wire [1:0]\process_q_reg[7]_0 ;
  wire [2:0]\process_q_reg[7]_1 ;
  wire [1:0]\process_q_reg[7]_2 ;
  wire [2:0]\process_q_reg[7]_3 ;
  wire [1:0]\process_q_reg[9]_0 ;
  wire [9:0]q;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \video_inst/Inst_vga/inst_color_mapper/is_trigger_time5 ;
  wire [3:2]\NLW_dc_bias_reg[3]_i_18_CO_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_18_O_UNCONNECTED ;
  wire [3:2]\NLW_dc_bias_reg[3]_i_22_CO_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_22_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_28_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_dc_bias_reg[3]_i_34_CO_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_34_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_58_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000777700000FFF)) 
    \dc_bias[3]_i_23 
       (.I0(\dc_bias[3]_i_14 ),
        .I1(\video_inst/Inst_vga/inst_color_mapper/is_trigger_time5 ),
        .I2(\dc_bias[3]_i_14_0 ),
        .I3(\dc_bias[3]_i_14_1 ),
        .I4(\dc_bias[3]_i_14_2 [1]),
        .I5(\dc_bias[3]_i_14_2 [0]),
        .O(\processQ_reg[1] ));
  LUT6 #(
    .INIT(64'h00000010FFFFFFEF)) 
    \dc_bias[3]_i_29 
       (.I0(q[8]),
        .I1(q[7]),
        .I2(i__carry__0_i_5__0_n_0),
        .I3(q[6]),
        .I4(q[0]),
        .I5(q[9]),
        .O(\dc_bias[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h9006909009900909)) 
    \dc_bias[3]_i_30 
       (.I0(q[8]),
        .I1(Q[8]),
        .I2(q[7]),
        .I3(q[6]),
        .I4(i__carry__0_i_4__0_n_0),
        .I5(Q[7]),
        .O(\dc_bias[3]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    \dc_bias[3]_i_32 
       (.I0(q[9]),
        .I1(q[0]),
        .I2(q[7]),
        .I3(is_trigger_time4_carry__0_i_4_n_0),
        .I4(q[8]),
        .O(\dc_bias[3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0990909060090909)) 
    \dc_bias[3]_i_33 
       (.I0(q[8]),
        .I1(Q[8]),
        .I2(q[7]),
        .I3(q[0]),
        .I4(is_trigger_time4_carry__0_i_4_n_0),
        .I5(Q[7]),
        .O(\dc_bias[3]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    \dc_bias[3]_i_44 
       (.I0(Q[4]),
        .I1(i__carry_i_10__0_n_0),
        .I2(q[3]),
        .I3(q[4]),
        .I4(Q[3]),
        .O(\dc_bias[3]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h2ABC02A8)) 
    \dc_bias[3]_i_45 
       (.I0(Q[2]),
        .I1(q[0]),
        .I2(q[1]),
        .I3(q[2]),
        .I4(Q[1]),
        .O(\dc_bias[3]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h8488424421221811)) 
    \dc_bias[3]_i_47 
       (.I0(Q[5]),
        .I1(q[6]),
        .I2(q[0]),
        .I3(i__carry_i_9__0_n_0),
        .I4(q[5]),
        .I5(Q[6]),
        .O(\dc_bias[3]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h42841821)) 
    \dc_bias[3]_i_48 
       (.I0(Q[3]),
        .I1(q[4]),
        .I2(q[3]),
        .I3(i__carry_i_10__0_n_0),
        .I4(Q[4]),
        .O(\dc_bias[3]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h84422118)) 
    \dc_bias[3]_i_49 
       (.I0(Q[1]),
        .I1(q[2]),
        .I2(q[1]),
        .I3(q[0]),
        .I4(Q[2]),
        .O(\dc_bias[3]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h15403D54)) 
    \dc_bias[3]_i_51 
       (.I0(Q[4]),
        .I1(is_trigger_time4_carry_i_10_n_0),
        .I2(q[3]),
        .I3(q[4]),
        .I4(Q[3]),
        .O(\dc_bias[3]_i_51_n_0 ));
  LUT5 #(
    .INIT(32'h143F00D4)) 
    \dc_bias[3]_i_52 
       (.I0(Q[1]),
        .I1(q[1]),
        .I2(q[0]),
        .I3(Q[2]),
        .I4(q[2]),
        .O(\dc_bias[3]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h0990909060090909)) 
    \dc_bias[3]_i_54 
       (.I0(q[6]),
        .I1(Q[6]),
        .I2(q[5]),
        .I3(q[0]),
        .I4(is_trigger_time4_carry_i_9_n_0),
        .I5(Q[5]),
        .O(\dc_bias[3]_i_54_n_0 ));
  LUT5 #(
    .INIT(32'h09906009)) 
    \dc_bias[3]_i_55 
       (.I0(q[4]),
        .I1(Q[4]),
        .I2(q[3]),
        .I3(is_trigger_time4_carry_i_10_n_0),
        .I4(Q[3]),
        .O(\dc_bias[3]_i_55_n_0 ));
  LUT5 #(
    .INIT(32'h09906009)) 
    \dc_bias[3]_i_56 
       (.I0(q[2]),
        .I1(Q[2]),
        .I2(q[0]),
        .I3(q[1]),
        .I4(Q[1]),
        .O(\dc_bias[3]_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h0004FFFB)) 
    \dc_bias[3]_i_59 
       (.I0(q[6]),
        .I1(i__carry__0_i_5__0_n_0),
        .I2(q[7]),
        .I3(q[8]),
        .I4(q[9]),
        .O(\dc_bias[3]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h8484428421211821)) 
    \dc_bias[3]_i_60 
       (.I0(Q[7]),
        .I1(q[8]),
        .I2(q[7]),
        .I3(i__carry__0_i_5__0_n_0),
        .I4(q[6]),
        .I5(Q[8]),
        .O(\dc_bias[3]_i_60_n_0 ));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    \dc_bias[3]_i_82 
       (.I0(Q[6]),
        .I1(i__carry_i_9__0_n_0),
        .I2(q[5]),
        .I3(q[6]),
        .I4(Q[5]),
        .O(\dc_bias[3]_i_82_n_0 ));
  LUT5 #(
    .INIT(32'h42841821)) 
    \dc_bias[3]_i_85 
       (.I0(Q[5]),
        .I1(q[6]),
        .I2(q[5]),
        .I3(i__carry_i_9__0_n_0),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h8484844221212118)) 
    \dc_bias[3]_i_86 
       (.I0(Q[3]),
        .I1(q[4]),
        .I2(q[3]),
        .I3(q[2]),
        .I4(q[1]),
        .I5(Q[4]),
        .O(\dc_bias[3]_i_86_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_18 
       (.CI(\dc_bias_reg[3]_i_28_n_0 ),
        .CO({\NLW_dc_bias_reg[3]_i_18_CO_UNCONNECTED [3:2],\processQ_reg[9]_1 ,\dc_bias_reg[3]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\processQ_reg[9]_2 }),
        .O(\NLW_dc_bias_reg[3]_i_18_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\dc_bias[3]_i_29_n_0 ,\dc_bias[3]_i_30_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_22 
       (.CI(\dc_bias_reg[3]_i_31_n_0 ),
        .CO({\NLW_dc_bias_reg[3]_i_22_CO_UNCONNECTED [3:2],CO,\dc_bias_reg[3]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,\processQ_reg[9]_0 }),
        .O(\NLW_dc_bias_reg[3]_i_22_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\dc_bias[3]_i_32_n_0 ,\dc_bias[3]_i_33_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_28 
       (.CI(1'b0),
        .CO({\dc_bias_reg[3]_i_28_n_0 ,\dc_bias_reg[3]_i_28_n_1 ,\dc_bias_reg[3]_i_28_n_2 ,\dc_bias_reg[3]_i_28_n_3 }),
        .CYINIT(1'b1),
        .DI({\processQ_reg[7]_0 [2],\dc_bias[3]_i_44_n_0 ,\dc_bias[3]_i_45_n_0 ,\dc_bias_reg[3]_i_18_0 }),
        .O(\NLW_dc_bias_reg[3]_i_28_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_47_n_0 ,\dc_bias[3]_i_48_n_0 ,\dc_bias[3]_i_49_n_0 ,\dc_bias_reg[3]_i_18_1 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_31 
       (.CI(1'b0),
        .CO({\dc_bias_reg[3]_i_31_n_0 ,\dc_bias_reg[3]_i_31_n_1 ,\dc_bias_reg[3]_i_31_n_2 ,\dc_bias_reg[3]_i_31_n_3 }),
        .CYINIT(1'b1),
        .DI({\processQ_reg[7] [2],\dc_bias[3]_i_51_n_0 ,\dc_bias[3]_i_52_n_0 ,\dc_bias_reg[3]_i_22_0 }),
        .O(\NLW_dc_bias_reg[3]_i_31_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_54_n_0 ,\dc_bias[3]_i_55_n_0 ,\dc_bias[3]_i_56_n_0 ,\dc_bias_reg[3]_i_22_1 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_34 
       (.CI(\dc_bias_reg[3]_i_58_n_0 ),
        .CO({\NLW_dc_bias_reg[3]_i_34_CO_UNCONNECTED [3:2],\video_inst/Inst_vga/inst_color_mapper/is_trigger_time5 ,\dc_bias_reg[3]_i_34_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\processQ_reg[9] }),
        .O(\NLW_dc_bias_reg[3]_i_34_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\dc_bias[3]_i_59_n_0 ,\dc_bias[3]_i_60_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_58 
       (.CI(1'b0),
        .CO({\dc_bias_reg[3]_i_58_n_0 ,\dc_bias_reg[3]_i_58_n_1 ,\dc_bias_reg[3]_i_58_n_2 ,\dc_bias_reg[3]_i_58_n_3 }),
        .CYINIT(1'b1),
        .DI({\dc_bias[3]_i_82_n_0 ,DI[0],\dc_bias_reg[3]_i_34_0 }),
        .O(\NLW_dc_bias_reg[3]_i_58_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_85_n_0 ,\dc_bias[3]_i_86_n_0 ,\dc_bias_reg[3]_i_34_1 }));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_debounce_4 down_button_debounce_inst
       (.D({down_button_debounce_inst_n_1,down_button_debounce_inst_n_2,down_button_debounce_inst_n_3,down_button_debounce_inst_n_4,down_button_debounce_inst_n_5,down_button_debounce_inst_n_6,down_button_debounce_inst_n_7,down_button_debounce_inst_n_8,down_button_debounce_inst_n_9,down_button_debounce_inst_n_10}),
        .DI(\process_q[7]_i_2_n_0 ),
        .E(down_button_debounce_inst_n_0),
        .Q({q[9],q[7:0]}),
        .S(\process_q[3]_i_4__0_n_0 ),
        .SR(SR),
        .btn(btn),
        .\btn[3] (down_button_debounce_inst_n_12),
        .btn_1_sp_1(down_button_debounce_inst_n_11),
        .prev_down(prev_down),
        .prev_up_reg(prev_up_reg_n_0),
        .\process_q_reg[10] ({\process_q[10]_i_5__0_n_0 ,\process_q[10]_i_6__0_n_0 ,\process_q[10]_i_7__0_n_0 }),
        .\process_q_reg[1] (\process_q[10]_i_8__0_n_0 ),
        .\process_q_reg[1]_0 (\process_q[10]_i_9__0_n_0 ),
        .\process_q_reg[1]_1 (debounced_up),
        .\process_q_reg[1]_2 (\process_q[10]_i_10__0_n_0 ),
        .\process_q_reg[7] ({\process_q[7]_i_3__0_n_0 ,\process_q[7]_i_4__0_n_0 ,\process_q[7]_i_5__0_n_0 }),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  LUT6 #(
    .INIT(64'h20AABACF0020AA8A)) 
    i__carry__0_i_1__2
       (.I0(Q[8]),
        .I1(q[6]),
        .I2(i__carry__0_i_5__0_n_0),
        .I3(q[7]),
        .I4(q[8]),
        .I5(Q[7]),
        .O(\processQ_reg[9] ));
  LUT6 #(
    .INIT(64'h20AABACF0020AA8A)) 
    i__carry__0_i_1__3
       (.I0(Q[8]),
        .I1(q[6]),
        .I2(i__carry__0_i_4__0_n_0),
        .I3(q[7]),
        .I4(q[8]),
        .I5(Q[7]),
        .O(\processQ_reg[9]_2 ));
  LUT5 #(
    .INIT(32'h15403D54)) 
    i__carry__0_i_1__4
       (.I0(Q[8]),
        .I1(is_trigger_time4_carry__0_i_4_n_0),
        .I2(q[7]),
        .I3(q[8]),
        .I4(Q[7]),
        .O(\processQ_reg[9]_3 ));
  LUT5 #(
    .INIT(32'h0004FFFB)) 
    i__carry__0_i_2__0
       (.I0(q[6]),
        .I1(i__carry__0_i_5__0_n_0),
        .I2(q[7]),
        .I3(q[8]),
        .I4(q[9]),
        .O(\process_q_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'h00000010FFFFFFEF)) 
    i__carry__0_i_2__2
       (.I0(q[8]),
        .I1(q[7]),
        .I2(i__carry__0_i_5__0_n_0),
        .I3(q[6]),
        .I4(q[0]),
        .I5(q[9]),
        .O(\process_q_reg[9]_0 [1]));
  LUT4 #(
    .INIT(16'h9555)) 
    i__carry__0_i_2__4
       (.I0(q[9]),
        .I1(q[8]),
        .I2(is_trigger_time4_carry__0_i_4_n_0),
        .I3(q[7]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h8484428421211821)) 
    i__carry__0_i_3__1
       (.I0(Q[7]),
        .I1(q[8]),
        .I2(q[7]),
        .I3(i__carry__0_i_5__0_n_0),
        .I4(q[6]),
        .I5(Q[8]),
        .O(\process_q_reg[7]_0 [0]));
  LUT5 #(
    .INIT(32'h09906009)) 
    i__carry__0_i_3__2
       (.I0(q[8]),
        .I1(Q[8]),
        .I2(q[7]),
        .I3(is_trigger_time4_carry__0_i_4_n_0),
        .I4(Q[7]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h9006909009900909)) 
    i__carry__0_i_3__4
       (.I0(q[8]),
        .I1(Q[8]),
        .I2(q[7]),
        .I3(q[6]),
        .I4(i__carry__0_i_4__0_n_0),
        .I5(Q[7]),
        .O(\process_q_reg[9]_0 [0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    i__carry__0_i_4__0
       (.I0(q[5]),
        .I1(q[3]),
        .I2(q[2]),
        .I3(q[1]),
        .I4(q[4]),
        .I5(q[0]),
        .O(i__carry__0_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    i__carry__0_i_5__0
       (.I0(q[4]),
        .I1(q[1]),
        .I2(q[2]),
        .I3(q[3]),
        .I4(q[5]),
        .O(i__carry__0_i_5__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_10__0
       (.I0(q[1]),
        .I1(q[0]),
        .I2(q[2]),
        .O(i__carry_i_10__0_n_0));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    i__carry_i_1__2
       (.I0(Q[6]),
        .I1(i__carry_i_9__0_n_0),
        .I2(q[5]),
        .I3(q[6]),
        .I4(Q[5]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'h22A2BBCB0020AA8A)) 
    i__carry_i_1__3
       (.I0(Q[6]),
        .I1(q[5]),
        .I2(i__carry_i_9__0_n_0),
        .I3(q[0]),
        .I4(q[6]),
        .I5(Q[5]),
        .O(\processQ_reg[7]_0 [2]));
  LUT5 #(
    .INIT(32'h15403D54)) 
    i__carry_i_1__4
       (.I0(Q[6]),
        .I1(is_trigger_time4_carry_i_9_n_0),
        .I2(q[5]),
        .I3(q[6]),
        .I4(Q[5]),
        .O(\processQ_reg[7]_1 [3]));
  LUT6 #(
    .INIT(64'h02AAABFC0002AAA8)) 
    i__carry_i_2__2
       (.I0(Q[4]),
        .I1(q[1]),
        .I2(q[2]),
        .I3(q[3]),
        .I4(q[4]),
        .I5(Q[3]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h155540003FD55540)) 
    i__carry_i_2__3
       (.I0(Q[4]),
        .I1(q[1]),
        .I2(q[2]),
        .I3(q[3]),
        .I4(q[4]),
        .I5(Q[3]),
        .O(\processQ_reg[7]_1 [2]));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    i__carry_i_2__5
       (.I0(Q[4]),
        .I1(i__carry_i_10__0_n_0),
        .I2(q[3]),
        .I3(q[4]),
        .I4(Q[3]),
        .O(\processQ_reg[7]_0 [1]));
  LUT4 #(
    .INIT(16'h112B)) 
    i__carry_i_3__2
       (.I0(q[2]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(q[1]),
        .O(\processQ_reg[7]_1 [1]));
  LUT5 #(
    .INIT(32'h2ABC02A8)) 
    i__carry_i_3__4
       (.I0(Q[2]),
        .I1(q[0]),
        .I2(q[1]),
        .I3(q[2]),
        .I4(Q[1]),
        .O(\processQ_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4__4
       (.I0(q[0]),
        .I1(Q[0]),
        .O(\processQ_reg[7]_1 [0]));
  LUT5 #(
    .INIT(32'h42841821)) 
    i__carry_i_5__1
       (.I0(Q[5]),
        .I1(q[6]),
        .I2(q[5]),
        .I3(i__carry_i_9__0_n_0),
        .I4(Q[6]),
        .O(\processQ_reg[6] [1]));
  LUT5 #(
    .INIT(32'h09906009)) 
    i__carry_i_5__2
       (.I0(q[6]),
        .I1(Q[6]),
        .I2(q[5]),
        .I3(is_trigger_time4_carry_i_9_n_0),
        .I4(Q[5]),
        .O(\process_q_reg[7]_2 [1]));
  LUT6 #(
    .INIT(64'h8488424421221811)) 
    i__carry_i_5__4
       (.I0(Q[5]),
        .I1(q[6]),
        .I2(q[0]),
        .I3(i__carry_i_9__0_n_0),
        .I4(q[5]),
        .I5(Q[6]),
        .O(\processQ_reg[6]_0 [2]));
  LUT6 #(
    .INIT(64'h8484844221212118)) 
    i__carry_i_6__1
       (.I0(Q[3]),
        .I1(q[4]),
        .I2(q[3]),
        .I3(q[2]),
        .I4(q[1]),
        .I5(Q[4]),
        .O(\processQ_reg[6] [0]));
  LUT6 #(
    .INIT(64'h0990909060090909)) 
    i__carry_i_6__2
       (.I0(q[4]),
        .I1(Q[4]),
        .I2(q[3]),
        .I3(q[1]),
        .I4(q[2]),
        .I5(Q[3]),
        .O(\process_q_reg[7]_2 [0]));
  LUT5 #(
    .INIT(32'h42841821)) 
    i__carry_i_6__4
       (.I0(Q[3]),
        .I1(q[4]),
        .I2(q[3]),
        .I3(i__carry_i_10__0_n_0),
        .I4(Q[4]),
        .O(\processQ_reg[6]_0 [1]));
  LUT5 #(
    .INIT(32'h84422118)) 
    i__carry_i_7__4
       (.I0(Q[1]),
        .I1(q[2]),
        .I2(q[1]),
        .I3(q[0]),
        .I4(Q[2]),
        .O(\processQ_reg[6]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    i__carry_i_9__0
       (.I0(q[3]),
        .I1(q[2]),
        .I2(q[1]),
        .I3(q[4]),
        .O(i__carry_i_9__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    is_trigger_time2_carry__0_i_2
       (.I0(q[9]),
        .O(\process_q_reg[10]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    is_trigger_time2_carry__0_i_3
       (.I0(q[8]),
        .I1(Q[8]),
        .I2(q[7]),
        .I3(Q[7]),
        .O(\process_q_reg[10]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    is_trigger_time2_carry_i_5
       (.I0(q[6]),
        .I1(Q[6]),
        .I2(q[5]),
        .I3(Q[5]),
        .O(\process_q_reg[7]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    is_trigger_time2_carry_i_6
       (.I0(q[4]),
        .I1(Q[4]),
        .I2(q[3]),
        .I3(Q[3]),
        .O(\process_q_reg[7]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    is_trigger_time2_carry_i_7
       (.I0(q[1]),
        .I1(Q[1]),
        .I2(q[2]),
        .I3(Q[2]),
        .O(\process_q_reg[7]_1 [0]));
  LUT6 #(
    .INIT(64'h155540003FD55540)) 
    is_trigger_time4_carry__0_i_1
       (.I0(Q[8]),
        .I1(q[0]),
        .I2(is_trigger_time4_carry__0_i_4_n_0),
        .I3(q[7]),
        .I4(q[8]),
        .I5(Q[7]),
        .O(\processQ_reg[9]_0 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    is_trigger_time4_carry__0_i_2
       (.I0(q[9]),
        .I1(q[0]),
        .I2(q[7]),
        .I3(is_trigger_time4_carry__0_i_4_n_0),
        .I4(q[8]),
        .O(\process_q_reg[10]_0 [1]));
  LUT6 #(
    .INIT(64'h0990909060090909)) 
    is_trigger_time4_carry__0_i_3
       (.I0(q[8]),
        .I1(Q[8]),
        .I2(q[7]),
        .I3(q[0]),
        .I4(is_trigger_time4_carry__0_i_4_n_0),
        .I5(Q[7]),
        .O(\process_q_reg[10]_0 [0]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    is_trigger_time4_carry__0_i_4
       (.I0(q[5]),
        .I1(q[3]),
        .I2(q[2]),
        .I3(q[1]),
        .I4(q[4]),
        .I5(q[6]),
        .O(is_trigger_time4_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h155540003DDD5444)) 
    is_trigger_time4_carry_i_1
       (.I0(Q[6]),
        .I1(q[5]),
        .I2(is_trigger_time4_carry_i_9_n_0),
        .I3(q[0]),
        .I4(q[6]),
        .I5(Q[5]),
        .O(\processQ_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h80)) 
    is_trigger_time4_carry_i_10
       (.I0(q[0]),
        .I1(q[1]),
        .I2(q[2]),
        .O(is_trigger_time4_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h15403D54)) 
    is_trigger_time4_carry_i_2
       (.I0(Q[4]),
        .I1(is_trigger_time4_carry_i_10_n_0),
        .I2(q[3]),
        .I3(q[4]),
        .I4(Q[3]),
        .O(\processQ_reg[7] [1]));
  LUT5 #(
    .INIT(32'h143F00D4)) 
    is_trigger_time4_carry_i_3
       (.I0(Q[1]),
        .I1(q[1]),
        .I2(q[0]),
        .I3(Q[2]),
        .I4(q[2]),
        .O(\processQ_reg[7] [0]));
  LUT6 #(
    .INIT(64'h0990909060090909)) 
    is_trigger_time4_carry_i_5
       (.I0(q[6]),
        .I1(Q[6]),
        .I2(q[5]),
        .I3(q[0]),
        .I4(is_trigger_time4_carry_i_9_n_0),
        .I5(Q[5]),
        .O(\process_q_reg[7]_3 [2]));
  LUT5 #(
    .INIT(32'h09906009)) 
    is_trigger_time4_carry_i_6
       (.I0(q[4]),
        .I1(Q[4]),
        .I2(q[3]),
        .I3(is_trigger_time4_carry_i_10_n_0),
        .I4(Q[3]),
        .O(\process_q_reg[7]_3 [1]));
  LUT5 #(
    .INIT(32'h09906009)) 
    is_trigger_time4_carry_i_7
       (.I0(q[2]),
        .I1(Q[2]),
        .I2(q[0]),
        .I3(q[1]),
        .I4(Q[1]),
        .O(\process_q_reg[7]_3 [0]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    is_trigger_time4_carry_i_9
       (.I0(q[3]),
        .I1(q[2]),
        .I2(q[1]),
        .I3(q[4]),
        .O(is_trigger_time4_carry_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    prev_down_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(down_button_debounce_inst_n_11),
        .Q(prev_down),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    prev_up_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(down_button_debounce_inst_n_12),
        .Q(prev_up_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \process_q[10]_i_10__0 
       (.I0(q[7]),
        .I1(q[6]),
        .I2(q[5]),
        .I3(q[4]),
        .I4(q[8]),
        .O(\process_q[10]_i_10__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \process_q[10]_i_5__0 
       (.I0(q[8]),
        .I1(q[9]),
        .O(\process_q[10]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \process_q[10]_i_6__0 
       (.I0(q[7]),
        .I1(q[8]),
        .O(\process_q[10]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \process_q[10]_i_7__0 
       (.I0(q[6]),
        .I1(q[7]),
        .O(\process_q[10]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEEEFEEEFEEE)) 
    \process_q[10]_i_8__0 
       (.I0(q[6]),
        .I1(q[7]),
        .I2(q[4]),
        .I3(q[3]),
        .I4(q[1]),
        .I5(q[2]),
        .O(\process_q[10]_i_8__0_n_0 ));
  LUT5 #(
    .INIT(32'hBBBBBBBF)) 
    \process_q[10]_i_9__0 
       (.I0(q[9]),
        .I1(q[8]),
        .I2(q[7]),
        .I3(q[6]),
        .I4(q[5]),
        .O(\process_q[10]_i_9__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \process_q[3]_i_4__0 
       (.I0(q[0]),
        .O(\process_q[3]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \process_q[7]_i_2 
       (.I0(q[3]),
        .O(\process_q[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \process_q[7]_i_3__0 
       (.I0(q[5]),
        .I1(q[6]),
        .O(\process_q[7]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \process_q[7]_i_4__0 
       (.I0(q[4]),
        .I1(q[5]),
        .O(\process_q[7]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \process_q[7]_i_5__0 
       (.I0(q[3]),
        .I1(q[4]),
        .O(\process_q[7]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \process_q_reg[10] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_1),
        .Q(q[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \process_q_reg[1] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_10),
        .Q(q[0]),
        .R(SR));
  FDSE #(
    .INIT(1'b0)) 
    \process_q_reg[2] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_9),
        .Q(q[1]),
        .S(SR));
  FDSE #(
    .INIT(1'b0)) 
    \process_q_reg[3] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_8),
        .Q(q[2]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \process_q_reg[4] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_7),
        .Q(q[3]),
        .R(SR));
  FDSE #(
    .INIT(1'b0)) 
    \process_q_reg[5] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_6),
        .Q(q[4]),
        .S(SR));
  FDRE #(
    .INIT(1'b1)) 
    \process_q_reg[6] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_5),
        .Q(q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \process_q_reg[7] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_4),
        .Q(q[6]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \process_q_reg[8] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_3),
        .Q(q[7]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \process_q_reg[9] 
       (.C(s00_axi_aclk),
        .CE(down_button_debounce_inst_n_0),
        .D(down_button_debounce_inst_n_2),
        .Q(q[8]),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_debounce_5 up_button_debounce_inst
       (.Q(debounced_up),
        .SR(SR),
        .btn(btn[1]),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trigger_detector
   (S,
    \previous_sample_reg[8]_0 ,
    Q,
    q,
    SR,
    E,
    s00_axi_aclk);
  output [0:0]S;
  output [7:0]\previous_sample_reg[8]_0 ;
  input [8:0]Q;
  input [0:0]q;
  input [0:0]SR;
  input [0:0]E;
  input s00_axi_aclk;

  wire [0:0]E;
  wire [15:15]Lbus_out;
  wire [8:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [0:0]previous_sample;
  wire [7:0]\previous_sample_reg[8]_0 ;
  wire [0:0]q;
  wire s00_axi_aclk;

  LUT3 #(
    .INIT(8'h41)) 
    i__i_18
       (.I0(previous_sample),
        .I1(\previous_sample_reg[8]_0 [0]),
        .I2(q),
        .O(S));
  LUT1 #(
    .INIT(2'h1)) 
    \previous_sample[8]_i_1 
       (.I0(Q[8]),
        .O(Lbus_out));
  FDRE \previous_sample_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(Q[0]),
        .Q(previous_sample),
        .R(SR));
  FDRE \previous_sample_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(Q[1]),
        .Q(\previous_sample_reg[8]_0 [0]),
        .R(SR));
  FDRE \previous_sample_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(Q[2]),
        .Q(\previous_sample_reg[8]_0 [1]),
        .R(SR));
  FDRE \previous_sample_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(Q[3]),
        .Q(\previous_sample_reg[8]_0 [2]),
        .R(SR));
  FDRE \previous_sample_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(Q[4]),
        .Q(\previous_sample_reg[8]_0 [3]),
        .R(SR));
  FDRE \previous_sample_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(Q[5]),
        .Q(\previous_sample_reg[8]_0 [4]),
        .R(SR));
  FDRE \previous_sample_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(Q[6]),
        .Q(\previous_sample_reg[8]_0 [5]),
        .R(SR));
  FDRE \previous_sample_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(Q[7]),
        .Q(\previous_sample_reg[8]_0 [6]),
        .R(SR));
  FDRE \previous_sample_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(Lbus_out),
        .Q(\previous_sample_reg[8]_0 [7]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO
   (DOADO,
    s00_axi_aclk,
    SR,
    Q);
  output [15:0]DOADO;
  input s00_axi_aclk;
  input [0:0]SR;
  input [9:0]Q;

  wire [15:0]DOADO;
  wire [9:0]Q;
  wire [0:0]SR;
  wire s00_axi_aclk;
  wire [15:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h8BC28AFA8A31896988A087D8870F8646857D84B583EC8323825A819180C87FFF),
    .INIT_01(256'hA74FA777A79AA7B7A7CEA7DFA7EAA7EEA7ECA7E4A7D5A7BFA7A3A77FA7547FFF),
    .INIT_02(256'hA269A2D1A337A39AA3FBA458A4B1A507A55AA5A8A5F2A638A67AA6B6A6EE7FFF),
    .INIT_03(256'h9B369BAB9C209C959D0C9D829DF89E6E9EE49F599FCDA041A0B2A123A192A1FE),
    .INIT_04(256'h94FD954B959C95F1964A96A59704976597C9983098999904997199E09A519AC3),
    .INIT_05(256'h92729276927F928E92A192BA92D892FA9321934D937E93B393ED942B946D94B3),
    .INIT_06(256'h950794B6946A942493E293A6936F933E931292EB92C992AD92979286927A9273),
    .INIT_07(256'h9C869BF19B5E9ACF9A4499BC993998B9983E97C7975496E6967D961895B8955D),
    .INIT_08(256'hA719A667A5B4A503A452A3A1A2F2A245A199A0EEA0469FA09EFC9E5A9DBB9D1F),
    .INIT_09(256'hB1B3B11AB07EAFDFAF3DAE99ADF2AD48AC9DABF0AB42AA92A9E2A930A87EA7CC),
    .INIT_0A(256'hB8CFB888B83AB7E6B78BB72BB6C5B659B5E8B571B4F6B476B3F1B367B2DAB248),
    .INIT_0B(256'hB948B97EB9ABB9CFB9EBB9FFBA0ABA0DBA08B9FBB9E7B9CAB9A6B97BB949B90F),
    .INIT_0C(256'hB126B1ECB2A9B35EB409B4ABB544B5D3B65AB6D7B74BB7B7B819B872B8C2B909),
    .INIT_0D(256'hA020A16EA2B4A3F3A529A657A77EA89CA9B1AABEABC3ACBFADB2AE9CAF7EB056),
    .INIT_0E(256'h87C789768B218CC68E6790039199932A94B4963997B7992F9AA19C0B9D6F9ECB),
    .INIT_0F(256'h6B356D0A6EE070B57288745B762C77FB79C87B927D5B7F2080E282A1845C8614),
    .INIT_10(256'h4E6D502751E453A55569573058F95AC65C945E646036620963DD65B36788695E),
    .INIT_11(256'h358236E2384A39B83B2D3CA93E2A3FB3414042D4446D460C47B049584B054CB7),
    .INIT_12(256'h23B7249425792667275F285F29672A782B922CB42DDE2F11304B318E32D83429),
    .INIT_13(256'h1AD21B1C1B6E1BCA1C2F1C9D1D141D941E1E1EB11F4D1FF220A12159221A22E4),
    .INIT_14(256'h1AC71A8C1A581A2C1A0719EB19D619C919C419C819D419E91A061A2C1A5A1A92),
    .INIT_15(256'h21CC213420A020121F871F021E821E071D921D231CB91C561BF81BA21B521B09),
    .INIT_16(256'h2CD82C1A2B5D2AA129E5292C287427BD2709265725A724FB245123AA23072267),
    .INIT_17(256'h386637B9370B365935A634F03439338032C6320A314E30902FD22F142E552D96),
    .INIT_18(256'h414E40DF406B3FF33F763EF53E6F3DE53D573CC63C303B973AFA3A5939B6390F),
    .INIT_19(256'h458A456E454C452544F944C744904454441343CC4380432F42D9427E421D41B8),
    .INIT_1A(256'h44AE44DE450A453245554574458E45A445B545C145C845CB45C845C045B445A1),
    .INIT_1B(256'h3FF8405540B1410B416341B8420C425D42AC42F74340438643C844074442447A),
    .INIT_1C(256'h39FE3A583AB33B103B6F3BCE3C2F3C903CF13D533DB63E173E793EDA3F3B3F9A),
    .INIT_1D(256'h35FE361F3645367136A036D5370D3749378A37CE3815386038AD38FE395139A6),
    .INIT_1E(256'h370A36C7368C3658362A360435E435CB35B935AD35A735A735AD35B935CA35E1),
    .INIT_1F(256'h3F3A3E7C3DC73D193C733BD63B3F3AB13A2B39AC393538C5385E37FE37A53754),
    .INIT_20(256'h4F134DE04CB34B8E4A6F49574846473D463B4540444D4361427D41A140CC3FFF),
    .INIT_21(256'h655263CA624660C65F4A5DD35C615AF3598B582856CA5572541F52D3518D504D),
    .INIT_22(256'h7F1E7D787BD37A2E788976E5754273A0720070616EC56D2B6B9369FE686C66DD),
    .INIT_23(256'h989F971D9597940D928090EF8F5A8DC48C2A8A8E88F0875085AF840C826880C3),
    .INIT_24(256'hADCFACAEAB85AA55A91EA7E0A69BA54FA3FDA2A5A1469FE29E799D0A9B969A1D),
    .INIT_25(256'hBB59BAC5BA28B981B8D0B816B753B687B5B1B4D3B3ECB2FCB203B102AFF9AEE8),
    .INIT_26(256'hBF57BF61BF62BF59BF46BF29BF02BED1BE96BE51BE02BDAABD47BCDABC64BBE3),
    .INIT_27(256'hB9B3BA4FBAE3BB6FBBF2BC6DBCDFBD48BDA7BDFEBE4CBE90BECBBEFCBF24BF42),
    .INIT_28(256'hAC2BAD31AE32AF2EB024B114B1FEB2E2B3C0B498B568B632B6F4B7B0B863B90F),
    .INIT_29(256'h99E09B169C4B9D7F9EB19FE1A10FA23AA363A489A5ABA6CBA7E6A8FEAA11AB21),
    .INIT_2A(256'h869D87C688F28A208B508C828DB58EEA90209157928F93C895009639977198A9),
    .INIT_2B(256'h75F876E077CE78C079B87AB47BB57CBB7DC57ED37FE580FB8215833284538576),
    .INIT_2C(256'h6A846B0D6B9C6C326CCE6D716E196EC86F7D703870F971C0728C735F74377514),
    .INIT_2D(256'h6546656D659965CB66036641668566CF671F677667D36836689F690F69856A01),
    .INIT_2E(256'h6588656465436526650D64F864E764DB64D364CF64D164D764E364F4650A6525),
    .INIT_2F(256'h691A68D768936851680F67CF678F6751671566DB66A3666D6639660965DB65B0),
    .INIT_30(256'h6CEE6CBF6C8D6C586C216BE76BAC6B6F6B306AF06AAF6A6D6A2A69E669A2695E),
    .INIT_31(256'h6DE86DFA6E086E106E146E126E0C6E026DF36DDF6DC86DAD6D8D6D6B6D446D1B),
    .INIT_32(256'h69B06A216A8C6AF16B4F6BA76BF96C456C8B6CCA6D046D386D676D8F6DB26DD0),
    .INIT_33(256'h5F5E602F60FB61C16281633C63F1649F654865EB6687671E67AE683868BC6939),
    .INIT_34(256'h4FBD50D551E952FB540955135619571B581959135A075AF85BE35CCA5DAB5E87),
    .INIT_35(256'h3D343E633F9140C041EE431C444A457646A247CC48F54A1C4B414C634D844EA2),
    .INIT_36(256'h2B452C4C2D582E682F7C309331AE32CB33EC350E3634375B388439AE3ADA3C07),
    .INIT_37(256'h1DBE1E641F121FC720842147221222E323BA2498257C26652754284929432A41),
    .INIT_38(256'h17E217FA181D1849187E18BD1906195719B21A151A821AF71B741BFB1C891D1F),
    .INIT_39(256'h1BA01B191A9C1A2919C01961190C18C118801849181C17FA17E117D217CE17D3),
    .INIT_3A(256'h2922280626F425E924E723EE22FE2217213920651F9A1ED81E201D711CCD1C32),
    .INIT_3B(256'h3EB43D2C3BAA3A2D38B5374435D83473331531BD306C2F222DDF2CA42B712A45),
    .INIT_3C(256'h5928576F55B75401524C50994EE94D3B4B8F49E7484246A04502436841D24041),
    .INIT_3D(256'h748072D8712C6F7E6DCE6C1B6A6768B166F96540638761CC60125E575C9C5AE1),
    .INIT_3E(256'h8CD18B738A0F88A5873685C0844682C681417FB87E2A7C977B01796677C77625),
    .INIT_3F(256'h9F199E2B9D369C399B349A29991597FB96D995B094809349920B90C67FFF8E29),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(18)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl 
       (.ADDRARDADDR({Q,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(SR),
        .RSTRAMB(SR),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "unimacro_BRAM_SDP_MACRO" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized0
   (\sdp_bl.ramb18_dp_bl.ram18_bl_0 ,
    s00_axi_aclk,
    SR,
    Q);
  output [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  input s00_axi_aclk;
  input [0:0]SR;
  input [9:0]Q;

  wire [9:0]Q;
  wire [0:0]SR;
  wire s00_axi_aclk;
  wire [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  wire [15:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h8BC28AF98A31896988A087D8870F8647857E84B583EC8323825A819180C88000),
    .INIT_01(256'h9830976A96A595DF95199452938C92C591FE913790708FA98EE18E198D528C8A),
    .INIT_02(256'hA462A3A2A2E0A21FA15DA09B9FD89F169E529D8F9CCB9C079B439A7F99BA98F5),
    .INIT_03(256'hB03BAF81AEC6AE0BAD4FAC93ABD6AB19AA5CA99EA8E0A821A762A6A3A5E3A523),
    .INIT_04(256'hBB9DBAEBBA39B985B8D2B81DB768B6B3B5FDB547B490B3D8B320B268B1AFB0F5),
    .INIT_05(256'hC66DC5C5C51CC472C3C8C31DC272C1C6C119C06CBFBEBF0FBE60BDB0BD00BC4F),
    .INIT_06(256'hD08FCFF2CF55CEB7CE18CD78CCD8CC37CB95CAF2CA4FC9ABC907C861C7BBC714),
    .INIT_07(256'hD9EAD95BD8CAD839D7A7D714D681D5ECD557D4C1D42AD392D2F9D260D1C5D12A),
    .INIT_08(256'hE268E1E7E165E0E2E05FDFDADF54DECEDE46DDBEDD35DCAADC1FDB93DB06DA79),
    .INIT_09(256'hE9F4E983E910E89DE829E7B3E73DE6C6E64DE5D4E55AE4DFE463E3E5E367E2E8),
    .INIT_0A(256'hF07AF01AEFB8EF56EEF2EE8DEE28EDC1ED59ECF0EC86EC1BEBAFEB41EAD3EA64),
    .INIT_0B(256'hF5ECF59DF54EF4FDF4AAF457F403F3ADF357F2FFF2A6F24CF1F1F195F138F0DA),
    .INIT_0C(256'hFA3BF9FFF9C2F983F943F902F8C0F87DF839F7F3F7ACF765F71CF6D1F686F63A),
    .INIT_0D(256'hFD5DFD34FD0AFCDEFCB2FC84FC54FC24FBF3FBC0FB8CFB57FB20FAE9FAB0FA76),
    .INIT_0E(256'hFF4BFF35FF1EFF06FEEDFED2FEB6FE99FE7BFE5CFE3BFE19FDF6FDD2FDACFD85),
    .INIT_0F(256'hFFFFFFFDFFF9FFF5FFEFFFE8FFE0FFD7FFCCFFC0FFB3FFA5FF95FF85FF73FF5F),
    .INIT_10(256'hFF77FF89FF99FFA9FFB7FFC3FFCFFFD9FFE2FFEAFFF1FFF6FFFAFFFDFFFFFFFF),
    .INIT_11(256'hFDB6FDDBFDFFFE22FE44FE64FE83FEA1FEBEFED9FEF3FF0DFF24FF3BFF50FF64),
    .INIT_12(256'hFABFFAF7FB2FFB65FB99FBCDFC00FC31FC61FC90FCBDFCEAFD15FD3FFD68FD90),
    .INIT_13(256'hF69AF6E5F72FF777F7BFF805F84BF88FF8D2F913F954F993F9D2FA0FFA4BFA86),
    .INIT_14(256'hF150F1ADF209F264F2BDF316F36DF3C4F419F46DF4C0F512F562F5B2F600F64E),
    .INIT_15(256'hEAF0EB5EEBCBEC37ECA1ED0BED74EDDCEE42EEA8EF0CEF70EFD2F033F093F0F2),
    .INIT_16(256'hE388E406E483E4FFE57AE5F4E66DE6E5E75CE7D2E847E8BBE92EE9A0EA11EA81),
    .INIT_17(256'hDB2BDBB8DC43DCCEDD58DDE1DE69DEF1DF77DFFCE081E104E187E209E28AE309),
    .INIT_18(256'hD1EED288D321D3B9D451D4E8D57ED613D6A7D73BD7CDD85FD8F0D980DA0FDA9E),
    .INIT_19(256'hC7E6C88CC931C9D6CA7ACB1DCBBFCC61CD02CDA2CE41CEE0CF7ED01BD0B7D153),
    .INIT_1A(256'hBD2EBDDEBE8EBF3DBFEBC099C146C1F3C29FC34AC3F4C49EC548C5F0C698C740),
    .INIT_1B(256'hB1DFB298B350B408B4BFB576B62CB6E2B797B84CB900B9B4BA67BB1ABBCCBC7D),
    .INIT_1C(256'hA615A6D5A794A853A911A9CFAA8DAB4AAC07ACC4AD80AE3CAEF7AFB1B06CB125),
    .INIT_1D(256'h99ED9AB29B769C3A9CFE9DC29E859F48A00BA0CDA18FA251A313A3D4A494A555),
    .INIT_1E(256'h8D868E4D8F158FDC90A4916B923292F993BF9486954C961296D8979E98639928),
    .INIT_1F(256'h80FD81C6828F8357842084E985B2867B8743880C88D4899D8A658B2D8BF68CBE),
    .INIT_20(256'h7472753B760376CB7794785C792579EE7AB67B7F7C487D117DDA7EA37F6C8034),
    .INIT_21(256'h680368C9698F6A556B1B6BE16CA86D6E6E356EFD6FC4708B7153721A72E273AA),
    .INIT_22(256'h5BD05C915D525E135ED55F98605A611D61E062A46367642C64F065B46679673E),
    .INIT_23(256'h4FF550B0516A522652E2539E545B551855D556935752581058CF598F5A4F5B0F),
    .INIT_24(256'h4491454345F646A9475D481248C7497C4A324AE94BA04C584D104DC84E814F3B),
    .INIT_25(256'h39BF3A673B103BBA3C643D0F3DBB3E673F143FC1406F411E41CD427D432E43DF),
    .INIT_26(256'h2F9A303730D43172321132B1335233F33495353835DB367F372437CA38703917),
    .INIT_27(256'h263B26CB275B27ED287F291229A62A3B2AD02B672BFE2C962D2F2DC82E632EFE),
    .INIT_28(256'h1DB91E3A1EBD1F401FC4204920CF215521DD226622EF237A24052491251E25AC),
    .INIT_29(256'h162A169B170E178117F6186B18E2195919D21A4B1AC61B411BBE1C3B1CBA1D39),
    .INIT_2A(256'h0F9E0FFF106110C41128118D11F3125A12C2132C13961401146E14DB154A15B9),
    .INIT_2B(256'h0A280A770AC70B190B6B0BBF0C130C690CC00D180D710DCB0E260E830EE00F3F),
    .INIT_2C(256'h05D40611064E068D06CD070F0751079507D9081F086608AE08F80942098E09DA),
    .INIT_2D(256'h02AD02D70301032D035A038803B803E9041A044E048204B704EE0526055F0599),
    .INIT_2E(256'h00BB00D100E80100011A01350151016E018D01AD01CE01F002130238025E0285),
    .INIT_2F(256'h000200040008000C0012001A0022002C003700430050005F006F0080009200A6),
    .INIT_30(256'h008400730062005400460039002E0024001B0014000E00090005000200010001),
    .INIT_31(256'h0240021B01F801D501B4019401750157013B0120010600ED00D600BF00AA0097),
    .INIT_32(256'h053204FA04C3048E0459042603F403C3039303640337030B02E002B6028E0266),
    .INIT_33(256'h0953090808BE0876082F07E907A40760071D06DC069B065C061E05E105A6056B),
    .INIT_34(256'h0E970E3B0DDF0D850D2B0CD30C7C0C260BD10B7D0B2B0AD90A890A3A09EB099E),
    .INIT_35(256'h14F31486141913AE134312DA1271120A11A3113E10DA107710150FB40F540EF5),
    .INIT_36(256'h1C571BD91B5D1AE11A6619ED197418FC18851810179B172716B4164315D21562),
    .INIT_37(256'h24B024242398230E228421FB217320EC20661FE11F5D1EDA1E571DD61D551CD6),
    .INIT_38(256'h2DEA2D512CB82C1F2B882AF12A5C29C72933289F280D277B26EB265B25CC253E),
    .INIT_39(256'h37EF374936A435FF355C34B93417337532D53235319630F730592FBC2F202E85),
    .INIT_3A(256'h42A441F4414540963FE83F3A3E8D3DE13D353C8A3BDF3B363A8C39E4393C3895),
    .INIT_3B(256'h4DF14D384C804BC94B114A5B49A448EF483A478546D1461D456A44B844064355),
    .INIT_3C(256'h59B958FA583B577C56BD55FF5542548453C8530B524F519450D9501E4F644EAA),
    .INIT_3D(256'h65E0651B6457639362CF620B614860855FC35F005E3E5D7D5CBB5BFA5B3A5A79),
    .INIT_3E(256'h7247717F70B76FF06F296E616D9A6CD46C0D6B476A8069BA68F5682F676A66A5),
    .INIT_3F(256'h7ECF7E067D3D7C747BAC7AE37A1A7951788977C076F7762F7567749F73D6730E),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(18)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl 
       (.ADDRARDADDR({Q,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\sdp_bl.ramb18_dp_bl.ram18_bl_0 ),
        .DOBDO(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(SR),
        .RSTRAMB(SR),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "unimacro_BRAM_SDP_MACRO" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized1
   (CO,
    s00_axi_aclk,
    WREN,
    SR,
    out,
    ADDRBWRADDR,
    \position[row] ,
    S,
    \sdp_bl.ramb18_dp_bl.ram18_bl_0 ,
    Q,
    switch);
  output [0:0]CO;
  input s00_axi_aclk;
  input WREN;
  input [0:0]SR;
  input [9:0]out;
  input [9:0]ADDRBWRADDR;
  input [8:0]\position[row] ;
  input [0:0]S;
  input [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  input [15:0]Q;
  input [0:0]switch;

  wire [9:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [15:0]DI;
  wire [15:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire WREN;
  wire [15:0]\ch1[from_bram] ;
  wire \dc_bias[3]_i_10__0_n_0 ;
  wire \dc_bias[3]_i_11__0_n_0 ;
  wire \dc_bias[3]_i_22_n_0 ;
  wire \dc_bias[3]_i_23__0_n_0 ;
  wire \dc_bias[3]_i_24_n_0 ;
  wire \dc_bias[3]_i_9__0_n_0 ;
  wire \dc_bias_reg[3]_i_4_n_1 ;
  wire \dc_bias_reg[3]_i_4_n_2 ;
  wire \dc_bias_reg[3]_i_4_n_3 ;
  wire [9:0]out;
  wire [8:0]\position[row] ;
  wire s00_axi_aclk;
  wire [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  wire [0:0]switch;
  wire [3:0]\NLW_dc_bias_reg[3]_i_4_O_UNCONNECTED ;
  wire [15:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h9600)) 
    \dc_bias[3]_i_10__0 
       (.I0(\ch1[from_bram] [9]),
        .I1(\ch1[from_bram] [10]),
        .I2(\position[row] [3]),
        .I3(\dc_bias[3]_i_24_n_0 ),
        .O(\dc_bias[3]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    \dc_bias[3]_i_11__0 
       (.I0(\ch1[from_bram] [7]),
        .I1(\position[row] [0]),
        .I2(\position[row] [2]),
        .I3(\ch1[from_bram] [9]),
        .I4(\position[row] [1]),
        .I5(\ch1[from_bram] [8]),
        .O(\dc_bias[3]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'h9696969696969666)) 
    \dc_bias[3]_i_22 
       (.I0(\position[row] [6]),
        .I1(\ch1[from_bram] [13]),
        .I2(\ch1[from_bram] [12]),
        .I3(\ch1[from_bram] [11]),
        .I4(\ch1[from_bram] [9]),
        .I5(\ch1[from_bram] [10]),
        .O(\dc_bias[3]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    \dc_bias[3]_i_23__0 
       (.I0(\ch1[from_bram] [10]),
        .I1(\ch1[from_bram] [9]),
        .I2(\ch1[from_bram] [11]),
        .I3(\ch1[from_bram] [12]),
        .I4(\ch1[from_bram] [13]),
        .O(\dc_bias[3]_i_23__0_n_0 ));
  LUT6 #(
    .INIT(64'h0002999499940002)) 
    \dc_bias[3]_i_24 
       (.I0(\position[row] [4]),
        .I1(\ch1[from_bram] [11]),
        .I2(\ch1[from_bram] [9]),
        .I3(\ch1[from_bram] [10]),
        .I4(\ch1[from_bram] [12]),
        .I5(\position[row] [5]),
        .O(\dc_bias[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h8200002800828200)) 
    \dc_bias[3]_i_9__0 
       (.I0(\dc_bias[3]_i_22_n_0 ),
        .I1(\position[row] [8]),
        .I2(\ch1[from_bram] [15]),
        .I3(\dc_bias[3]_i_23__0_n_0 ),
        .I4(\ch1[from_bram] [14]),
        .I5(\position[row] [7]),
        .O(\dc_bias[3]_i_9__0_n_0 ));
  CARRY4 \dc_bias_reg[3]_i_4 
       (.CI(1'b0),
        .CO({CO,\dc_bias_reg[3]_i_4_n_1 ,\dc_bias_reg[3]_i_4_n_2 ,\dc_bias_reg[3]_i_4_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_dc_bias_reg[3]_i_4_O_UNCONNECTED [3:0]),
        .S({S,\dc_bias[3]_i_9__0_n_0 ,\dc_bias[3]_i_10__0_n_0 ,\dc_bias[3]_i_11__0_n_0 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hA719A667A5B4A503A452A3A1A2F2A245A199A0EEA0469FA09EFC9E5A9DBB9D1F),
    .INIT_01(256'hB1B3B11AB07EAFDFAF3DAE99ADF2AD48AC9DABF0AB42AA92A9E2A930A87EA7CC),
    .INIT_02(256'hB8CFB888B83AB7E6B78BB72BB6C5B659B5E8B571B4F6B476B3F1B367B2DAB248),
    .INIT_03(256'hB948B97EB9ABB9CFB9EBB9FFBA0ABA0DBA08B9FBB9E7B9CAB9A6B97BB949B90F),
    .INIT_04(256'hB126B1ECB2A9B35EB409B4ABB544B5D3B65AB6D7B74BB7B7B819B872B8C2B909),
    .INIT_05(256'hA020A16EA2B4A3F3A529A657A77EA89CA9B1AABEABC3ACBFADB2AE9CAF7EB056),
    .INIT_06(256'h87C789768B218CC68E6790039199932A94B4963997B7992F9AA19C0B9D6F9ECB),
    .INIT_07(256'h6B356D0A6EE070B57288745B762C77FB79C87B927D5B7F2080E282A1845C8614),
    .INIT_08(256'h8BC28AFA8A31896988A087D8870F8646857D84B583EC8323825A819180C87FFF),
    .INIT_09(256'hA74FA777A79AA7B7A7CEA7DFA7EAA7EEA7ECA7E4A7D5A7BFA7A3A77FA7547FFF),
    .INIT_0A(256'hA269A2D1A337A39AA3FBA458A4B1A507A55AA5A8A5F2A638A67AA6B6A6EE7FFF),
    .INIT_0B(256'h9B369BAB9C209C959D0C9D829DF89E6E9EE49F599FCDA041A0B2A123A192A1FE),
    .INIT_0C(256'h94FD954B959C95F1964A96A59704976597C9983098999904997199E09A519AC3),
    .INIT_0D(256'h92729276927F928E92A192BA92D892FA9321934D937E93B393ED942B946D94B3),
    .INIT_0E(256'h950794B6946A942493E293A6936F933E931292EB92C992AD92979286927A9273),
    .INIT_0F(256'h9C869BF19B5E9ACF9A4499BC993998B9983E97C7975496E6967D961895B8955D),
    .INIT_10(256'h4E6D502751E453A55569573058F95AC65C945E646036620963DD65B36788695E),
    .INIT_11(256'h358236E2384A39B83B2D3CA93E2A3FB3414042D4446D460C47B049584B054CB7),
    .INIT_12(256'h23B7249425792667275F285F29672A782B922CB42DDE2F11304B318E32D83429),
    .INIT_13(256'h1AD21B1C1B6E1BCA1C2F1C9D1D141D941E1E1EB11F4D1FF220A12159221A22E4),
    .INIT_14(256'h1AC71A8C1A581A2C1A0719EB19D619C919C419C819D419E91A061A2C1A5A1A92),
    .INIT_15(256'h21CC213420A020121F871F021E821E071D921D231CB91C561BF81BA21B521B09),
    .INIT_16(256'h2CD82C1A2B5D2AA129E5292C287427BD2709265725A724FB245123AA23072267),
    .INIT_17(256'h386637B9370B365935A634F03439338032C6320A314E30902FD22F142E552D96),
    .INIT_18(256'h414E40DF406B3FF33F763EF53E6F3DE53D573CC63C303B973AFA3A5939B6390F),
    .INIT_19(256'h458A456E454C452544F944C744904454441343CC4380432F42D9427E421D41B8),
    .INIT_1A(256'h44AE44DE450A453245554574458E45A445B545C145C845CB45C845C045B445A1),
    .INIT_1B(256'h3FF8405540B1410B416341B8420C425D42AC42F74340438643C844074442447A),
    .INIT_1C(256'h39FE3A583AB33B103B6F3BCE3C2F3C903CF13D533DB63E173E793EDA3F3B3F9A),
    .INIT_1D(256'h35FE361F3645367136A036D5370D3749378A37CE3815386038AD38FE395139A6),
    .INIT_1E(256'h370A36C7368C3658362A360435E435CB35B935AD35A735A735AD35B935CA35E1),
    .INIT_1F(256'h3F3A3E7C3DC73D193C733BD63B3F3AB13A2B39AC393538C5385E37FE37A53754),
    .INIT_20(256'h4F134DE04CB34B8E4A6F49574846473D463B4540444D4361427D41A140CC3FFF),
    .INIT_21(256'h655263CA624660C65F4A5DD35C615AF3598B582856CA5572541F52D3518D504D),
    .INIT_22(256'h7F1E7D787BD37A2E788976E5754273A0720070616EC56D2B6B9369FE686C66DD),
    .INIT_23(256'h989F971D9597940D928090EF8F5A8DC48C2A8A8E88F0875085AF840C826880C3),
    .INIT_24(256'hADCFACAEAB85AA55A91EA7E0A69BA54FA3FDA2A5A1469FE29E799D0A9B969A1D),
    .INIT_25(256'hBB59BAC5BA28B981B8D0B816B753B687B5B1B4D3B3ECB2FCB203B102AFF9AEE8),
    .INIT_26(256'hBF57BF61BF62BF59BF46BF29BF02BED1BE96BE51BE02BDAABD47BCDABC64BBE3),
    .INIT_27(256'hB9B3BA4FBAE3BB6FBBF2BC6DBCDFBD48BDA7BDFEBE4CBE90BECBBEFCBF24BF42),
    .INIT_28(256'hAC2BAD31AE32AF2EB024B114B1FEB2E2B3C0B498B568B632B6F4B7B0B863B90F),
    .INIT_29(256'h99E09B169C4B9D7F9EB19FE1A10FA23AA363A489A5ABA6CBA7E6A8FEAA11AB21),
    .INIT_2A(256'h869D87C688F28A208B508C828DB58EEA90209157928F93C895009639977198A9),
    .INIT_2B(256'h75F876E077CE78C079B87AB47BB57CBB7DC57ED37FE580FB8215833284538576),
    .INIT_2C(256'h6A846B0D6B9C6C326CCE6D716E196EC86F7D703870F971C0728C735F74377514),
    .INIT_2D(256'h6546656D659965CB66036641668566CF671F677667D36836689F690F69856A01),
    .INIT_2E(256'h6588656465436526650D64F864E764DB64D364CF64D164D764E364F4650A6525),
    .INIT_2F(256'h691A68D768936851680F67CF678F6751671566DB66A3666D6639660965DB65B0),
    .INIT_30(256'h6CEE6CBF6C8D6C586C216BE76BAC6B6F6B306AF06AAF6A6D6A2A69E669A2695E),
    .INIT_31(256'h6DE86DFA6E086E106E146E126E0C6E026DF36DDF6DC86DAD6D8D6D6B6D446D1B),
    .INIT_32(256'h69B06A216A8C6AF16B4F6BA76BF96C456C8B6CCA6D046D386D676D8F6DB26DD0),
    .INIT_33(256'h5F5E602F60FB61C16281633C63F1649F654865EB6687671E67AE683868BC6939),
    .INIT_34(256'h4FBD50D551E952FB540955135619571B581959135A075AF85BE35CCA5DAB5E87),
    .INIT_35(256'h3D343E633F9140C041EE431C444A457646A247CC48F54A1C4B414C634D844EA2),
    .INIT_36(256'h2B452C4C2D582E682F7C309331AE32CB33EC350E3634375B388439AE3ADA3C07),
    .INIT_37(256'h1DBE1E641F121FC720842147221222E323BA2498257C26652754284929432A41),
    .INIT_38(256'h17E217FA181D1849187E18BD1906195719B21A151A821AF71B741BFB1C891D1F),
    .INIT_39(256'h1BA01B191A9C1A2919C01961190C18C118801849181C17FA17E117D217CE17D3),
    .INIT_3A(256'h2922280626F425E924E723EE22FE2217213920651F9A1ED81E201D711CCD1C32),
    .INIT_3B(256'h3EB43D2C3BAA3A2D38B5374435D83473331531BD306C2F222DDF2CA42B712A45),
    .INIT_3C(256'h5928576F55B75401524C50994EE94D3B4B8F49E7484246A04502436841D24041),
    .INIT_3D(256'h748072D8712C6F7E6DCE6C1B6A6768B166F96540638761CC60125E575C9C5AE1),
    .INIT_3E(256'h8CD18B738A0F88A5873685C0844682C681417FB87E2A7C977B01796677C77625),
    .INIT_3F(256'h9F199E2B9D369C399B349A29991597FB96D995B094809349920B90C67FFF8E29),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(18)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl 
       (.ADDRARDADDR({out,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI(DI),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\ch1[from_bram] ),
        .DOBDO(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(WREN),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(SR),
        .RSTRAMB(SR),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b1,1'b1,1'b1,1'b1}));
  LUT3 #(
    .INIT(8'hA3)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_12 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [15]),
        .I1(Q[15]),
        .I2(switch),
        .O(DI[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_13 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [14]),
        .I1(Q[14]),
        .I2(switch),
        .O(DI[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_14 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [13]),
        .I1(Q[13]),
        .I2(switch),
        .O(DI[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_15 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [12]),
        .I1(Q[12]),
        .I2(switch),
        .O(DI[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_16 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [11]),
        .I1(Q[11]),
        .I2(switch),
        .O(DI[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_17 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [10]),
        .I1(Q[10]),
        .I2(switch),
        .O(DI[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_18 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [9]),
        .I1(Q[9]),
        .I2(switch),
        .O(DI[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_19 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [8]),
        .I1(Q[8]),
        .I2(switch),
        .O(DI[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_20 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [7]),
        .I1(Q[7]),
        .I2(switch),
        .O(DI[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_21 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [6]),
        .I1(Q[6]),
        .I2(switch),
        .O(DI[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_22 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [5]),
        .I1(Q[5]),
        .I2(switch),
        .O(DI[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_23 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [4]),
        .I1(Q[4]),
        .I2(switch),
        .O(DI[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_24 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [3]),
        .I1(Q[3]),
        .I2(switch),
        .O(DI[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_25 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [2]),
        .I1(Q[2]),
        .I2(switch),
        .O(DI[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_26 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [1]),
        .I1(Q[1]),
        .I2(switch),
        .O(DI[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_27 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [0]),
        .I1(Q[0]),
        .I2(switch),
        .O(DI[0]));
endmodule

(* ORIG_REF_NAME = "unimacro_BRAM_SDP_MACRO" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized2
   (CO,
    switch_1_sp_1,
    s00_axi_aclk,
    WREN,
    SR,
    Q,
    ADDRBWRADDR,
    \dc_bias_reg[3]_i_7_0 ,
    S,
    switch,
    \dc_bias[2]_i_2 ,
    \dc_bias[2]_i_2_0 ,
    \sdp_bl.ramb18_dp_bl.ram18_bl_0 ,
    \sdp_bl.ramb18_dp_bl.ram18_bl_1 );
  output [0:0]CO;
  output switch_1_sp_1;
  input s00_axi_aclk;
  input WREN;
  input [0:0]SR;
  input [9:0]Q;
  input [9:0]ADDRBWRADDR;
  input [8:0]\dc_bias_reg[3]_i_7_0 ;
  input [0:0]S;
  input [2:0]switch;
  input [0:0]\dc_bias[2]_i_2 ;
  input \dc_bias[2]_i_2_0 ;
  input [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  input [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_1 ;

  wire [9:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [9:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire WREN;
  wire [15:0]\ch2[from_bram] ;
  wire [0:0]\dc_bias[2]_i_2 ;
  wire \dc_bias[2]_i_2_0 ;
  wire \dc_bias[3]_i_19__0_n_0 ;
  wire \dc_bias[3]_i_20__0_n_0 ;
  wire \dc_bias[3]_i_21__0_n_0 ;
  wire \dc_bias[3]_i_27__0_n_0 ;
  wire \dc_bias[3]_i_28_n_0 ;
  wire \dc_bias[3]_i_29__0_n_0 ;
  wire [8:0]\dc_bias_reg[3]_i_7_0 ;
  wire \dc_bias_reg[3]_i_7_n_1 ;
  wire \dc_bias_reg[3]_i_7_n_2 ;
  wire \dc_bias_reg[3]_i_7_n_3 ;
  wire s00_axi_aclk;
  wire [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  wire [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_1 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_i_10_n_0 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_i_11_n_0 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_i_12__0_n_0 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_i_13__0_n_0 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_i_14__0_n_0 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_i_15__0_n_0 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_i_16__0_n_0 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_i_1_n_0 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_i_2_n_0 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_i_3_n_0 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_i_4_n_0 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_i_5_n_0 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_i_6_n_0 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_i_7_n_0 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_i_8_n_0 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_i_9_n_0 ;
  wire [2:0]switch;
  wire switch_1_sn_1;
  wire [3:0]\NLW_dc_bias_reg[3]_i_7_O_UNCONNECTED ;
  wire [15:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED ;

  assign switch_1_sp_1 = switch_1_sn_1;
  LUT5 #(
    .INIT(32'hFFFF0777)) 
    \dc_bias[2]_i_4 
       (.I0(CO),
        .I1(switch[1]),
        .I2(\dc_bias[2]_i_2 ),
        .I3(switch[0]),
        .I4(\dc_bias[2]_i_2_0 ),
        .O(switch_1_sn_1));
  LUT6 #(
    .INIT(64'h8200002800828200)) 
    \dc_bias[3]_i_19__0 
       (.I0(\dc_bias[3]_i_27__0_n_0 ),
        .I1(\dc_bias_reg[3]_i_7_0 [8]),
        .I2(\ch2[from_bram] [15]),
        .I3(\dc_bias[3]_i_28_n_0 ),
        .I4(\ch2[from_bram] [14]),
        .I5(\dc_bias_reg[3]_i_7_0 [7]),
        .O(\dc_bias[3]_i_19__0_n_0 ));
  LUT4 #(
    .INIT(16'h9600)) 
    \dc_bias[3]_i_20__0 
       (.I0(\ch2[from_bram] [9]),
        .I1(\ch2[from_bram] [10]),
        .I2(\dc_bias_reg[3]_i_7_0 [3]),
        .I3(\dc_bias[3]_i_29__0_n_0 ),
        .O(\dc_bias[3]_i_20__0_n_0 ));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    \dc_bias[3]_i_21__0 
       (.I0(\ch2[from_bram] [7]),
        .I1(\dc_bias_reg[3]_i_7_0 [0]),
        .I2(\dc_bias_reg[3]_i_7_0 [2]),
        .I3(\ch2[from_bram] [9]),
        .I4(\dc_bias_reg[3]_i_7_0 [1]),
        .I5(\ch2[from_bram] [8]),
        .O(\dc_bias[3]_i_21__0_n_0 ));
  LUT6 #(
    .INIT(64'h9696969696969666)) 
    \dc_bias[3]_i_27__0 
       (.I0(\dc_bias_reg[3]_i_7_0 [6]),
        .I1(\ch2[from_bram] [13]),
        .I2(\ch2[from_bram] [12]),
        .I3(\ch2[from_bram] [11]),
        .I4(\ch2[from_bram] [9]),
        .I5(\ch2[from_bram] [10]),
        .O(\dc_bias[3]_i_27__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    \dc_bias[3]_i_28 
       (.I0(\ch2[from_bram] [10]),
        .I1(\ch2[from_bram] [9]),
        .I2(\ch2[from_bram] [11]),
        .I3(\ch2[from_bram] [12]),
        .I4(\ch2[from_bram] [13]),
        .O(\dc_bias[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0002999499940002)) 
    \dc_bias[3]_i_29__0 
       (.I0(\dc_bias_reg[3]_i_7_0 [4]),
        .I1(\ch2[from_bram] [11]),
        .I2(\ch2[from_bram] [9]),
        .I3(\ch2[from_bram] [10]),
        .I4(\ch2[from_bram] [12]),
        .I5(\dc_bias_reg[3]_i_7_0 [5]),
        .O(\dc_bias[3]_i_29__0_n_0 ));
  CARRY4 \dc_bias_reg[3]_i_7 
       (.CI(1'b0),
        .CO({CO,\dc_bias_reg[3]_i_7_n_1 ,\dc_bias_reg[3]_i_7_n_2 ,\dc_bias_reg[3]_i_7_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_dc_bias_reg[3]_i_7_O_UNCONNECTED [3:0]),
        .S({S,\dc_bias[3]_i_19__0_n_0 ,\dc_bias[3]_i_20__0_n_0 ,\dc_bias[3]_i_21__0_n_0 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hE268E1E7E165E0E2E05FDFDADF54DECEDE46DDBEDD35DCAADC1FDB93DB06DA79),
    .INIT_01(256'hE9F4E983E910E89DE829E7B3E73DE6C6E64DE5D4E55AE4DFE463E3E5E367E2E8),
    .INIT_02(256'hF07AF01AEFB8EF56EEF2EE8DEE28EDC1ED59ECF0EC86EC1BEBAFEB41EAD3EA64),
    .INIT_03(256'hF5ECF59DF54EF4FDF4AAF457F403F3ADF357F2FFF2A6F24CF1F1F195F138F0DA),
    .INIT_04(256'hFA3BF9FFF9C2F983F943F902F8C0F87DF839F7F3F7ACF765F71CF6D1F686F63A),
    .INIT_05(256'hFD5DFD34FD0AFCDEFCB2FC84FC54FC24FBF3FBC0FB8CFB57FB20FAE9FAB0FA76),
    .INIT_06(256'hFF4BFF35FF1EFF06FEEDFED2FEB6FE99FE7BFE5CFE3BFE19FDF6FDD2FDACFD85),
    .INIT_07(256'hFFFFFFFDFFF9FFF5FFEFFFE8FFE0FFD7FFCCFFC0FFB3FFA5FF95FF85FF73FF5F),
    .INIT_08(256'h8BC28AF98A31896988A087D8870F8647857E84B583EC8323825A819180C88000),
    .INIT_09(256'h9830976A96A595DF95199452938C92C591FE913790708FA98EE18E198D528C8A),
    .INIT_0A(256'hA462A3A2A2E0A21FA15DA09B9FD89F169E529D8F9CCB9C079B439A7F99BA98F5),
    .INIT_0B(256'hB03BAF81AEC6AE0BAD4FAC93ABD6AB19AA5CA99EA8E0A821A762A6A3A5E3A523),
    .INIT_0C(256'hBB9DBAEBBA39B985B8D2B81DB768B6B3B5FDB547B490B3D8B320B268B1AFB0F5),
    .INIT_0D(256'hC66DC5C5C51CC472C3C8C31DC272C1C6C119C06CBFBEBF0FBE60BDB0BD00BC4F),
    .INIT_0E(256'hD08FCFF2CF55CEB7CE18CD78CCD8CC37CB95CAF2CA4FC9ABC907C861C7BBC714),
    .INIT_0F(256'hD9EAD95BD8CAD839D7A7D714D681D5ECD557D4C1D42AD392D2F9D260D1C5D12A),
    .INIT_10(256'hFF77FF89FF99FFA9FFB7FFC3FFCFFFD9FFE2FFEAFFF1FFF6FFFAFFFDFFFFFFFF),
    .INIT_11(256'hFDB6FDDBFDFFFE22FE44FE64FE83FEA1FEBEFED9FEF3FF0DFF24FF3BFF50FF64),
    .INIT_12(256'hFABFFAF7FB2FFB65FB99FBCDFC00FC31FC61FC90FCBDFCEAFD15FD3FFD68FD90),
    .INIT_13(256'hF69AF6E5F72FF777F7BFF805F84BF88FF8D2F913F954F993F9D2FA0FFA4BFA86),
    .INIT_14(256'hF150F1ADF209F264F2BDF316F36DF3C4F419F46DF4C0F512F562F5B2F600F64E),
    .INIT_15(256'hEAF0EB5EEBCBEC37ECA1ED0BED74EDDCEE42EEA8EF0CEF70EFD2F033F093F0F2),
    .INIT_16(256'hE388E406E483E4FFE57AE5F4E66DE6E5E75CE7D2E847E8BBE92EE9A0EA11EA81),
    .INIT_17(256'hDB2BDBB8DC43DCCEDD58DDE1DE69DEF1DF77DFFCE081E104E187E209E28AE309),
    .INIT_18(256'hD1EED288D321D3B9D451D4E8D57ED613D6A7D73BD7CDD85FD8F0D980DA0FDA9E),
    .INIT_19(256'hC7E6C88CC931C9D6CA7ACB1DCBBFCC61CD02CDA2CE41CEE0CF7ED01BD0B7D153),
    .INIT_1A(256'hBD2EBDDEBE8EBF3DBFEBC099C146C1F3C29FC34AC3F4C49EC548C5F0C698C740),
    .INIT_1B(256'hB1DFB298B350B408B4BFB576B62CB6E2B797B84CB900B9B4BA67BB1ABBCCBC7D),
    .INIT_1C(256'hA615A6D5A794A853A911A9CFAA8DAB4AAC07ACC4AD80AE3CAEF7AFB1B06CB125),
    .INIT_1D(256'h99ED9AB29B769C3A9CFE9DC29E859F48A00BA0CDA18FA251A313A3D4A494A555),
    .INIT_1E(256'h8D868E4D8F158FDC90A4916B923292F993BF9486954C961296D8979E98639928),
    .INIT_1F(256'h80FD81C6828F8357842084E985B2867B8743880C88D4899D8A658B2D8BF68CBE),
    .INIT_20(256'h7472753B760376CB7794785C792579EE7AB67B7F7C487D117DDA7EA37F6C8034),
    .INIT_21(256'h680368C9698F6A556B1B6BE16CA86D6E6E356EFD6FC4708B7153721A72E273AA),
    .INIT_22(256'h5BD05C915D525E135ED55F98605A611D61E062A46367642C64F065B46679673E),
    .INIT_23(256'h4FF550B0516A522652E2539E545B551855D556935752581058CF598F5A4F5B0F),
    .INIT_24(256'h4491454345F646A9475D481248C7497C4A324AE94BA04C584D104DC84E814F3B),
    .INIT_25(256'h39BF3A673B103BBA3C643D0F3DBB3E673F143FC1406F411E41CD427D432E43DF),
    .INIT_26(256'h2F9A303730D43172321132B1335233F33495353835DB367F372437CA38703917),
    .INIT_27(256'h263B26CB275B27ED287F291229A62A3B2AD02B672BFE2C962D2F2DC82E632EFE),
    .INIT_28(256'h1DB91E3A1EBD1F401FC4204920CF215521DD226622EF237A24052491251E25AC),
    .INIT_29(256'h162A169B170E178117F6186B18E2195919D21A4B1AC61B411BBE1C3B1CBA1D39),
    .INIT_2A(256'h0F9E0FFF106110C41128118D11F3125A12C2132C13961401146E14DB154A15B9),
    .INIT_2B(256'h0A280A770AC70B190B6B0BBF0C130C690CC00D180D710DCB0E260E830EE00F3F),
    .INIT_2C(256'h05D40611064E068D06CD070F0751079507D9081F086608AE08F80942098E09DA),
    .INIT_2D(256'h02AD02D70301032D035A038803B803E9041A044E048204B704EE0526055F0599),
    .INIT_2E(256'h00BB00D100E80100011A01350151016E018D01AD01CE01F002130238025E0285),
    .INIT_2F(256'h000200040008000C0012001A0022002C003700430050005F006F0080009200A6),
    .INIT_30(256'h008400730062005400460039002E0024001B0014000E00090005000200010001),
    .INIT_31(256'h0240021B01F801D501B4019401750157013B0120010600ED00D600BF00AA0097),
    .INIT_32(256'h053204FA04C3048E0459042603F403C3039303640337030B02E002B6028E0266),
    .INIT_33(256'h0953090808BE0876082F07E907A40760071D06DC069B065C061E05E105A6056B),
    .INIT_34(256'h0E970E3B0DDF0D850D2B0CD30C7C0C260BD10B7D0B2B0AD90A890A3A09EB099E),
    .INIT_35(256'h14F31486141913AE134312DA1271120A11A3113E10DA107710150FB40F540EF5),
    .INIT_36(256'h1C571BD91B5D1AE11A6619ED197418FC18851810179B172716B4164315D21562),
    .INIT_37(256'h24B024242398230E228421FB217320EC20661FE11F5D1EDA1E571DD61D551CD6),
    .INIT_38(256'h2DEA2D512CB82C1F2B882AF12A5C29C72933289F280D277B26EB265B25CC253E),
    .INIT_39(256'h37EF374936A435FF355C34B93417337532D53235319630F730592FBC2F202E85),
    .INIT_3A(256'h42A441F4414540963FE83F3A3E8D3DE13D353C8A3BDF3B363A8C39E4393C3895),
    .INIT_3B(256'h4DF14D384C804BC94B114A5B49A448EF483A478546D1461D456A44B844064355),
    .INIT_3C(256'h59B958FA583B577C56BD55FF5542548453C8530B524F519450D9501E4F644EAA),
    .INIT_3D(256'h65E0651B6457639362CF620B614860855FC35F005E3E5D7D5CBB5BFA5B3A5A79),
    .INIT_3E(256'h7247717F70B76FF06F296E616D9A6CD46C0D6B476A8069BA68F5682F676A66A5),
    .INIT_3F(256'h7ECF7E067D3D7C747BAC7AE37A1A7951788977C076F7762F7567749F73D6730E),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(18)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl 
       (.ADDRARDADDR({Q,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({\sdp_bl.ramb18_dp_bl.ram18_bl_i_1_n_0 ,\sdp_bl.ramb18_dp_bl.ram18_bl_i_2_n_0 ,\sdp_bl.ramb18_dp_bl.ram18_bl_i_3_n_0 ,\sdp_bl.ramb18_dp_bl.ram18_bl_i_4_n_0 ,\sdp_bl.ramb18_dp_bl.ram18_bl_i_5_n_0 ,\sdp_bl.ramb18_dp_bl.ram18_bl_i_6_n_0 ,\sdp_bl.ramb18_dp_bl.ram18_bl_i_7_n_0 ,\sdp_bl.ramb18_dp_bl.ram18_bl_i_8_n_0 ,\sdp_bl.ramb18_dp_bl.ram18_bl_i_9_n_0 ,\sdp_bl.ramb18_dp_bl.ram18_bl_i_10_n_0 ,\sdp_bl.ramb18_dp_bl.ram18_bl_i_11_n_0 ,\sdp_bl.ramb18_dp_bl.ram18_bl_i_12__0_n_0 ,\sdp_bl.ramb18_dp_bl.ram18_bl_i_13__0_n_0 ,\sdp_bl.ramb18_dp_bl.ram18_bl_i_14__0_n_0 ,\sdp_bl.ramb18_dp_bl.ram18_bl_i_15__0_n_0 ,\sdp_bl.ramb18_dp_bl.ram18_bl_i_16__0_n_0 }),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\ch2[from_bram] ),
        .DOBDO(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(WREN),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(SR),
        .RSTRAMB(SR),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b1,1'b1,1'b1,1'b1}));
  LUT3 #(
    .INIT(8'hA3)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_1 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [15]),
        .I1(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [15]),
        .I2(switch[2]),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_10 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [6]),
        .I1(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [6]),
        .I2(switch[2]),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_11 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [5]),
        .I1(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [5]),
        .I2(switch[2]),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_12__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [4]),
        .I1(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [4]),
        .I2(switch[2]),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_i_12__0_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_13__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [3]),
        .I1(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [3]),
        .I2(switch[2]),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_i_13__0_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_14__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [2]),
        .I1(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [2]),
        .I2(switch[2]),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_i_14__0_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_15__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [1]),
        .I1(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [1]),
        .I2(switch[2]),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_i_15__0_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_16__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [0]),
        .I1(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [0]),
        .I2(switch[2]),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_i_16__0_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_2 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [14]),
        .I1(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [14]),
        .I2(switch[2]),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_3 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [13]),
        .I1(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [13]),
        .I2(switch[2]),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_4 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [12]),
        .I1(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [12]),
        .I2(switch[2]),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_5 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [11]),
        .I1(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [11]),
        .I2(switch[2]),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_6 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [10]),
        .I1(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [10]),
        .I2(switch[2]),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_7 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [9]),
        .I1(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [9]),
        .I2(switch[2]),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_8 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [8]),
        .I1(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [8]),
        .I2(switch[2]),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_9 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [7]),
        .I1(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [7]),
        .I2(switch[2]),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_i_9_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga
   (h_blank_is_low,
    h_sync_is_low,
    Q,
    \processQ_reg[9] ,
    \processQ_reg[9]_0 ,
    \processQ_reg[9]_1 ,
    \process_q_reg[10] ,
    \processQ_reg[9]_2 ,
    \processQ_reg[9]_3 ,
    \processQ_reg[9]_4 ,
    \processQ_reg[9]_5 ,
    \processQ_reg[9]_6 ,
    v_blank_is_low,
    D,
    switch_1_sp_1,
    switch_0_sp_1,
    \process_q_reg[1] ,
    \process_q_reg[1]_0 ,
    \processQ_reg[9]_7 ,
    \switch[0]_0 ,
    \switch[1]_0 ,
    h_sync_is_low_reg,
    h_blank_is_low_reg,
    v_blank_is_low_reg,
    \dc_bias_reg[3] ,
    SR,
    \dc_bias_reg[3]_0 ,
    \dc_bias_reg[3]_1 ,
    \processQ_reg[0] ,
    \processQ_reg[2] ,
    \switch[0]_1 ,
    \processQ_reg[9]_8 ,
    \switch[1]_1 ,
    \switch[1]_2 ,
    \process_q_reg[1]_1 ,
    \processQ_reg[1] ,
    \processQ_reg[1]_0 ,
    \processQ_reg[2]_0 ,
    \processQ_reg[9]_9 ,
    \process_q_reg[1]_2 ,
    \processQ_reg[1]_1 ,
    \processQ_reg[1]_2 ,
    \processQ_reg[2]_1 ,
    \switch[1]_3 ,
    \processQ_reg[2]_2 ,
    \processQ_reg[2]_3 ,
    \processQ_reg[9]_10 ,
    CLK,
    is_trigger_volt4_carry__0,
    is_trigger_volt4_carry__0_0,
    \dc_bias[3]_i_15__0 ,
    \dc_bias[3]_i_15__0_0 ,
    \is_trigger_volt4_inferred__0/i__carry__0 ,
    \is_trigger_volt4_inferred__0/i__carry__0_0 ,
    \dc_bias[3]_i_16__0 ,
    \dc_bias[3]_i_16__0_0 ,
    is_trigger_volt2_carry__0,
    q,
    \dc_bias[3]_i_16__0_1 ,
    \dc_bias[3]_i_16__0_2 ,
    DI,
    \is_trigger_volt5_inferred__0/i__carry__0 ,
    \dc_bias[3]_i_15__0_1 ,
    \dc_bias[3]_i_15__0_2 ,
    \is_trigger_volt4_inferred__1/i__carry__0 ,
    \is_trigger_volt4_inferred__1/i__carry__0_0 ,
    \dc_bias[3]_i_15__0_3 ,
    S,
    is_trigger_time4_carry__0,
    is_trigger_time4_carry__0_0,
    \dc_bias[3]_i_23 ,
    \dc_bias[3]_i_23_0 ,
    \is_trigger_time4_inferred__0/i__carry__0 ,
    \is_trigger_time4_inferred__0/i__carry__0_0 ,
    \dc_bias[3]_i_14 ,
    \dc_bias[3]_i_14_0 ,
    is_trigger_time2_carry__0,
    \dc_bias[3]_i_13__0 ,
    \dc_bias[3]_i_13__0_0 ,
    \is_trigger_time5_inferred__0/i__carry__0 ,
    \is_trigger_time5_inferred__0/i__carry__0_0 ,
    \dc_bias[3]_i_23_1 ,
    \dc_bias[3]_i_23_2 ,
    \is_trigger_time4_inferred__1/i__carry__0 ,
    \is_trigger_time4_inferred__1/i__carry__0_0 ,
    \dc_bias[3]_i_23_3 ,
    \dc_bias[3]_i_23_4 ,
    \encoded_reg[0] ,
    \encoded_reg[0]_0 ,
    s00_axi_aresetn,
    \encoded_reg[4] ,
    \encoded_reg[4]_0 ,
    \encoded_reg[2] ,
    \dc_bias_reg[3]_2 ,
    \dc_bias_reg[3]_3 ,
    \dc_bias_reg[3]_4 ,
    CO,
    switch,
    \encoded_reg[4]_1 ,
    \encoded_reg[8] ,
    \dc_bias[3]_i_2 ,
    \dc_bias[3]_i_2_0 ,
    \dc_bias[3]_i_8 ,
    \dc_bias[3]_i_8_0 ,
    \dc_bias[3]_i_8_1 ,
    \processQ_reg[0]_0 );
  output h_blank_is_low;
  output h_sync_is_low;
  output [9:0]Q;
  output [9:0]\processQ_reg[9] ;
  output [0:0]\processQ_reg[9]_0 ;
  output [0:0]\processQ_reg[9]_1 ;
  output [0:0]\process_q_reg[10] ;
  output [0:0]\processQ_reg[9]_2 ;
  output [0:0]\processQ_reg[9]_3 ;
  output [0:0]\processQ_reg[9]_4 ;
  output [0:0]\processQ_reg[9]_5 ;
  output [0:0]\processQ_reg[9]_6 ;
  output v_blank_is_low;
  output [1:0]D;
  output switch_1_sp_1;
  output switch_0_sp_1;
  output [0:0]\process_q_reg[1] ;
  output [0:0]\process_q_reg[1]_0 ;
  output \processQ_reg[9]_7 ;
  output \switch[0]_0 ;
  output \switch[1]_0 ;
  output [3:0]h_sync_is_low_reg;
  output h_blank_is_low_reg;
  output v_blank_is_low_reg;
  output [1:0]\dc_bias_reg[3] ;
  output [0:0]SR;
  output [0:0]\dc_bias_reg[3]_0 ;
  output \dc_bias_reg[3]_1 ;
  output \processQ_reg[0] ;
  output \processQ_reg[2] ;
  output \switch[0]_1 ;
  output \processQ_reg[9]_8 ;
  output \switch[1]_1 ;
  output \switch[1]_2 ;
  output [0:0]\process_q_reg[1]_1 ;
  output [0:0]\processQ_reg[1] ;
  output [0:0]\processQ_reg[1]_0 ;
  output [1:0]\processQ_reg[2]_0 ;
  output [0:0]\processQ_reg[9]_9 ;
  output [0:0]\process_q_reg[1]_2 ;
  output [0:0]\processQ_reg[1]_1 ;
  output [0:0]\processQ_reg[1]_2 ;
  output [1:0]\processQ_reg[2]_1 ;
  output \switch[1]_3 ;
  output [1:0]\processQ_reg[2]_2 ;
  output [1:0]\processQ_reg[2]_3 ;
  output [0:0]\processQ_reg[9]_10 ;
  input CLK;
  input [2:0]is_trigger_volt4_carry__0;
  input [2:0]is_trigger_volt4_carry__0_0;
  input [0:0]\dc_bias[3]_i_15__0 ;
  input [1:0]\dc_bias[3]_i_15__0_0 ;
  input [2:0]\is_trigger_volt4_inferred__0/i__carry__0 ;
  input [2:0]\is_trigger_volt4_inferred__0/i__carry__0_0 ;
  input [0:0]\dc_bias[3]_i_16__0 ;
  input [1:0]\dc_bias[3]_i_16__0_0 ;
  input [2:0]is_trigger_volt2_carry__0;
  input [9:0]q;
  input [0:0]\dc_bias[3]_i_16__0_1 ;
  input [0:0]\dc_bias[3]_i_16__0_2 ;
  input [1:0]DI;
  input [1:0]\is_trigger_volt5_inferred__0/i__carry__0 ;
  input [0:0]\dc_bias[3]_i_15__0_1 ;
  input [1:0]\dc_bias[3]_i_15__0_2 ;
  input [3:0]\is_trigger_volt4_inferred__1/i__carry__0 ;
  input [1:0]\is_trigger_volt4_inferred__1/i__carry__0_0 ;
  input [0:0]\dc_bias[3]_i_15__0_3 ;
  input [1:0]S;
  input [2:0]is_trigger_time4_carry__0;
  input [2:0]is_trigger_time4_carry__0_0;
  input [0:0]\dc_bias[3]_i_23 ;
  input [1:0]\dc_bias[3]_i_23_0 ;
  input [2:0]\is_trigger_time4_inferred__0/i__carry__0 ;
  input [2:0]\is_trigger_time4_inferred__0/i__carry__0_0 ;
  input [0:0]\dc_bias[3]_i_14 ;
  input [1:0]\dc_bias[3]_i_14_0 ;
  input [2:0]is_trigger_time2_carry__0;
  input [9:0]\dc_bias[3]_i_13__0 ;
  input [1:0]\dc_bias[3]_i_13__0_0 ;
  input [1:0]\is_trigger_time5_inferred__0/i__carry__0 ;
  input [1:0]\is_trigger_time5_inferred__0/i__carry__0_0 ;
  input [0:0]\dc_bias[3]_i_23_1 ;
  input [1:0]\dc_bias[3]_i_23_2 ;
  input [3:0]\is_trigger_time4_inferred__1/i__carry__0 ;
  input [1:0]\is_trigger_time4_inferred__1/i__carry__0_0 ;
  input [0:0]\dc_bias[3]_i_23_3 ;
  input [1:0]\dc_bias[3]_i_23_4 ;
  input \encoded_reg[0] ;
  input [2:0]\encoded_reg[0]_0 ;
  input s00_axi_aresetn;
  input [0:0]\encoded_reg[4] ;
  input \encoded_reg[4]_0 ;
  input [0:0]\encoded_reg[2] ;
  input \dc_bias_reg[3]_2 ;
  input \dc_bias_reg[3]_3 ;
  input \dc_bias_reg[3]_4 ;
  input [0:0]CO;
  input [1:0]switch;
  input [0:0]\encoded_reg[4]_1 ;
  input \encoded_reg[8] ;
  input \dc_bias[3]_i_2 ;
  input \dc_bias[3]_i_2_0 ;
  input [0:0]\dc_bias[3]_i_8 ;
  input [0:0]\dc_bias[3]_i_8_0 ;
  input \dc_bias[3]_i_8_1 ;
  input [0:0]\processQ_reg[0]_0 ;

  wire CLK;
  wire [0:0]CO;
  wire [1:0]D;
  wire [1:0]DI;
  wire [9:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire [9:0]\dc_bias[3]_i_13__0 ;
  wire [1:0]\dc_bias[3]_i_13__0_0 ;
  wire [0:0]\dc_bias[3]_i_14 ;
  wire [1:0]\dc_bias[3]_i_14_0 ;
  wire [0:0]\dc_bias[3]_i_15__0 ;
  wire [1:0]\dc_bias[3]_i_15__0_0 ;
  wire [0:0]\dc_bias[3]_i_15__0_1 ;
  wire [1:0]\dc_bias[3]_i_15__0_2 ;
  wire [0:0]\dc_bias[3]_i_15__0_3 ;
  wire [0:0]\dc_bias[3]_i_16__0 ;
  wire [1:0]\dc_bias[3]_i_16__0_0 ;
  wire [0:0]\dc_bias[3]_i_16__0_1 ;
  wire [0:0]\dc_bias[3]_i_16__0_2 ;
  wire \dc_bias[3]_i_2 ;
  wire [0:0]\dc_bias[3]_i_23 ;
  wire [1:0]\dc_bias[3]_i_23_0 ;
  wire [0:0]\dc_bias[3]_i_23_1 ;
  wire [1:0]\dc_bias[3]_i_23_2 ;
  wire [0:0]\dc_bias[3]_i_23_3 ;
  wire [1:0]\dc_bias[3]_i_23_4 ;
  wire \dc_bias[3]_i_2_0 ;
  wire [0:0]\dc_bias[3]_i_8 ;
  wire [0:0]\dc_bias[3]_i_8_0 ;
  wire \dc_bias[3]_i_8_1 ;
  wire [1:0]\dc_bias_reg[3] ;
  wire [0:0]\dc_bias_reg[3]_0 ;
  wire \dc_bias_reg[3]_1 ;
  wire \dc_bias_reg[3]_2 ;
  wire \dc_bias_reg[3]_3 ;
  wire \dc_bias_reg[3]_4 ;
  wire \encoded_reg[0] ;
  wire [2:0]\encoded_reg[0]_0 ;
  wire [0:0]\encoded_reg[2] ;
  wire [0:0]\encoded_reg[4] ;
  wire \encoded_reg[4]_0 ;
  wire [0:0]\encoded_reg[4]_1 ;
  wire \encoded_reg[8] ;
  wire h_blank_is_low;
  wire h_blank_is_low_reg;
  wire h_sync_is_low;
  wire [3:0]h_sync_is_low_reg;
  wire inst_color_mapper_n_0;
  wire inst_color_mapper_n_1;
  wire inst_color_mapper_n_10;
  wire inst_color_mapper_n_11;
  wire inst_color_mapper_n_12;
  wire inst_color_mapper_n_13;
  wire inst_color_mapper_n_2;
  wire inst_color_mapper_n_24;
  wire inst_color_mapper_n_25;
  wire inst_color_mapper_n_3;
  wire inst_color_mapper_n_4;
  wire inst_color_mapper_n_5;
  wire inst_color_mapper_n_6;
  wire inst_color_mapper_n_7;
  wire inst_color_mapper_n_8;
  wire inst_color_mapper_n_9;
  wire inst_vga_signal_gen_n_100;
  wire inst_vga_signal_gen_n_101;
  wire inst_vga_signal_gen_n_102;
  wire inst_vga_signal_gen_n_103;
  wire inst_vga_signal_gen_n_104;
  wire inst_vga_signal_gen_n_105;
  wire inst_vga_signal_gen_n_106;
  wire inst_vga_signal_gen_n_107;
  wire inst_vga_signal_gen_n_108;
  wire inst_vga_signal_gen_n_109;
  wire inst_vga_signal_gen_n_110;
  wire inst_vga_signal_gen_n_111;
  wire inst_vga_signal_gen_n_112;
  wire inst_vga_signal_gen_n_116;
  wire inst_vga_signal_gen_n_120;
  wire inst_vga_signal_gen_n_121;
  wire inst_vga_signal_gen_n_122;
  wire inst_vga_signal_gen_n_123;
  wire inst_vga_signal_gen_n_124;
  wire inst_vga_signal_gen_n_125;
  wire inst_vga_signal_gen_n_126;
  wire inst_vga_signal_gen_n_127;
  wire inst_vga_signal_gen_n_128;
  wire inst_vga_signal_gen_n_132;
  wire inst_vga_signal_gen_n_136;
  wire inst_vga_signal_gen_n_137;
  wire inst_vga_signal_gen_n_138;
  wire inst_vga_signal_gen_n_139;
  wire inst_vga_signal_gen_n_140;
  wire inst_vga_signal_gen_n_141;
  wire inst_vga_signal_gen_n_144;
  wire inst_vga_signal_gen_n_147;
  wire inst_vga_signal_gen_n_149;
  wire inst_vga_signal_gen_n_150;
  wire inst_vga_signal_gen_n_151;
  wire inst_vga_signal_gen_n_152;
  wire inst_vga_signal_gen_n_153;
  wire inst_vga_signal_gen_n_154;
  wire inst_vga_signal_gen_n_155;
  wire inst_vga_signal_gen_n_21;
  wire inst_vga_signal_gen_n_22;
  wire inst_vga_signal_gen_n_23;
  wire inst_vga_signal_gen_n_24;
  wire inst_vga_signal_gen_n_3;
  wire inst_vga_signal_gen_n_35;
  wire inst_vga_signal_gen_n_36;
  wire inst_vga_signal_gen_n_37;
  wire inst_vga_signal_gen_n_38;
  wire inst_vga_signal_gen_n_39;
  wire inst_vga_signal_gen_n_4;
  wire inst_vga_signal_gen_n_40;
  wire inst_vga_signal_gen_n_41;
  wire inst_vga_signal_gen_n_42;
  wire inst_vga_signal_gen_n_43;
  wire inst_vga_signal_gen_n_44;
  wire inst_vga_signal_gen_n_45;
  wire inst_vga_signal_gen_n_46;
  wire inst_vga_signal_gen_n_47;
  wire inst_vga_signal_gen_n_48;
  wire inst_vga_signal_gen_n_49;
  wire inst_vga_signal_gen_n_5;
  wire inst_vga_signal_gen_n_50;
  wire inst_vga_signal_gen_n_51;
  wire inst_vga_signal_gen_n_52;
  wire inst_vga_signal_gen_n_53;
  wire inst_vga_signal_gen_n_54;
  wire inst_vga_signal_gen_n_55;
  wire inst_vga_signal_gen_n_56;
  wire inst_vga_signal_gen_n_57;
  wire inst_vga_signal_gen_n_58;
  wire inst_vga_signal_gen_n_59;
  wire inst_vga_signal_gen_n_6;
  wire inst_vga_signal_gen_n_60;
  wire inst_vga_signal_gen_n_61;
  wire inst_vga_signal_gen_n_62;
  wire inst_vga_signal_gen_n_64;
  wire inst_vga_signal_gen_n_65;
  wire inst_vga_signal_gen_n_70;
  wire inst_vga_signal_gen_n_71;
  wire inst_vga_signal_gen_n_72;
  wire inst_vga_signal_gen_n_73;
  wire inst_vga_signal_gen_n_74;
  wire inst_vga_signal_gen_n_75;
  wire inst_vga_signal_gen_n_97;
  wire inst_vga_signal_gen_n_98;
  wire inst_vga_signal_gen_n_99;
  wire is_trigger_time2;
  wire [2:0]is_trigger_time2_carry__0;
  wire is_trigger_time4;
  wire [2:0]is_trigger_time4_carry__0;
  wire [2:0]is_trigger_time4_carry__0_0;
  wire [2:0]\is_trigger_time4_inferred__0/i__carry__0 ;
  wire [2:0]\is_trigger_time4_inferred__0/i__carry__0_0 ;
  wire [3:0]\is_trigger_time4_inferred__1/i__carry__0 ;
  wire [1:0]\is_trigger_time4_inferred__1/i__carry__0_0 ;
  wire [1:0]\is_trigger_time5_inferred__0/i__carry__0 ;
  wire [1:0]\is_trigger_time5_inferred__0/i__carry__0_0 ;
  wire [2:0]is_trigger_volt2_carry__0;
  wire [2:0]is_trigger_volt4_carry__0;
  wire [2:0]is_trigger_volt4_carry__0_0;
  wire [2:0]\is_trigger_volt4_inferred__0/i__carry__0 ;
  wire [2:0]\is_trigger_volt4_inferred__0/i__carry__0_0 ;
  wire [3:0]\is_trigger_volt4_inferred__1/i__carry__0 ;
  wire [1:0]\is_trigger_volt4_inferred__1/i__carry__0_0 ;
  wire [1:0]\is_trigger_volt5_inferred__0/i__carry__0 ;
  wire [6:2]minusOp;
  wire \processQ_reg[0] ;
  wire [0:0]\processQ_reg[0]_0 ;
  wire [0:0]\processQ_reg[1] ;
  wire [0:0]\processQ_reg[1]_0 ;
  wire [0:0]\processQ_reg[1]_1 ;
  wire [0:0]\processQ_reg[1]_2 ;
  wire \processQ_reg[2] ;
  wire [1:0]\processQ_reg[2]_0 ;
  wire [1:0]\processQ_reg[2]_1 ;
  wire [1:0]\processQ_reg[2]_2 ;
  wire [1:0]\processQ_reg[2]_3 ;
  wire [9:0]\processQ_reg[9] ;
  wire [0:0]\processQ_reg[9]_0 ;
  wire [0:0]\processQ_reg[9]_1 ;
  wire [0:0]\processQ_reg[9]_10 ;
  wire [0:0]\processQ_reg[9]_2 ;
  wire [0:0]\processQ_reg[9]_3 ;
  wire [0:0]\processQ_reg[9]_4 ;
  wire [0:0]\processQ_reg[9]_5 ;
  wire [0:0]\processQ_reg[9]_6 ;
  wire \processQ_reg[9]_7 ;
  wire \processQ_reg[9]_8 ;
  wire [0:0]\processQ_reg[9]_9 ;
  wire [0:0]\process_q_reg[10] ;
  wire [0:0]\process_q_reg[1] ;
  wire [0:0]\process_q_reg[1]_0 ;
  wire [0:0]\process_q_reg[1]_1 ;
  wire [0:0]\process_q_reg[1]_2 ;
  wire [9:0]q;
  wire s00_axi_aresetn;
  wire [1:0]switch;
  wire \switch[0]_0 ;
  wire \switch[0]_1 ;
  wire \switch[1]_0 ;
  wire \switch[1]_1 ;
  wire \switch[1]_2 ;
  wire \switch[1]_3 ;
  wire switch_0_sn_1;
  wire switch_1_sn_1;
  wire v_blank_is_low;
  wire v_blank_is_low_reg;

  assign switch_0_sp_1 = switch_0_sn_1;
  assign switch_1_sp_1 = switch_1_sn_1;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_color_mapper inst_color_mapper
       (.CO(inst_color_mapper_n_1),
        .DI({inst_vga_signal_gen_n_136,inst_vga_signal_gen_n_137,Q[0]}),
        .O(inst_color_mapper_n_0),
        .S({inst_vga_signal_gen_n_39,inst_vga_signal_gen_n_40,inst_vga_signal_gen_n_41,inst_vga_signal_gen_n_42}),
        .\dc_bias[2]_i_10_0 ({inst_vga_signal_gen_n_55,inst_vga_signal_gen_n_56}),
        .\dc_bias[2]_i_10_1 ({inst_vga_signal_gen_n_49,inst_vga_signal_gen_n_50,inst_vga_signal_gen_n_51}),
        .\dc_bias[2]_i_11_0 ({inst_vga_signal_gen_n_43,inst_vga_signal_gen_n_44}),
        .\dc_bias[2]_i_24_0 ({inst_vga_signal_gen_n_97,inst_vga_signal_gen_n_98,\processQ_reg[9] [0]}),
        .\dc_bias[2]_i_24_1 ({inst_vga_signal_gen_n_57,inst_vga_signal_gen_n_58,inst_vga_signal_gen_n_59,inst_vga_signal_gen_n_60}),
        .\dc_bias[2]_i_5 (inst_vga_signal_gen_n_38),
        .\dc_bias[2]_i_5_0 (inst_vga_signal_gen_n_138),
        .\dc_bias[2]_i_5_1 ({inst_vga_signal_gen_n_21,inst_vga_signal_gen_n_22,inst_vga_signal_gen_n_23,inst_vga_signal_gen_n_24}),
        .\dc_bias[3]_i_13__0 ({\dc_bias[3]_i_13__0 [9],inst_vga_signal_gen_n_132}),
        .\dc_bias[3]_i_13__0_0 (\dc_bias[3]_i_13__0_0 ),
        .\dc_bias[3]_i_14 (\dc_bias[3]_i_14 ),
        .\dc_bias[3]_i_14_0 (\dc_bias[3]_i_14_0 ),
        .\dc_bias[3]_i_15__0 (\dc_bias[3]_i_15__0 ),
        .\dc_bias[3]_i_15__0_0 (\dc_bias[3]_i_15__0_0 ),
        .\dc_bias[3]_i_15__0_1 (\dc_bias[3]_i_15__0_1 ),
        .\dc_bias[3]_i_15__0_2 (\dc_bias[3]_i_15__0_2 ),
        .\dc_bias[3]_i_15__0_3 (\dc_bias[3]_i_15__0_3 ),
        .\dc_bias[3]_i_15__0_4 (S),
        .\dc_bias[3]_i_16__0 (\dc_bias[3]_i_16__0 ),
        .\dc_bias[3]_i_16__0_0 (\dc_bias[3]_i_16__0_0 ),
        .\dc_bias[3]_i_16__0_1 ({q[9],\dc_bias[3]_i_16__0_1 }),
        .\dc_bias[3]_i_16__0_2 ({\dc_bias[3]_i_16__0_2 ,inst_vga_signal_gen_n_116}),
        .\dc_bias[3]_i_23 (\dc_bias[3]_i_23 ),
        .\dc_bias[3]_i_23_0 (\dc_bias[3]_i_23_0 ),
        .\dc_bias[3]_i_23_1 (\dc_bias[3]_i_23_1 ),
        .\dc_bias[3]_i_23_2 (\dc_bias[3]_i_23_2 ),
        .\dc_bias[3]_i_23_3 (\dc_bias[3]_i_23_3 ),
        .\dc_bias[3]_i_23_4 (\dc_bias[3]_i_23_4 ),
        .is_horizontal_gridline1__23_carry_i_3(inst_vga_signal_gen_n_155),
        .is_horizontal_gridline1__23_carry_i_3_0({inst_vga_signal_gen_n_149,inst_vga_signal_gen_n_150,inst_vga_signal_gen_n_151}),
        .is_horizontal_gridline1__23_carry_i_4({inst_color_mapper_n_11,inst_color_mapper_n_12,inst_color_mapper_n_13}),
        .is_horizontal_gridline1__23_carry_i_4_0({inst_vga_signal_gen_n_99,inst_vga_signal_gen_n_100,inst_vga_signal_gen_n_101,inst_vga_signal_gen_n_102}),
        .is_horizontal_gridline1__23_carry_i_4_1({inst_vga_signal_gen_n_3,inst_vga_signal_gen_n_4,inst_vga_signal_gen_n_5,inst_vga_signal_gen_n_6}),
        .is_horizontal_gridline1__29_carry__0_i_5(inst_vga_signal_gen_n_103),
        .is_horizontal_gridline1__29_carry__0_i_5_0({inst_vga_signal_gen_n_152,inst_vga_signal_gen_n_153,inst_vga_signal_gen_n_154}),
        .is_horizontal_gridline1_carry__0_0({inst_vga_signal_gen_n_139,inst_vga_signal_gen_n_140,inst_vga_signal_gen_n_141}),
        .is_horizontal_gridline1_carry__0_1({inst_vga_signal_gen_n_52,inst_vga_signal_gen_n_53,inst_vga_signal_gen_n_54,\processQ_reg[9] [1]}),
        .is_trigger_time2_carry__0_0({inst_vga_signal_gen_n_122,inst_vga_signal_gen_n_123,inst_vga_signal_gen_n_124,inst_vga_signal_gen_n_125}),
        .is_trigger_time2_carry__0_1({is_trigger_time2_carry__0,inst_vga_signal_gen_n_126}),
        .is_trigger_time4_carry__0_0({is_trigger_time4_carry__0,inst_vga_signal_gen_n_127}),
        .is_trigger_time4_carry__0_1({is_trigger_time4_carry__0_0,inst_vga_signal_gen_n_73}),
        .\is_trigger_time4_inferred__0/i__carry__0_0 ({\is_trigger_time4_inferred__0/i__carry__0 ,inst_vga_signal_gen_n_128}),
        .\is_trigger_time4_inferred__0/i__carry__0_1 ({\is_trigger_time4_inferred__0/i__carry__0_0 ,inst_vga_signal_gen_n_147}),
        .\is_trigger_time4_inferred__1/i__carry__0_0 (\is_trigger_time4_inferred__1/i__carry__0 ),
        .\is_trigger_time4_inferred__1/i__carry__0_1 ({\is_trigger_time4_inferred__1/i__carry__0_0 ,inst_vga_signal_gen_n_64,inst_vga_signal_gen_n_65}),
        .\is_trigger_time5_inferred__0/i__carry__0_0 ({\is_trigger_time5_inferred__0/i__carry__0 ,inst_vga_signal_gen_n_120,inst_vga_signal_gen_n_121}),
        .\is_trigger_time5_inferred__0/i__carry__0_1 ({\is_trigger_time5_inferred__0/i__carry__0_0 ,inst_vga_signal_gen_n_74,inst_vga_signal_gen_n_75}),
        .is_trigger_volt2_carry__0_0({inst_vga_signal_gen_n_106,inst_vga_signal_gen_n_107,inst_vga_signal_gen_n_108,inst_vga_signal_gen_n_109}),
        .is_trigger_volt2_carry__0_1({is_trigger_volt2_carry__0,inst_vga_signal_gen_n_110}),
        .is_trigger_volt4_carry__0_0({is_trigger_volt4_carry__0,inst_vga_signal_gen_n_111}),
        .is_trigger_volt4_carry__0_1({is_trigger_volt4_carry__0_0,inst_vga_signal_gen_n_70}),
        .\is_trigger_volt4_inferred__0/i__carry__0_0 ({\is_trigger_volt4_inferred__0/i__carry__0 ,inst_vga_signal_gen_n_112}),
        .\is_trigger_volt4_inferred__0/i__carry__0_1 ({\is_trigger_volt4_inferred__0/i__carry__0_0 ,inst_vga_signal_gen_n_144}),
        .\is_trigger_volt4_inferred__1/i__carry__0_0 (\is_trigger_volt4_inferred__1/i__carry__0 ),
        .\is_trigger_volt4_inferred__1/i__carry__0_1 ({\is_trigger_volt4_inferred__1/i__carry__0_0 ,inst_vga_signal_gen_n_61,inst_vga_signal_gen_n_62}),
        .\is_trigger_volt5_inferred__0/i__carry__0_0 ({DI,inst_vga_signal_gen_n_104,inst_vga_signal_gen_n_105}),
        .\is_trigger_volt5_inferred__0/i__carry__0_1 ({\is_trigger_volt5_inferred__0/i__carry__0 ,inst_vga_signal_gen_n_71,inst_vga_signal_gen_n_72}),
        .is_vertical_gridline1__20_carry_0(inst_color_mapper_n_24),
        .is_vertical_gridline1__20_carry_i_4(inst_vga_signal_gen_n_48),
        .is_vertical_gridline1__20_carry_i_4_0({inst_vga_signal_gen_n_35,inst_vga_signal_gen_n_36,inst_vga_signal_gen_n_37}),
        .is_vertical_gridline1__20_carry_i_4_1({inst_vga_signal_gen_n_45,inst_vga_signal_gen_n_46,inst_vga_signal_gen_n_47}),
        .minusOp({minusOp[6:5],minusOp[3:2]}),
        .\processQ_reg[1] (inst_color_mapper_n_6),
        .\processQ_reg[1]_0 (inst_color_mapper_n_25),
        .\processQ_reg[2] (inst_color_mapper_n_5),
        .\processQ_reg[9] ({inst_color_mapper_n_2,inst_color_mapper_n_3,inst_color_mapper_n_4}),
        .\processQ_reg[9]_0 (inst_color_mapper_n_7),
        .\processQ_reg[9]_1 ({inst_color_mapper_n_8,inst_color_mapper_n_9,inst_color_mapper_n_10}),
        .\processQ_reg[9]_2 (\processQ_reg[9]_0 ),
        .\processQ_reg[9]_3 (\processQ_reg[9]_1 ),
        .\processQ_reg[9]_4 (\processQ_reg[9]_2 ),
        .\processQ_reg[9]_5 (\processQ_reg[9]_3 ),
        .\processQ_reg[9]_6 (\processQ_reg[9]_4 ),
        .\processQ_reg[9]_7 (is_trigger_time4),
        .\processQ_reg[9]_8 (\processQ_reg[9]_5 ),
        .\processQ_reg[9]_9 (\processQ_reg[9]_6 ),
        .\process_q_reg[10] (\process_q_reg[10] ),
        .\process_q_reg[10]_0 (is_trigger_time2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_signal_generator inst_vga_signal_gen
       (.CLK(CLK),
        .CO(CO),
        .D(D),
        .DI({inst_vga_signal_gen_n_136,inst_vga_signal_gen_n_137}),
        .O(inst_color_mapper_n_0),
        .Q(\processQ_reg[9] ),
        .S({inst_vga_signal_gen_n_39,inst_vga_signal_gen_n_40,inst_vga_signal_gen_n_41,inst_vga_signal_gen_n_42}),
        .SR(SR),
        .\dc_bias[3]_i_10 (inst_color_mapper_n_25),
        .\dc_bias[3]_i_10_0 (inst_color_mapper_n_5),
        .\dc_bias[3]_i_10_1 (inst_color_mapper_n_24),
        .\dc_bias[3]_i_2 (\dc_bias[3]_i_2 ),
        .\dc_bias[3]_i_2_0 (\dc_bias[3]_i_2_0 ),
        .\dc_bias[3]_i_8 (is_trigger_time2),
        .\dc_bias[3]_i_8_0 (\dc_bias[3]_i_8 ),
        .\dc_bias[3]_i_8_1 (is_trigger_time4),
        .\dc_bias[3]_i_8_2 (\dc_bias[3]_i_8_0 ),
        .\dc_bias[3]_i_8_3 (\dc_bias[3]_i_8_1 ),
        .\dc_bias_reg[3] (\dc_bias_reg[3] ),
        .\dc_bias_reg[3]_0 (\dc_bias_reg[3]_0 ),
        .\dc_bias_reg[3]_1 (\dc_bias_reg[3]_1 ),
        .\dc_bias_reg[3]_2 (\dc_bias_reg[3]_2 ),
        .\dc_bias_reg[3]_3 (\dc_bias_reg[3]_3 ),
        .\dc_bias_reg[3]_4 (\dc_bias_reg[3]_4 ),
        .\encoded_reg[0] (\encoded_reg[0] ),
        .\encoded_reg[0]_0 (\encoded_reg[0]_0 ),
        .\encoded_reg[2] (\encoded_reg[2] ),
        .\encoded_reg[4] (\encoded_reg[4] ),
        .\encoded_reg[4]_0 (\encoded_reg[4]_0 ),
        .\encoded_reg[4]_1 (\encoded_reg[4]_1 ),
        .\encoded_reg[8] (\encoded_reg[8] ),
        .h_blank_is_low_reg_0(h_blank_is_low),
        .h_blank_is_low_reg_1(h_blank_is_low_reg),
        .h_sync_is_low_reg_0(h_sync_is_low),
        .h_sync_is_low_reg_1(h_sync_is_low_reg),
        .is_horizontal_gridline1__23_carry({inst_color_mapper_n_8,inst_color_mapper_n_9,inst_color_mapper_n_10}),
        .is_horizontal_gridline1__23_carry_0(inst_color_mapper_n_6),
        .is_horizontal_gridline1__23_carry_1(inst_color_mapper_n_7),
        .is_horizontal_gridline1__29_carry__0({inst_color_mapper_n_11,inst_color_mapper_n_12,inst_color_mapper_n_13}),
        .is_horizontal_gridline1_carry__0(inst_vga_signal_gen_n_103),
        .is_horizontal_gridline1_carry__0_0({inst_vga_signal_gen_n_152,inst_vga_signal_gen_n_153,inst_vga_signal_gen_n_154}),
        .is_trigger_time2_carry__0(\dc_bias[3]_i_13__0 [8:0]),
        .is_vertical_gridline1__20_carry__0({inst_color_mapper_n_2,inst_color_mapper_n_3,inst_color_mapper_n_4}),
        .is_vertical_gridline1__20_carry__0_0(inst_color_mapper_n_1),
        .minusOp({minusOp[6:5],minusOp[3:2]}),
        .\processQ_reg[0] (\processQ_reg[0] ),
        .\processQ_reg[0]_0 (inst_vga_signal_gen_n_110),
        .\processQ_reg[0]_1 (inst_vga_signal_gen_n_112),
        .\processQ_reg[0]_2 (inst_vga_signal_gen_n_126),
        .\processQ_reg[0]_3 (inst_vga_signal_gen_n_128),
        .\processQ_reg[0]_4 (\processQ_reg[0]_0 ),
        .\processQ_reg[1] (inst_vga_signal_gen_n_111),
        .\processQ_reg[1]_0 (\processQ_reg[1] ),
        .\processQ_reg[1]_1 (\processQ_reg[1]_0 ),
        .\processQ_reg[1]_2 (inst_vga_signal_gen_n_127),
        .\processQ_reg[1]_3 (\processQ_reg[1]_1 ),
        .\processQ_reg[1]_4 (\processQ_reg[1]_2 ),
        .\processQ_reg[2] (inst_vga_signal_gen_n_38),
        .\processQ_reg[2]_0 ({inst_vga_signal_gen_n_57,inst_vga_signal_gen_n_58,inst_vga_signal_gen_n_59,inst_vga_signal_gen_n_60}),
        .\processQ_reg[2]_1 ({inst_vga_signal_gen_n_61,inst_vga_signal_gen_n_62}),
        .\processQ_reg[2]_10 (\processQ_reg[2]_1 ),
        .\processQ_reg[2]_11 (inst_vga_signal_gen_n_138),
        .\processQ_reg[2]_12 ({inst_vga_signal_gen_n_139,inst_vga_signal_gen_n_140,inst_vga_signal_gen_n_141}),
        .\processQ_reg[2]_13 (\processQ_reg[2]_2 ),
        .\processQ_reg[2]_14 (\processQ_reg[2]_3 ),
        .\processQ_reg[2]_2 ({inst_vga_signal_gen_n_64,inst_vga_signal_gen_n_65}),
        .\processQ_reg[2]_3 ({inst_vga_signal_gen_n_71,inst_vga_signal_gen_n_72}),
        .\processQ_reg[2]_4 ({inst_vga_signal_gen_n_74,inst_vga_signal_gen_n_75}),
        .\processQ_reg[2]_5 (\processQ_reg[2] ),
        .\processQ_reg[2]_6 ({inst_vga_signal_gen_n_97,inst_vga_signal_gen_n_98}),
        .\processQ_reg[2]_7 ({inst_vga_signal_gen_n_104,inst_vga_signal_gen_n_105}),
        .\processQ_reg[2]_8 (\processQ_reg[2]_0 ),
        .\processQ_reg[2]_9 ({inst_vga_signal_gen_n_120,inst_vga_signal_gen_n_121}),
        .\processQ_reg[4] ({inst_vga_signal_gen_n_21,inst_vga_signal_gen_n_22,inst_vga_signal_gen_n_23,inst_vga_signal_gen_n_24}),
        .\processQ_reg[4]_0 ({inst_vga_signal_gen_n_52,inst_vga_signal_gen_n_53,inst_vga_signal_gen_n_54}),
        .\processQ_reg[5] ({inst_vga_signal_gen_n_49,inst_vga_signal_gen_n_50,inst_vga_signal_gen_n_51}),
        .\processQ_reg[5]_0 ({inst_vga_signal_gen_n_55,inst_vga_signal_gen_n_56}),
        .\processQ_reg[6] ({inst_vga_signal_gen_n_43,inst_vga_signal_gen_n_44}),
        .\processQ_reg[7] ({inst_vga_signal_gen_n_3,inst_vga_signal_gen_n_4,inst_vga_signal_gen_n_5,inst_vga_signal_gen_n_6}),
        .\processQ_reg[7]_0 ({inst_vga_signal_gen_n_106,inst_vga_signal_gen_n_107,inst_vga_signal_gen_n_108,inst_vga_signal_gen_n_109}),
        .\processQ_reg[7]_1 ({inst_vga_signal_gen_n_122,inst_vga_signal_gen_n_123,inst_vga_signal_gen_n_124,inst_vga_signal_gen_n_125}),
        .\processQ_reg[8] ({inst_vga_signal_gen_n_35,inst_vga_signal_gen_n_36,inst_vga_signal_gen_n_37}),
        .\processQ_reg[8]_0 (inst_vga_signal_gen_n_48),
        .\processQ_reg[8]_1 ({inst_vga_signal_gen_n_99,inst_vga_signal_gen_n_100,inst_vga_signal_gen_n_101,inst_vga_signal_gen_n_102}),
        .\processQ_reg[9] (Q),
        .\processQ_reg[9]_0 ({inst_vga_signal_gen_n_45,inst_vga_signal_gen_n_46,inst_vga_signal_gen_n_47}),
        .\processQ_reg[9]_1 (\processQ_reg[9]_7 ),
        .\processQ_reg[9]_2 (\processQ_reg[9]_8 ),
        .\processQ_reg[9]_3 (inst_vga_signal_gen_n_116),
        .\processQ_reg[9]_4 (\processQ_reg[9]_9 ),
        .\processQ_reg[9]_5 (inst_vga_signal_gen_n_132),
        .\processQ_reg[9]_6 (\processQ_reg[9]_10 ),
        .\processQ_reg[9]_7 ({inst_vga_signal_gen_n_149,inst_vga_signal_gen_n_150,inst_vga_signal_gen_n_151}),
        .\processQ_reg[9]_8 (inst_vga_signal_gen_n_155),
        .\process_q_reg[1] (\process_q_reg[1] ),
        .\process_q_reg[1]_0 (\process_q_reg[1]_0 ),
        .\process_q_reg[1]_1 (inst_vga_signal_gen_n_70),
        .\process_q_reg[1]_2 (inst_vga_signal_gen_n_73),
        .\process_q_reg[1]_3 (\process_q_reg[1]_1 ),
        .\process_q_reg[1]_4 (\process_q_reg[1]_2 ),
        .\process_q_reg[1]_5 (inst_vga_signal_gen_n_144),
        .\process_q_reg[1]_6 (inst_vga_signal_gen_n_147),
        .q(q[8:0]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .switch(switch),
        .\switch[0]_0 (\switch[0]_0 ),
        .\switch[0]_1 (\switch[0]_1 ),
        .\switch[1]_0 (\switch[1]_0 ),
        .\switch[1]_1 (\switch[1]_1 ),
        .\switch[1]_2 (\switch[1]_2 ),
        .\switch[1]_3 (\switch[1]_3 ),
        .switch_0_sp_1(switch_0_sn_1),
        .switch_1_sp_1(switch_1_sn_1),
        .v_blank_is_low_reg_0(v_blank_is_low),
        .v_blank_is_low_reg_1(v_blank_is_low_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_signal_generator
   (h_blank_is_low_reg_0,
    h_sync_is_low_reg_0,
    v_blank_is_low_reg_0,
    \processQ_reg[7] ,
    Q,
    D,
    switch_1_sp_1,
    switch_0_sp_1,
    \processQ_reg[4] ,
    \processQ_reg[9] ,
    \processQ_reg[8] ,
    \processQ_reg[2] ,
    S,
    \processQ_reg[6] ,
    \processQ_reg[9]_0 ,
    \processQ_reg[8]_0 ,
    \processQ_reg[5] ,
    \processQ_reg[4]_0 ,
    \processQ_reg[5]_0 ,
    \processQ_reg[2]_0 ,
    \processQ_reg[2]_1 ,
    \process_q_reg[1] ,
    \processQ_reg[2]_2 ,
    \process_q_reg[1]_0 ,
    \processQ_reg[9]_1 ,
    \switch[0]_0 ,
    \switch[1]_0 ,
    \process_q_reg[1]_1 ,
    \processQ_reg[2]_3 ,
    \process_q_reg[1]_2 ,
    \processQ_reg[2]_4 ,
    h_sync_is_low_reg_1,
    h_blank_is_low_reg_1,
    v_blank_is_low_reg_1,
    \dc_bias_reg[3] ,
    SR,
    \dc_bias_reg[3]_0 ,
    \dc_bias_reg[3]_1 ,
    \processQ_reg[0] ,
    \processQ_reg[2]_5 ,
    \switch[0]_1 ,
    \processQ_reg[9]_2 ,
    \switch[1]_1 ,
    \switch[1]_2 ,
    minusOp,
    \processQ_reg[2]_6 ,
    \processQ_reg[8]_1 ,
    is_horizontal_gridline1_carry__0,
    \processQ_reg[2]_7 ,
    \processQ_reg[7]_0 ,
    \processQ_reg[0]_0 ,
    \processQ_reg[1] ,
    \processQ_reg[0]_1 ,
    \process_q_reg[1]_3 ,
    \processQ_reg[1]_0 ,
    \processQ_reg[1]_1 ,
    \processQ_reg[9]_3 ,
    \processQ_reg[2]_8 ,
    \processQ_reg[9]_4 ,
    \processQ_reg[2]_9 ,
    \processQ_reg[7]_1 ,
    \processQ_reg[0]_2 ,
    \processQ_reg[1]_2 ,
    \processQ_reg[0]_3 ,
    \process_q_reg[1]_4 ,
    \processQ_reg[1]_3 ,
    \processQ_reg[1]_4 ,
    \processQ_reg[9]_5 ,
    \processQ_reg[2]_10 ,
    \switch[1]_3 ,
    DI,
    \processQ_reg[2]_11 ,
    \processQ_reg[2]_12 ,
    \processQ_reg[2]_13 ,
    \process_q_reg[1]_5 ,
    \processQ_reg[2]_14 ,
    \process_q_reg[1]_6 ,
    \processQ_reg[9]_6 ,
    \processQ_reg[9]_7 ,
    is_horizontal_gridline1_carry__0_0,
    \processQ_reg[9]_8 ,
    CLK,
    \encoded_reg[0] ,
    \encoded_reg[0]_0 ,
    is_vertical_gridline1__20_carry__0,
    O,
    s00_axi_aresetn,
    is_horizontal_gridline1__29_carry__0,
    is_horizontal_gridline1__23_carry,
    q,
    is_trigger_time2_carry__0,
    is_horizontal_gridline1__23_carry_0,
    \encoded_reg[4] ,
    \encoded_reg[4]_0 ,
    \encoded_reg[2] ,
    \dc_bias_reg[3]_2 ,
    \dc_bias_reg[3]_3 ,
    \dc_bias_reg[3]_4 ,
    CO,
    switch,
    \encoded_reg[4]_1 ,
    \encoded_reg[8] ,
    \dc_bias[3]_i_10 ,
    \dc_bias[3]_i_10_0 ,
    \dc_bias[3]_i_10_1 ,
    \dc_bias[3]_i_2 ,
    \dc_bias[3]_i_2_0 ,
    \dc_bias[3]_i_8 ,
    \dc_bias[3]_i_8_0 ,
    \dc_bias[3]_i_8_1 ,
    \dc_bias[3]_i_8_2 ,
    \dc_bias[3]_i_8_3 ,
    is_horizontal_gridline1__23_carry_1,
    is_vertical_gridline1__20_carry__0_0,
    \processQ_reg[0]_4 );
  output h_blank_is_low_reg_0;
  output h_sync_is_low_reg_0;
  output v_blank_is_low_reg_0;
  output [3:0]\processQ_reg[7] ;
  output [9:0]Q;
  output [1:0]D;
  output switch_1_sp_1;
  output switch_0_sp_1;
  output [3:0]\processQ_reg[4] ;
  output [9:0]\processQ_reg[9] ;
  output [2:0]\processQ_reg[8] ;
  output \processQ_reg[2] ;
  output [3:0]S;
  output [1:0]\processQ_reg[6] ;
  output [2:0]\processQ_reg[9]_0 ;
  output [0:0]\processQ_reg[8]_0 ;
  output [2:0]\processQ_reg[5] ;
  output [2:0]\processQ_reg[4]_0 ;
  output [1:0]\processQ_reg[5]_0 ;
  output [3:0]\processQ_reg[2]_0 ;
  output [1:0]\processQ_reg[2]_1 ;
  output [0:0]\process_q_reg[1] ;
  output [1:0]\processQ_reg[2]_2 ;
  output [0:0]\process_q_reg[1]_0 ;
  output \processQ_reg[9]_1 ;
  output \switch[0]_0 ;
  output \switch[1]_0 ;
  output [0:0]\process_q_reg[1]_1 ;
  output [1:0]\processQ_reg[2]_3 ;
  output [0:0]\process_q_reg[1]_2 ;
  output [1:0]\processQ_reg[2]_4 ;
  output [3:0]h_sync_is_low_reg_1;
  output h_blank_is_low_reg_1;
  output v_blank_is_low_reg_1;
  output [1:0]\dc_bias_reg[3] ;
  output [0:0]SR;
  output [0:0]\dc_bias_reg[3]_0 ;
  output \dc_bias_reg[3]_1 ;
  output \processQ_reg[0] ;
  output \processQ_reg[2]_5 ;
  output \switch[0]_1 ;
  output \processQ_reg[9]_2 ;
  output \switch[1]_1 ;
  output \switch[1]_2 ;
  output [3:0]minusOp;
  output [1:0]\processQ_reg[2]_6 ;
  output [3:0]\processQ_reg[8]_1 ;
  output [0:0]is_horizontal_gridline1_carry__0;
  output [1:0]\processQ_reg[2]_7 ;
  output [3:0]\processQ_reg[7]_0 ;
  output [0:0]\processQ_reg[0]_0 ;
  output [0:0]\processQ_reg[1] ;
  output [0:0]\processQ_reg[0]_1 ;
  output [0:0]\process_q_reg[1]_3 ;
  output [0:0]\processQ_reg[1]_0 ;
  output [0:0]\processQ_reg[1]_1 ;
  output [0:0]\processQ_reg[9]_3 ;
  output [1:0]\processQ_reg[2]_8 ;
  output [0:0]\processQ_reg[9]_4 ;
  output [1:0]\processQ_reg[2]_9 ;
  output [3:0]\processQ_reg[7]_1 ;
  output [0:0]\processQ_reg[0]_2 ;
  output [0:0]\processQ_reg[1]_2 ;
  output [0:0]\processQ_reg[0]_3 ;
  output [0:0]\process_q_reg[1]_4 ;
  output [0:0]\processQ_reg[1]_3 ;
  output [0:0]\processQ_reg[1]_4 ;
  output [0:0]\processQ_reg[9]_5 ;
  output [1:0]\processQ_reg[2]_10 ;
  output \switch[1]_3 ;
  output [1:0]DI;
  output [0:0]\processQ_reg[2]_11 ;
  output [2:0]\processQ_reg[2]_12 ;
  output [1:0]\processQ_reg[2]_13 ;
  output [0:0]\process_q_reg[1]_5 ;
  output [1:0]\processQ_reg[2]_14 ;
  output [0:0]\process_q_reg[1]_6 ;
  output [0:0]\processQ_reg[9]_6 ;
  output [2:0]\processQ_reg[9]_7 ;
  output [2:0]is_horizontal_gridline1_carry__0_0;
  output [0:0]\processQ_reg[9]_8 ;
  input CLK;
  input \encoded_reg[0] ;
  input [2:0]\encoded_reg[0]_0 ;
  input [2:0]is_vertical_gridline1__20_carry__0;
  input [0:0]O;
  input s00_axi_aresetn;
  input [2:0]is_horizontal_gridline1__29_carry__0;
  input [2:0]is_horizontal_gridline1__23_carry;
  input [8:0]q;
  input [8:0]is_trigger_time2_carry__0;
  input [0:0]is_horizontal_gridline1__23_carry_0;
  input [0:0]\encoded_reg[4] ;
  input \encoded_reg[4]_0 ;
  input [0:0]\encoded_reg[2] ;
  input \dc_bias_reg[3]_2 ;
  input \dc_bias_reg[3]_3 ;
  input \dc_bias_reg[3]_4 ;
  input [0:0]CO;
  input [1:0]switch;
  input [0:0]\encoded_reg[4]_1 ;
  input \encoded_reg[8] ;
  input \dc_bias[3]_i_10 ;
  input [0:0]\dc_bias[3]_i_10_0 ;
  input \dc_bias[3]_i_10_1 ;
  input \dc_bias[3]_i_2 ;
  input \dc_bias[3]_i_2_0 ;
  input [0:0]\dc_bias[3]_i_8 ;
  input [0:0]\dc_bias[3]_i_8_0 ;
  input [0:0]\dc_bias[3]_i_8_1 ;
  input [0:0]\dc_bias[3]_i_8_2 ;
  input \dc_bias[3]_i_8_3 ;
  input [0:0]is_horizontal_gridline1__23_carry_1;
  input [0:0]is_vertical_gridline1__20_carry__0_0;
  input [0:0]\processQ_reg[0]_4 ;

  wire CLK;
  wire [0:0]CO;
  wire [1:0]D;
  wire [1:0]DI;
  wire [0:0]O;
  wire [9:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire \dc_bias[3]_i_10 ;
  wire [0:0]\dc_bias[3]_i_10_0 ;
  wire \dc_bias[3]_i_10_1 ;
  wire \dc_bias[3]_i_2 ;
  wire \dc_bias[3]_i_2_0 ;
  wire [0:0]\dc_bias[3]_i_8 ;
  wire [0:0]\dc_bias[3]_i_8_0 ;
  wire [0:0]\dc_bias[3]_i_8_1 ;
  wire [0:0]\dc_bias[3]_i_8_2 ;
  wire \dc_bias[3]_i_8_3 ;
  wire [1:0]\dc_bias_reg[3] ;
  wire [0:0]\dc_bias_reg[3]_0 ;
  wire \dc_bias_reg[3]_1 ;
  wire \dc_bias_reg[3]_2 ;
  wire \dc_bias_reg[3]_3 ;
  wire \dc_bias_reg[3]_4 ;
  wire \encoded_reg[0] ;
  wire [2:0]\encoded_reg[0]_0 ;
  wire [0:0]\encoded_reg[2] ;
  wire [0:0]\encoded_reg[4] ;
  wire \encoded_reg[4]_0 ;
  wire [0:0]\encoded_reg[4]_1 ;
  wire \encoded_reg[8] ;
  wire h_blank_is_low0;
  wire h_blank_is_low_reg_0;
  wire h_blank_is_low_reg_1;
  wire h_sync_is_low0;
  wire h_sync_is_low_reg_0;
  wire [3:0]h_sync_is_low_reg_1;
  wire [2:0]is_horizontal_gridline1__23_carry;
  wire [0:0]is_horizontal_gridline1__23_carry_0;
  wire [0:0]is_horizontal_gridline1__23_carry_1;
  wire [2:0]is_horizontal_gridline1__29_carry__0;
  wire [0:0]is_horizontal_gridline1_carry__0;
  wire [2:0]is_horizontal_gridline1_carry__0_0;
  wire [8:0]is_trigger_time2_carry__0;
  wire [2:0]is_vertical_gridline1__20_carry__0;
  wire [0:0]is_vertical_gridline1__20_carry__0_0;
  wire [3:0]minusOp;
  wire \processQ_reg[0] ;
  wire [0:0]\processQ_reg[0]_0 ;
  wire [0:0]\processQ_reg[0]_1 ;
  wire [0:0]\processQ_reg[0]_2 ;
  wire [0:0]\processQ_reg[0]_3 ;
  wire [0:0]\processQ_reg[0]_4 ;
  wire [0:0]\processQ_reg[1] ;
  wire [0:0]\processQ_reg[1]_0 ;
  wire [0:0]\processQ_reg[1]_1 ;
  wire [0:0]\processQ_reg[1]_2 ;
  wire [0:0]\processQ_reg[1]_3 ;
  wire [0:0]\processQ_reg[1]_4 ;
  wire \processQ_reg[2] ;
  wire [3:0]\processQ_reg[2]_0 ;
  wire [1:0]\processQ_reg[2]_1 ;
  wire [1:0]\processQ_reg[2]_10 ;
  wire [0:0]\processQ_reg[2]_11 ;
  wire [2:0]\processQ_reg[2]_12 ;
  wire [1:0]\processQ_reg[2]_13 ;
  wire [1:0]\processQ_reg[2]_14 ;
  wire [1:0]\processQ_reg[2]_2 ;
  wire [1:0]\processQ_reg[2]_3 ;
  wire [1:0]\processQ_reg[2]_4 ;
  wire \processQ_reg[2]_5 ;
  wire [1:0]\processQ_reg[2]_6 ;
  wire [1:0]\processQ_reg[2]_7 ;
  wire [1:0]\processQ_reg[2]_8 ;
  wire [1:0]\processQ_reg[2]_9 ;
  wire [3:0]\processQ_reg[4] ;
  wire [2:0]\processQ_reg[4]_0 ;
  wire [2:0]\processQ_reg[5] ;
  wire [1:0]\processQ_reg[5]_0 ;
  wire [1:0]\processQ_reg[6] ;
  wire [3:0]\processQ_reg[7] ;
  wire [3:0]\processQ_reg[7]_0 ;
  wire [3:0]\processQ_reg[7]_1 ;
  wire [2:0]\processQ_reg[8] ;
  wire [0:0]\processQ_reg[8]_0 ;
  wire [3:0]\processQ_reg[8]_1 ;
  wire [9:0]\processQ_reg[9] ;
  wire [2:0]\processQ_reg[9]_0 ;
  wire \processQ_reg[9]_1 ;
  wire \processQ_reg[9]_2 ;
  wire [0:0]\processQ_reg[9]_3 ;
  wire [0:0]\processQ_reg[9]_4 ;
  wire [0:0]\processQ_reg[9]_5 ;
  wire [0:0]\processQ_reg[9]_6 ;
  wire [2:0]\processQ_reg[9]_7 ;
  wire [0:0]\processQ_reg[9]_8 ;
  wire [0:0]\process_q_reg[1] ;
  wire [0:0]\process_q_reg[1]_0 ;
  wire [0:0]\process_q_reg[1]_1 ;
  wire [0:0]\process_q_reg[1]_2 ;
  wire [0:0]\process_q_reg[1]_3 ;
  wire [0:0]\process_q_reg[1]_4 ;
  wire [0:0]\process_q_reg[1]_5 ;
  wire [0:0]\process_q_reg[1]_6 ;
  wire [8:0]q;
  wire roll;
  wire s00_axi_aresetn;
  wire [1:0]switch;
  wire \switch[0]_0 ;
  wire \switch[0]_1 ;
  wire \switch[1]_0 ;
  wire \switch[1]_1 ;
  wire \switch[1]_2 ;
  wire \switch[1]_3 ;
  wire switch_0_sn_1;
  wire switch_1_sn_1;
  wire v_blank_is_low_reg_0;
  wire v_blank_is_low_reg_1;
  wire v_counter_n_32;
  wire v_counter_n_33;
  wire v_counter_n_34;
  wire v_counter_n_37;
  wire v_counter_n_38;
  wire v_counter_n_39;
  wire v_counter_n_40;
  wire v_counter_n_76;
  wire v_counter_n_77;
  wire v_sync_is_low;

  assign switch_0_sp_1 = switch_0_sn_1;
  assign switch_1_sp_1 = switch_1_sn_1;
  LUT2 #(
    .INIT(4'h7)) 
    \dc_bias[3]_i_1 
       (.I0(v_blank_is_low_reg_0),
        .I1(h_blank_is_low_reg_0),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \encoded[0]_i_1__0 
       (.I0(\encoded_reg[2] ),
        .I1(v_blank_is_low_reg_0),
        .I2(h_blank_is_low_reg_0),
        .O(\dc_bias_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \encoded[2]_i_1__0 
       (.I0(\encoded_reg[2] ),
        .I1(v_blank_is_low_reg_0),
        .I2(h_blank_is_low_reg_0),
        .O(\dc_bias_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h7007)) 
    \encoded[9]_i_2 
       (.I0(v_blank_is_low_reg_0),
        .I1(h_blank_is_low_reg_0),
        .I2(h_sync_is_low_reg_0),
        .I3(v_sync_is_low),
        .O(v_blank_is_low_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \encoded[9]_i_2__0 
       (.I0(h_blank_is_low_reg_0),
        .I1(v_blank_is_low_reg_0),
        .O(h_blank_is_low_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    h_blank_is_low_reg
       (.C(CLK),
        .CE(1'b1),
        .D(h_blank_is_low0),
        .Q(h_blank_is_low_reg_0),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized0 h_counter
       (.CLK(CLK),
        .CO(CO),
        .D(D),
        .DI(DI),
        .E(roll),
        .O(O),
        .Q(\processQ_reg[9] ),
        .S(S),
        .\dc_bias[2]_i_4 (v_counter_n_40),
        .\dc_bias[2]_i_4_0 (v_counter_n_38),
        .\dc_bias[2]_i_5_0 (v_counter_n_33),
        .\dc_bias[2]_i_5_1 (Q[0]),
        .\dc_bias[2]_i_7_0 (v_counter_n_34),
        .\dc_bias[2]_i_7_1 (v_counter_n_32),
        .\dc_bias[3]_i_10_0 (\dc_bias[3]_i_10 ),
        .\dc_bias[3]_i_10_1 (\dc_bias[3]_i_10_0 ),
        .\dc_bias[3]_i_10_2 (\dc_bias[3]_i_10_1 ),
        .\dc_bias[3]_i_2 (v_counter_n_37),
        .\dc_bias[3]_i_2_0 (v_counter_n_39),
        .\dc_bias[3]_i_2_1 (\dc_bias[3]_i_2 ),
        .\dc_bias[3]_i_2_2 (\dc_bias[3]_i_2_0 ),
        .\dc_bias_reg[3] (\dc_bias_reg[3]_0 ),
        .\dc_bias_reg[3]_0 (\dc_bias_reg[3]_1 ),
        .\dc_bias_reg[3]_1 (\dc_bias_reg[3]_2 ),
        .\dc_bias_reg[3]_2 (\dc_bias_reg[3]_3 ),
        .\dc_bias_reg[3]_3 (\dc_bias_reg[3]_4 ),
        .\encoded_reg[0] (\encoded_reg[0] ),
        .\encoded_reg[0]_0 (\encoded_reg[0]_0 ),
        .\encoded_reg[0]_1 (v_blank_is_low_reg_0),
        .\encoded_reg[0]_2 (h_blank_is_low_reg_0),
        .\encoded_reg[4] (h_sync_is_low_reg_0),
        .\encoded_reg[4]_0 (h_blank_is_low_reg_1),
        .\encoded_reg[4]_1 (\encoded_reg[4] ),
        .\encoded_reg[4]_2 (\encoded_reg[4]_0 ),
        .\encoded_reg[4]_3 (\encoded_reg[4]_1 ),
        .\encoded_reg[8] (\encoded_reg[8] ),
        .h_blank_is_low0(h_blank_is_low0),
        .h_sync_is_low0(h_sync_is_low0),
        .h_sync_is_low_reg(h_sync_is_low_reg_1),
        .is_trigger_time2_carry__0(is_trigger_time2_carry__0),
        .is_vertical_gridline1__20_carry__0(is_vertical_gridline1__20_carry__0),
        .is_vertical_gridline1__20_carry__0_0(is_vertical_gridline1__20_carry__0_0),
        .minusOp(minusOp),
        .\processQ_reg[0]_0 (\processQ_reg[0] ),
        .\processQ_reg[0]_1 (\processQ_reg[0]_2 ),
        .\processQ_reg[0]_2 (\processQ_reg[0]_3 ),
        .\processQ_reg[1]_0 (\processQ_reg[1]_2 ),
        .\processQ_reg[1]_1 (\processQ_reg[1]_3 ),
        .\processQ_reg[1]_2 (\processQ_reg[1]_4 ),
        .\processQ_reg[2]_0 (\processQ_reg[2] ),
        .\processQ_reg[2]_1 (\processQ_reg[2]_2 ),
        .\processQ_reg[2]_2 (\processQ_reg[2]_4 ),
        .\processQ_reg[2]_3 (\processQ_reg[2]_5 ),
        .\processQ_reg[2]_4 (\processQ_reg[2]_9 ),
        .\processQ_reg[2]_5 (\processQ_reg[2]_10 ),
        .\processQ_reg[2]_6 (\processQ_reg[2]_11 ),
        .\processQ_reg[2]_7 (\processQ_reg[2]_14 ),
        .\processQ_reg[4]_0 (\processQ_reg[4] ),
        .\processQ_reg[6]_0 (\processQ_reg[6] ),
        .\processQ_reg[7]_0 (\processQ_reg[7]_1 ),
        .\processQ_reg[8]_0 (\processQ_reg[8] ),
        .\processQ_reg[8]_1 (\processQ_reg[8]_0 ),
        .\processQ_reg[9]_0 (\processQ_reg[9]_0 ),
        .\processQ_reg[9]_1 (\processQ_reg[9]_1 ),
        .\processQ_reg[9]_2 (\processQ_reg[9]_2 ),
        .\processQ_reg[9]_3 (\processQ_reg[9]_5 ),
        .\process_q_reg[1] (\process_q_reg[1]_0 ),
        .\process_q_reg[1]_0 (\process_q_reg[1]_2 ),
        .\process_q_reg[1]_1 (\process_q_reg[1]_4 ),
        .\process_q_reg[1]_2 (\process_q_reg[1]_6 ),
        .s00_axi_aresetn(s00_axi_aresetn),
        .switch(switch),
        .\switch[0]_0 (\switch[0]_0 ),
        .\switch[0]_1 (\switch[0]_1 ),
        .\switch[1]_0 (\switch[1]_0 ),
        .\switch[1]_1 (\switch[1]_1 ),
        .\switch[1]_2 (\switch[1]_2 ),
        .\switch[1]_3 (\switch[1]_3 ),
        .switch_0_sp_1(switch_0_sn_1),
        .switch_1_sp_1(switch_1_sn_1));
  FDRE #(
    .INIT(1'b0)) 
    h_sync_is_low_reg
       (.C(CLK),
        .CE(1'b1),
        .D(h_sync_is_low0),
        .Q(h_sync_is_low_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    v_blank_is_low_reg
       (.C(CLK),
        .CE(1'b1),
        .D(v_counter_n_76),
        .Q(v_blank_is_low_reg_0),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized1 v_counter
       (.CLK(CLK),
        .E(roll),
        .Q(Q),
        .\dc_bias[3]_i_8 (\dc_bias[3]_i_8 ),
        .\dc_bias[3]_i_8_0 (\dc_bias[3]_i_8_0 ),
        .\dc_bias[3]_i_8_1 (\dc_bias[3]_i_8_1 ),
        .\dc_bias[3]_i_8_2 (\dc_bias[3]_i_8_2 ),
        .\dc_bias[3]_i_8_3 (\dc_bias[3]_i_8_3 ),
        .is_horizontal_gridline1__23_carry(is_horizontal_gridline1__23_carry),
        .is_horizontal_gridline1__23_carry_0(is_horizontal_gridline1__23_carry_0),
        .is_horizontal_gridline1__23_carry_1(is_horizontal_gridline1__23_carry_1),
        .is_horizontal_gridline1__29_carry__0(is_horizontal_gridline1__29_carry__0),
        .is_horizontal_gridline1_carry__0(is_horizontal_gridline1_carry__0),
        .is_horizontal_gridline1_carry__0_0(is_horizontal_gridline1_carry__0_0),
        .\processQ_reg[0]_0 (v_counter_n_39),
        .\processQ_reg[0]_1 (\processQ_reg[0]_0 ),
        .\processQ_reg[0]_2 (\processQ_reg[0]_1 ),
        .\processQ_reg[0]_3 (\processQ_reg[0]_4 ),
        .\processQ_reg[1]_0 (v_counter_n_33),
        .\processQ_reg[1]_1 (\processQ_reg[1] ),
        .\processQ_reg[1]_2 (\processQ_reg[1]_0 ),
        .\processQ_reg[1]_3 (\processQ_reg[1]_1 ),
        .\processQ_reg[1]_4 (v_counter_n_77),
        .\processQ_reg[2]_0 (\processQ_reg[2]_0 ),
        .\processQ_reg[2]_1 (\processQ_reg[2]_1 ),
        .\processQ_reg[2]_2 (\processQ_reg[2]_3 ),
        .\processQ_reg[2]_3 (\processQ_reg[2]_6 ),
        .\processQ_reg[2]_4 (v_counter_n_37),
        .\processQ_reg[2]_5 (\processQ_reg[2]_7 ),
        .\processQ_reg[2]_6 (\processQ_reg[2]_8 ),
        .\processQ_reg[2]_7 (\processQ_reg[2]_12 ),
        .\processQ_reg[2]_8 (\processQ_reg[2]_13 ),
        .\processQ_reg[4]_0 (\processQ_reg[4]_0 ),
        .\processQ_reg[5]_0 (\processQ_reg[5] ),
        .\processQ_reg[5]_1 (\processQ_reg[5]_0 ),
        .\processQ_reg[5]_2 (v_counter_n_34),
        .\processQ_reg[7]_0 (\processQ_reg[7] ),
        .\processQ_reg[7]_1 (v_counter_n_40),
        .\processQ_reg[7]_2 (\processQ_reg[7]_0 ),
        .\processQ_reg[8]_0 (v_counter_n_32),
        .\processQ_reg[8]_1 (\processQ_reg[8]_1 ),
        .\processQ_reg[9]_0 (v_counter_n_38),
        .\processQ_reg[9]_1 (\processQ_reg[9]_3 ),
        .\processQ_reg[9]_2 (\processQ_reg[9]_4 ),
        .\processQ_reg[9]_3 (\processQ_reg[9]_6 ),
        .\processQ_reg[9]_4 (\processQ_reg[9]_7 ),
        .\processQ_reg[9]_5 (\processQ_reg[9]_8 ),
        .\processQ_reg[9]_6 (v_counter_n_76),
        .\process_q_reg[1] (\process_q_reg[1] ),
        .\process_q_reg[1]_0 (\process_q_reg[1]_1 ),
        .\process_q_reg[1]_1 (\process_q_reg[1]_3 ),
        .\process_q_reg[1]_2 (\process_q_reg[1]_5 ),
        .q(q),
        .v_blank_is_low_reg(v_blank_is_low_reg_0),
        .v_sync_is_low(v_sync_is_low));
  FDRE #(
    .INIT(1'b0)) 
    v_sync_is_low_reg
       (.C(CLK),
        .CE(1'b1),
        .D(v_counter_n_77),
        .Q(v_sync_is_low),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video
   (tmds,
    tmdsb,
    Q,
    \processQ_reg[9] ,
    \processQ_reg[9]_0 ,
    \processQ_reg[9]_1 ,
    \process_q_reg[10] ,
    \processQ_reg[9]_2 ,
    \processQ_reg[9]_3 ,
    \processQ_reg[9]_4 ,
    \processQ_reg[9]_5 ,
    \processQ_reg[9]_6 ,
    \process_q_reg[1] ,
    \process_q_reg[1]_0 ,
    \processQ_reg[9]_7 ,
    \process_q_reg[1]_1 ,
    \processQ_reg[1] ,
    \processQ_reg[1]_0 ,
    \processQ_reg[2] ,
    \processQ_reg[9]_8 ,
    \process_q_reg[1]_2 ,
    \processQ_reg[1]_1 ,
    \processQ_reg[1]_2 ,
    \processQ_reg[2]_0 ,
    \processQ_reg[2]_1 ,
    \processQ_reg[2]_2 ,
    \processQ_reg[9]_9 ,
    s00_axi_aresetn,
    s00_axi_aclk,
    is_trigger_volt4_carry__0,
    is_trigger_volt4_carry__0_0,
    \dc_bias[3]_i_15__0 ,
    \dc_bias[3]_i_15__0_0 ,
    \is_trigger_volt4_inferred__0/i__carry__0 ,
    \is_trigger_volt4_inferred__0/i__carry__0_0 ,
    \dc_bias[3]_i_16__0 ,
    \dc_bias[3]_i_16__0_0 ,
    is_trigger_volt2_carry__0,
    q,
    \dc_bias[3]_i_16__0_1 ,
    \dc_bias[3]_i_16__0_2 ,
    DI,
    \is_trigger_volt5_inferred__0/i__carry__0 ,
    \dc_bias[3]_i_15__0_1 ,
    \dc_bias[3]_i_15__0_2 ,
    \is_trigger_volt4_inferred__1/i__carry__0 ,
    \is_trigger_volt4_inferred__1/i__carry__0_0 ,
    \dc_bias[3]_i_15__0_3 ,
    S,
    is_trigger_time4_carry__0,
    is_trigger_time4_carry__0_0,
    \dc_bias[3]_i_23 ,
    \dc_bias[3]_i_23_0 ,
    \is_trigger_time4_inferred__0/i__carry__0 ,
    \is_trigger_time4_inferred__0/i__carry__0_0 ,
    \dc_bias[3]_i_14 ,
    \dc_bias[3]_i_14_0 ,
    is_trigger_time2_carry__0,
    \dc_bias[3]_i_13__0 ,
    \dc_bias[3]_i_13__0_0 ,
    \is_trigger_time5_inferred__0/i__carry__0 ,
    \is_trigger_time5_inferred__0/i__carry__0_0 ,
    \dc_bias[3]_i_23_1 ,
    \dc_bias[3]_i_23_2 ,
    \is_trigger_time4_inferred__1/i__carry__0 ,
    \is_trigger_time4_inferred__1/i__carry__0_0 ,
    \dc_bias[3]_i_23_3 ,
    \dc_bias[3]_i_23_4 ,
    CO,
    switch,
    \encoded_reg[4] ,
    \encoded_reg[8] ,
    \dc_bias[3]_i_2 ,
    \dc_bias[3]_i_2_0 ,
    \dc_bias[3]_i_8 ,
    \dc_bias[3]_i_8_0 ,
    \dc_bias[3]_i_8_1 ,
    SR,
    lopt);
  output [3:0]tmds;
  output [3:0]tmdsb;
  output [9:0]Q;
  output [9:0]\processQ_reg[9] ;
  output [0:0]\processQ_reg[9]_0 ;
  output [0:0]\processQ_reg[9]_1 ;
  output [0:0]\process_q_reg[10] ;
  output [0:0]\processQ_reg[9]_2 ;
  output [0:0]\processQ_reg[9]_3 ;
  output [0:0]\processQ_reg[9]_4 ;
  output [0:0]\processQ_reg[9]_5 ;
  output [0:0]\processQ_reg[9]_6 ;
  output [0:0]\process_q_reg[1] ;
  output [0:0]\process_q_reg[1]_0 ;
  output \processQ_reg[9]_7 ;
  output [0:0]\process_q_reg[1]_1 ;
  output [0:0]\processQ_reg[1] ;
  output [0:0]\processQ_reg[1]_0 ;
  output [1:0]\processQ_reg[2] ;
  output [0:0]\processQ_reg[9]_8 ;
  output [0:0]\process_q_reg[1]_2 ;
  output [0:0]\processQ_reg[1]_1 ;
  output [0:0]\processQ_reg[1]_2 ;
  output [1:0]\processQ_reg[2]_0 ;
  output [1:0]\processQ_reg[2]_1 ;
  output [1:0]\processQ_reg[2]_2 ;
  output [0:0]\processQ_reg[9]_9 ;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [2:0]is_trigger_volt4_carry__0;
  input [2:0]is_trigger_volt4_carry__0_0;
  input [0:0]\dc_bias[3]_i_15__0 ;
  input [1:0]\dc_bias[3]_i_15__0_0 ;
  input [2:0]\is_trigger_volt4_inferred__0/i__carry__0 ;
  input [2:0]\is_trigger_volt4_inferred__0/i__carry__0_0 ;
  input [0:0]\dc_bias[3]_i_16__0 ;
  input [1:0]\dc_bias[3]_i_16__0_0 ;
  input [2:0]is_trigger_volt2_carry__0;
  input [9:0]q;
  input [0:0]\dc_bias[3]_i_16__0_1 ;
  input [0:0]\dc_bias[3]_i_16__0_2 ;
  input [1:0]DI;
  input [1:0]\is_trigger_volt5_inferred__0/i__carry__0 ;
  input [0:0]\dc_bias[3]_i_15__0_1 ;
  input [1:0]\dc_bias[3]_i_15__0_2 ;
  input [3:0]\is_trigger_volt4_inferred__1/i__carry__0 ;
  input [1:0]\is_trigger_volt4_inferred__1/i__carry__0_0 ;
  input [0:0]\dc_bias[3]_i_15__0_3 ;
  input [1:0]S;
  input [2:0]is_trigger_time4_carry__0;
  input [2:0]is_trigger_time4_carry__0_0;
  input [0:0]\dc_bias[3]_i_23 ;
  input [1:0]\dc_bias[3]_i_23_0 ;
  input [2:0]\is_trigger_time4_inferred__0/i__carry__0 ;
  input [2:0]\is_trigger_time4_inferred__0/i__carry__0_0 ;
  input [0:0]\dc_bias[3]_i_14 ;
  input [1:0]\dc_bias[3]_i_14_0 ;
  input [2:0]is_trigger_time2_carry__0;
  input [9:0]\dc_bias[3]_i_13__0 ;
  input [1:0]\dc_bias[3]_i_13__0_0 ;
  input [1:0]\is_trigger_time5_inferred__0/i__carry__0 ;
  input [1:0]\is_trigger_time5_inferred__0/i__carry__0_0 ;
  input [0:0]\dc_bias[3]_i_23_1 ;
  input [1:0]\dc_bias[3]_i_23_2 ;
  input [3:0]\is_trigger_time4_inferred__1/i__carry__0 ;
  input [1:0]\is_trigger_time4_inferred__1/i__carry__0_0 ;
  input [0:0]\dc_bias[3]_i_23_3 ;
  input [1:0]\dc_bias[3]_i_23_4 ;
  input [0:0]CO;
  input [1:0]switch;
  input [0:0]\encoded_reg[4] ;
  input \encoded_reg[8] ;
  input \dc_bias[3]_i_2 ;
  input \dc_bias[3]_i_2_0 ;
  input [0:0]\dc_bias[3]_i_8 ;
  input [0:0]\dc_bias[3]_i_8_0 ;
  input \dc_bias[3]_i_8_1 ;
  input [0:0]SR;
  input lopt;

  wire [0:0]CO;
  wire [1:0]DI;
  wire Inst_vga_n_31;
  wire Inst_vga_n_32;
  wire Inst_vga_n_33;
  wire Inst_vga_n_34;
  wire Inst_vga_n_37;
  wire Inst_vga_n_38;
  wire Inst_vga_n_39;
  wire Inst_vga_n_40;
  wire Inst_vga_n_41;
  wire Inst_vga_n_42;
  wire Inst_vga_n_43;
  wire Inst_vga_n_44;
  wire Inst_vga_n_45;
  wire Inst_vga_n_49;
  wire Inst_vga_n_50;
  wire Inst_vga_n_51;
  wire Inst_vga_n_52;
  wire Inst_vga_n_53;
  wire Inst_vga_n_55;
  wire Inst_vga_n_56;
  wire Inst_vga_n_68;
  wire [9:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire \TDMS_encoder_blue/p_1_in ;
  wire \TDMS_encoder_green/p_1_in ;
  wire \TDMS_encoder_red/p_1_in ;
  wire blue_s;
  wire clock_s;
  wire [9:0]\dc_bias[3]_i_13__0 ;
  wire [1:0]\dc_bias[3]_i_13__0_0 ;
  wire [0:0]\dc_bias[3]_i_14 ;
  wire [1:0]\dc_bias[3]_i_14_0 ;
  wire [0:0]\dc_bias[3]_i_15__0 ;
  wire [1:0]\dc_bias[3]_i_15__0_0 ;
  wire [0:0]\dc_bias[3]_i_15__0_1 ;
  wire [1:0]\dc_bias[3]_i_15__0_2 ;
  wire [0:0]\dc_bias[3]_i_15__0_3 ;
  wire [0:0]\dc_bias[3]_i_16__0 ;
  wire [1:0]\dc_bias[3]_i_16__0_0 ;
  wire [0:0]\dc_bias[3]_i_16__0_1 ;
  wire [0:0]\dc_bias[3]_i_16__0_2 ;
  wire \dc_bias[3]_i_2 ;
  wire [0:0]\dc_bias[3]_i_23 ;
  wire [1:0]\dc_bias[3]_i_23_0 ;
  wire [0:0]\dc_bias[3]_i_23_1 ;
  wire [1:0]\dc_bias[3]_i_23_2 ;
  wire [0:0]\dc_bias[3]_i_23_3 ;
  wire [1:0]\dc_bias[3]_i_23_4 ;
  wire \dc_bias[3]_i_2_0 ;
  wire [0:0]\dc_bias[3]_i_8 ;
  wire [0:0]\dc_bias[3]_i_8_0 ;
  wire \dc_bias[3]_i_8_1 ;
  wire [2:0]encoded1_in;
  wire [0:0]\encoded_reg[4] ;
  wire \encoded_reg[8] ;
  wire green_s;
  wire h_sync_is_low;
  wire inst_dvid_n_10;
  wire inst_dvid_n_11;
  wire inst_dvid_n_12;
  wire inst_dvid_n_13;
  wire inst_dvid_n_5;
  wire inst_dvid_n_6;
  wire inst_dvid_n_9;
  wire \inst_vga_signal_gen/h_blank_is_low ;
  wire \inst_vga_signal_gen/v_blank_is_low ;
  wire [2:0]is_trigger_time2_carry__0;
  wire [2:0]is_trigger_time4_carry__0;
  wire [2:0]is_trigger_time4_carry__0_0;
  wire [2:0]\is_trigger_time4_inferred__0/i__carry__0 ;
  wire [2:0]\is_trigger_time4_inferred__0/i__carry__0_0 ;
  wire [3:0]\is_trigger_time4_inferred__1/i__carry__0 ;
  wire [1:0]\is_trigger_time4_inferred__1/i__carry__0_0 ;
  wire [1:0]\is_trigger_time5_inferred__0/i__carry__0 ;
  wire [1:0]\is_trigger_time5_inferred__0/i__carry__0_0 ;
  wire [2:0]is_trigger_volt2_carry__0;
  wire [2:0]is_trigger_volt4_carry__0;
  wire [2:0]is_trigger_volt4_carry__0_0;
  wire [2:0]\is_trigger_volt4_inferred__0/i__carry__0 ;
  wire [2:0]\is_trigger_volt4_inferred__0/i__carry__0_0 ;
  wire [3:0]\is_trigger_volt4_inferred__1/i__carry__0 ;
  wire [1:0]\is_trigger_volt4_inferred__1/i__carry__0_0 ;
  wire [1:0]\is_trigger_volt5_inferred__0/i__carry__0 ;
  wire lopt;
  wire pixel_clk;
  wire [0:0]\processQ_reg[1] ;
  wire [0:0]\processQ_reg[1]_0 ;
  wire [0:0]\processQ_reg[1]_1 ;
  wire [0:0]\processQ_reg[1]_2 ;
  wire [1:0]\processQ_reg[2] ;
  wire [1:0]\processQ_reg[2]_0 ;
  wire [1:0]\processQ_reg[2]_1 ;
  wire [1:0]\processQ_reg[2]_2 ;
  wire [9:0]\processQ_reg[9] ;
  wire [0:0]\processQ_reg[9]_0 ;
  wire [0:0]\processQ_reg[9]_1 ;
  wire [0:0]\processQ_reg[9]_2 ;
  wire [0:0]\processQ_reg[9]_3 ;
  wire [0:0]\processQ_reg[9]_4 ;
  wire [0:0]\processQ_reg[9]_5 ;
  wire [0:0]\processQ_reg[9]_6 ;
  wire \processQ_reg[9]_7 ;
  wire [0:0]\processQ_reg[9]_8 ;
  wire [0:0]\processQ_reg[9]_9 ;
  wire [0:0]\process_q_reg[10] ;
  wire [0:0]\process_q_reg[1] ;
  wire [0:0]\process_q_reg[1]_0 ;
  wire [0:0]\process_q_reg[1]_1 ;
  wire [0:0]\process_q_reg[1]_2 ;
  wire [9:0]q;
  wire red_s;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire serialize_clk;
  wire serialize_clk_n;
  wire [1:0]switch;
  wire [3:0]tmds;
  wire [3:0]tmdsb;
  wire \vga_signal[blank] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga Inst_vga
       (.CLK(pixel_clk),
        .CO(CO),
        .D({Inst_vga_n_31,Inst_vga_n_32}),
        .DI(DI),
        .Q(Q),
        .S(S),
        .SR(\vga_signal[blank] ),
        .\dc_bias[3]_i_13__0 (\dc_bias[3]_i_13__0 ),
        .\dc_bias[3]_i_13__0_0 (\dc_bias[3]_i_13__0_0 ),
        .\dc_bias[3]_i_14 (\dc_bias[3]_i_14 ),
        .\dc_bias[3]_i_14_0 (\dc_bias[3]_i_14_0 ),
        .\dc_bias[3]_i_15__0 (\dc_bias[3]_i_15__0 ),
        .\dc_bias[3]_i_15__0_0 (\dc_bias[3]_i_15__0_0 ),
        .\dc_bias[3]_i_15__0_1 (\dc_bias[3]_i_15__0_1 ),
        .\dc_bias[3]_i_15__0_2 (\dc_bias[3]_i_15__0_2 ),
        .\dc_bias[3]_i_15__0_3 (\dc_bias[3]_i_15__0_3 ),
        .\dc_bias[3]_i_16__0 (\dc_bias[3]_i_16__0 ),
        .\dc_bias[3]_i_16__0_0 (\dc_bias[3]_i_16__0_0 ),
        .\dc_bias[3]_i_16__0_1 (\dc_bias[3]_i_16__0_1 ),
        .\dc_bias[3]_i_16__0_2 (\dc_bias[3]_i_16__0_2 ),
        .\dc_bias[3]_i_2 (\dc_bias[3]_i_2 ),
        .\dc_bias[3]_i_23 (\dc_bias[3]_i_23 ),
        .\dc_bias[3]_i_23_0 (\dc_bias[3]_i_23_0 ),
        .\dc_bias[3]_i_23_1 (\dc_bias[3]_i_23_1 ),
        .\dc_bias[3]_i_23_2 (\dc_bias[3]_i_23_2 ),
        .\dc_bias[3]_i_23_3 (\dc_bias[3]_i_23_3 ),
        .\dc_bias[3]_i_23_4 (\dc_bias[3]_i_23_4 ),
        .\dc_bias[3]_i_2_0 (\dc_bias[3]_i_2_0 ),
        .\dc_bias[3]_i_8 (\dc_bias[3]_i_8 ),
        .\dc_bias[3]_i_8_0 (\dc_bias[3]_i_8_0 ),
        .\dc_bias[3]_i_8_1 (\dc_bias[3]_i_8_1 ),
        .\dc_bias_reg[3] ({encoded1_in[2],encoded1_in[0]}),
        .\dc_bias_reg[3]_0 (Inst_vga_n_49),
        .\dc_bias_reg[3]_1 (Inst_vga_n_50),
        .\dc_bias_reg[3]_2 (inst_dvid_n_10),
        .\dc_bias_reg[3]_3 (inst_dvid_n_9),
        .\dc_bias_reg[3]_4 (inst_dvid_n_11),
        .\encoded_reg[0] (inst_dvid_n_12),
        .\encoded_reg[0]_0 ({\TDMS_encoder_green/p_1_in ,inst_dvid_n_5,inst_dvid_n_6}),
        .\encoded_reg[2] (\TDMS_encoder_red/p_1_in ),
        .\encoded_reg[4] (\TDMS_encoder_blue/p_1_in ),
        .\encoded_reg[4]_0 (inst_dvid_n_13),
        .\encoded_reg[4]_1 (\encoded_reg[4] ),
        .\encoded_reg[8] (\encoded_reg[8] ),
        .h_blank_is_low(\inst_vga_signal_gen/h_blank_is_low ),
        .h_blank_is_low_reg(Inst_vga_n_44),
        .h_sync_is_low(h_sync_is_low),
        .h_sync_is_low_reg({Inst_vga_n_40,Inst_vga_n_41,Inst_vga_n_42,Inst_vga_n_43}),
        .is_trigger_time2_carry__0(is_trigger_time2_carry__0),
        .is_trigger_time4_carry__0(is_trigger_time4_carry__0),
        .is_trigger_time4_carry__0_0(is_trigger_time4_carry__0_0),
        .\is_trigger_time4_inferred__0/i__carry__0 (\is_trigger_time4_inferred__0/i__carry__0 ),
        .\is_trigger_time4_inferred__0/i__carry__0_0 (\is_trigger_time4_inferred__0/i__carry__0_0 ),
        .\is_trigger_time4_inferred__1/i__carry__0 (\is_trigger_time4_inferred__1/i__carry__0 ),
        .\is_trigger_time4_inferred__1/i__carry__0_0 (\is_trigger_time4_inferred__1/i__carry__0_0 ),
        .\is_trigger_time5_inferred__0/i__carry__0 (\is_trigger_time5_inferred__0/i__carry__0 ),
        .\is_trigger_time5_inferred__0/i__carry__0_0 (\is_trigger_time5_inferred__0/i__carry__0_0 ),
        .is_trigger_volt2_carry__0(is_trigger_volt2_carry__0),
        .is_trigger_volt4_carry__0(is_trigger_volt4_carry__0),
        .is_trigger_volt4_carry__0_0(is_trigger_volt4_carry__0_0),
        .\is_trigger_volt4_inferred__0/i__carry__0 (\is_trigger_volt4_inferred__0/i__carry__0 ),
        .\is_trigger_volt4_inferred__0/i__carry__0_0 (\is_trigger_volt4_inferred__0/i__carry__0_0 ),
        .\is_trigger_volt4_inferred__1/i__carry__0 (\is_trigger_volt4_inferred__1/i__carry__0 ),
        .\is_trigger_volt4_inferred__1/i__carry__0_0 (\is_trigger_volt4_inferred__1/i__carry__0_0 ),
        .\is_trigger_volt5_inferred__0/i__carry__0 (\is_trigger_volt5_inferred__0/i__carry__0 ),
        .\processQ_reg[0] (Inst_vga_n_51),
        .\processQ_reg[0]_0 (SR),
        .\processQ_reg[1] (\processQ_reg[1] ),
        .\processQ_reg[1]_0 (\processQ_reg[1]_0 ),
        .\processQ_reg[1]_1 (\processQ_reg[1]_1 ),
        .\processQ_reg[1]_2 (\processQ_reg[1]_2 ),
        .\processQ_reg[2] (Inst_vga_n_52),
        .\processQ_reg[2]_0 (\processQ_reg[2] ),
        .\processQ_reg[2]_1 (\processQ_reg[2]_0 ),
        .\processQ_reg[2]_2 (\processQ_reg[2]_1 ),
        .\processQ_reg[2]_3 (\processQ_reg[2]_2 ),
        .\processQ_reg[9] (\processQ_reg[9] ),
        .\processQ_reg[9]_0 (\processQ_reg[9]_0 ),
        .\processQ_reg[9]_1 (\processQ_reg[9]_1 ),
        .\processQ_reg[9]_10 (\processQ_reg[9]_9 ),
        .\processQ_reg[9]_2 (\processQ_reg[9]_2 ),
        .\processQ_reg[9]_3 (\processQ_reg[9]_3 ),
        .\processQ_reg[9]_4 (\processQ_reg[9]_4 ),
        .\processQ_reg[9]_5 (\processQ_reg[9]_5 ),
        .\processQ_reg[9]_6 (\processQ_reg[9]_6 ),
        .\processQ_reg[9]_7 (Inst_vga_n_37),
        .\processQ_reg[9]_8 (\processQ_reg[9]_7 ),
        .\processQ_reg[9]_9 (\processQ_reg[9]_8 ),
        .\process_q_reg[10] (\process_q_reg[10] ),
        .\process_q_reg[1] (\process_q_reg[1] ),
        .\process_q_reg[1]_0 (\process_q_reg[1]_0 ),
        .\process_q_reg[1]_1 (\process_q_reg[1]_1 ),
        .\process_q_reg[1]_2 (\process_q_reg[1]_2 ),
        .q(q),
        .s00_axi_aresetn(s00_axi_aresetn),
        .switch(switch),
        .\switch[0]_0 (Inst_vga_n_38),
        .\switch[0]_1 (Inst_vga_n_53),
        .\switch[1]_0 (Inst_vga_n_39),
        .\switch[1]_1 (Inst_vga_n_55),
        .\switch[1]_2 (Inst_vga_n_56),
        .\switch[1]_3 (Inst_vga_n_68),
        .switch_0_sp_1(Inst_vga_n_34),
        .switch_1_sp_1(Inst_vga_n_33),
        .v_blank_is_low(\inst_vga_signal_gen/v_blank_is_low ),
        .v_blank_is_low_reg(Inst_vga_n_45));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_blue
       (.I(blue_s),
        .O(tmds[0]),
        .OB(tmdsb[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_clock
       (.I(clock_s),
        .O(tmds[3]),
        .OB(tmdsb[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_green
       (.I(red_s),
        .O(tmds[2]),
        .OB(tmdsb[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_red
       (.I(green_s),
        .O(tmds[1]),
        .OB(tmdsb[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid inst_dvid
       (.CLK(pixel_clk),
        .D(Inst_vga_n_49),
        .Q({\TDMS_encoder_green/p_1_in ,inst_dvid_n_5,inst_dvid_n_6}),
        .SR(\vga_signal[blank] ),
        .blue_s(blue_s),
        .clk_out2(serialize_clk),
        .clk_out3(serialize_clk_n),
        .clock_s(clock_s),
        .\dc_bias_reg[0] (inst_dvid_n_12),
        .\dc_bias_reg[1] (Inst_vga_n_50),
        .\dc_bias_reg[2] (inst_dvid_n_9),
        .\dc_bias_reg[2]_0 (inst_dvid_n_11),
        .\dc_bias_reg[2]_1 (inst_dvid_n_13),
        .\dc_bias_reg[2]_2 (Inst_vga_n_53),
        .\dc_bias_reg[3] (\TDMS_encoder_red/p_1_in ),
        .\dc_bias_reg[3]_0 (\TDMS_encoder_blue/p_1_in ),
        .\dc_bias_reg[3]_1 (inst_dvid_n_10),
        .\dc_bias_reg[3]_2 (Inst_vga_n_39),
        .\dc_bias_reg[3]_3 (Inst_vga_n_52),
        .\dc_bias_reg[3]_4 (Inst_vga_n_38),
        .\dc_bias_reg[3]_5 (Inst_vga_n_55),
        .\dc_bias_reg[3]_6 (Inst_vga_n_68),
        .\dc_bias_reg[3]_7 (Inst_vga_n_51),
        .\dc_bias_reg[3]_8 (Inst_vga_n_37),
        .\encoded_reg[2] ({encoded1_in[2],encoded1_in[0]}),
        .\encoded_reg[2]_0 ({Inst_vga_n_31,Inst_vga_n_32}),
        .\encoded_reg[4] ({Inst_vga_n_40,Inst_vga_n_41,Inst_vga_n_42,Inst_vga_n_43}),
        .\encoded_reg[8] (Inst_vga_n_56),
        .\encoded_reg[8]_0 (Inst_vga_n_33),
        .\encoded_reg[9] (Inst_vga_n_34),
        .\encoded_reg[9]_0 (Inst_vga_n_44),
        .\encoded_reg[9]_1 (Inst_vga_n_45),
        .green_s(green_s),
        .h_blank_is_low(\inst_vga_signal_gen/h_blank_is_low ),
        .h_sync_is_low(h_sync_is_low),
        .red_s(red_s),
        .v_blank_is_low(\inst_vga_signal_gen/v_blank_is_low ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0 mmcm_adv_inst_display_clocks
       (.clk_in1(s00_axi_aclk),
        .clk_out1(pixel_clk),
        .clk_out2(serialize_clk),
        .clk_out3(serialize_clk_n),
        .lopt(lopt),
        .resetn(s00_axi_aresetn));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
