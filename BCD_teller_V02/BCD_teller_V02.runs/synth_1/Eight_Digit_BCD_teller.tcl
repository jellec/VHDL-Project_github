# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1
set_property target_language VHDL [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]
read_vhdl -library xil_defaultlib {
  V:/4_VHDL_labo/__OPDRACHTEN/VHDL_C/VHDL-Project_github/BCD_teller_V02/BCD_teller_V02.srcs/sources_1/new/Teller.vhd
  V:/4_VHDL_labo/__OPDRACHTEN/VHDL_C/VHDL-Project_github/BCD_teller_V02/BCD_teller_V02.srcs/sources_1/new/Segment.vhd
  V:/4_VHDL_labo/__OPDRACHTEN/VHDL_C/VHDL-Project_github/BCD_teller_V02/BCD_teller_V02.srcs/sources_1/new/Scan_teller.vhd
  V:/4_VHDL_labo/__OPDRACHTEN/VHDL_C/VHDL-Project_github/BCD_teller_V02/BCD_teller_V02.srcs/sources_1/new/MUX.vhd
  V:/4_VHDL_labo/__OPDRACHTEN/VHDL_C/VHDL-Project_github/BCD_teller_V02/BCD_teller_V02.srcs/sources_1/new/DEMUX.vhd
  V:/4_VHDL_labo/__OPDRACHTEN/VHDL_C/VHDL-Project_github/BCD_teller_V02/BCD_teller_V02.srcs/sources_1/new/8Digit_BCD_teller.vhd
}
read_xdc V:/4_VHDL_labo/__OPDRACHTEN/VHDL_C/VHDL-Project_github/BCD_teller_V02/BCD_teller_V02.srcs/constrs_1/imports/Downloads/Nexys4_Master.xdc
set_property used_in_implementation false [get_files V:/4_VHDL_labo/__OPDRACHTEN/VHDL_C/VHDL-Project_github/BCD_teller_V02/BCD_teller_V02.srcs/constrs_1/imports/Downloads/Nexys4_Master.xdc]

set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir V:/4_VHDL_labo/__OPDRACHTEN/VHDL_C/VHDL-Project_github/BCD_teller_V02/BCD_teller_V02.cache/wt [current_project]
set_property parent.project_dir V:/4_VHDL_labo/__OPDRACHTEN/VHDL_C/VHDL-Project_github/BCD_teller_V02 [current_project]
catch { write_hwdef -file Eight_Digit_BCD_teller.hwdef }
synth_design -top Eight_Digit_BCD_teller -part xc7a100tcsg324-1
write_checkpoint Eight_Digit_BCD_teller.dcp
report_utilization -file Eight_Digit_BCD_teller_utilization_synth.rpt -pb Eight_Digit_BCD_teller_utilization_synth.pb
