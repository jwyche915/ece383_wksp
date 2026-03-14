set_property SRC_FILE_INFO {cfile:c:/Users/Jason.Wyche/source/repos/ece383_wksp/Software_Controlled_Datapath/Software_Controlled_Datapath.gen/sources_1/bd/design_1/ip/design_1_OScope_2Channel_IP_0_0/src/clk_wiz_0/clk_wiz_0.xdc rfile:../../../Software_Controlled_Datapath.gen/sources_1/bd/design_1/ip/design_1_OScope_2Channel_IP_0_0/src/clk_wiz_0/clk_wiz_0.xdc id:1 order:EARLY scoped_inst:U0/OScope_2Channel_IP_slave_lite_v1_0_S00_AXI_inst/datapath/video_inst/mmcm_adv_inst_display_clocks/inst} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/Jason.Wyche/source/repos/ece383_wksp/Software_Controlled_Datapath/Software_Controlled_Datapath.gen/sources_1/bd/design_1/ip/design_1_OScope_2Channel_IP_0_0/src/clk_wiz_1/clk_wiz_1.xdc rfile:../../../Software_Controlled_Datapath.gen/sources_1/bd/design_1/ip/design_1_OScope_2Channel_IP_0_0/src/clk_wiz_1/clk_wiz_1.xdc id:2 order:EARLY scoped_inst:U0/OScope_2Channel_IP_slave_lite_v1_0_S00_AXI_inst/datapath/Audio_Codec/audiocodec_master_clock/inst} [current_design]
current_instance U0/OScope_2Channel_IP_slave_lite_v1_0_S00_AXI_inst/datapath/video_inst/mmcm_adv_inst_display_clocks/inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
current_instance
current_instance U0/OScope_2Channel_IP_slave_lite_v1_0_S00_AXI_inst/datapath/Audio_Codec/audiocodec_master_clock/inst
set_property src_info {type:SCOPED_XDC file:2 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
