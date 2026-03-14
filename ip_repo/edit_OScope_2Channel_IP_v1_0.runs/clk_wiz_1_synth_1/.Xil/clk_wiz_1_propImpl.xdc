set_property SRC_FILE_INFO {cfile:c:/Users/Jason.Wyche/source/repos/ece383_wksp/ip_repo/OScope_2Channel_IP_1_0/src/clk_wiz_1/clk_wiz_1.xdc rfile:../../../OScope_2Channel_IP_1_0/src/clk_wiz_1/clk_wiz_1.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
