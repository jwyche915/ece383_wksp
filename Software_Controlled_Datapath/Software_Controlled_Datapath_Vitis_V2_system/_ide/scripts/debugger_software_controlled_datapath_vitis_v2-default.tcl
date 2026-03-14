# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\Jason.Wyche\source\repos\ece383_wksp\Software_Controlled_Datapath\Software_Controlled_Datapath_Vitis_V2_system\_ide\scripts\debugger_software_controlled_datapath_vitis_v2-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\Jason.Wyche\source\repos\ece383_wksp\Software_Controlled_Datapath\Software_Controlled_Datapath_Vitis_V2_system\_ide\scripts\debugger_software_controlled_datapath_vitis_v2-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Nexys Video 210276BA0139B" && level==0 && jtag_device_ctx=="jsn-Nexys Video-210276BA0139B-13636093-0"}
fpga -file C:/Users/Jason.Wyche/source/repos/ece383_wksp/Software_Controlled_Datapath/Software_Controlled_Datapath_Vitis_V2/_ide/bitstream/Software_Controlled_Datapath_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/Jason.Wyche/source/repos/ece383_wksp/Software_Controlled_Datapath/Software_Controlled_Datapath_wrapper_V2/export/Software_Controlled_Datapath_wrapper_V2/hw/Software_Controlled_Datapath_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/Jason.Wyche/source/repos/ece383_wksp/Software_Controlled_Datapath/Software_Controlled_Datapath_Vitis_V2/Debug/Software_Controlled_Datapath_Vitis_V2.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
