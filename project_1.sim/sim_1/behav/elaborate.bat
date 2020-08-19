@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto 066c894e64f046ba8c0bf4ade8532ca6 -m64 --debug typical --relax --mt 2 -L ieee_proposed -L xil_defaultlib -L secureip --snapshot fpadd_1_behav xil_defaultlib.fpadd_1 -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
