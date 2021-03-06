proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_param gui.test TreeTableDev
  open_checkpoint Eight_Digit_BCD_teller_routed.dcp
  write_bitstream -force Eight_Digit_BCD_teller.bit 
  if { [file exists V:/4_VHDL_labo/__OPDRACHTEN/VHDL_C/VHDL-Project_github/BCD_teller_V01/BCD_teller_V01.runs/synth_1/Eight_Digit_BCD_teller.hwdef] } {
    catch { write_sysdef -hwdef V:/4_VHDL_labo/__OPDRACHTEN/VHDL_C/VHDL-Project_github/BCD_teller_V01/BCD_teller_V01.runs/synth_1/Eight_Digit_BCD_teller.hwdef -bitfile Eight_Digit_BCD_teller.bit -meminfo Eight_Digit_BCD_teller_bd.bmm -file Eight_Digit_BCD_teller.sysdef }
  }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

