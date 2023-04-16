@echo off
set xv_path=D:\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto 406894834a8b47f882941244794c8ddb -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot RAM_behav xil_defaultlib.RAM xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
