@echo off
rem  Vivado(TM)
rem  compile.bat: a Vivado-generated XSim simulation Script
rem  Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.

set PATH=%XILINX%\lib\%PLATFORM%;%XILINX%\bin\%PLATFORM%;C:/Xilinx/Vivado/2014.2/ids_lite/ISE/bin/nt;C:/Xilinx/Vivado/2014.2/ids_lite/ISE/lib/nt;C:/Xilinx/Vivado/2014.2/bin;%PATH%
set XILINX_PLANAHEAD=C:/Xilinx/Vivado/2014.2

xelab -m32 --debug typical --relax --generic_top "TB_Dist1=10" --generic_top "TB_Dist2=20" -L xil_defaultlib -L secureip --snapshot testbench_behav --prj V:/4_VHDL_labo/__OPDRACHTEN/VHDL_C/VHDL-Project_github/BCD_teller_V01/BCD_teller_V01.sim/sim_1/behav/testbench.prj   xil_defaultlib.testbench
if errorlevel 1 (
   cmd /c exit /b %errorlevel%
)
