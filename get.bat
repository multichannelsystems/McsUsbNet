call :copynative x86 Release
call :copynative x86 Debug
call :copynative x64 Release
call :copynative x64 Debug
call :copynet Release
call :copynet Debug

exit /B 0

:copynative
copy \Programming\DllNet\%1\%2\McsUsbNet_v20.xml %1\%2\
copy \Programming\DllNet\%1\%2\McsUsbNet_v20.dll %1\%2\
copy \Programming\DllNet\%1\%2\McsUsbNet.xml %1\%2\
copy \Programming\DllNet\%1\%2\McsUsbNet.dll %1\%2\
exit /B 0

:copynet
copy \Programming\DllNet\%1\McsUsbUpdateNetDll.dll %1
copy \Programming\DllNet\%1\McsUsbUpdateNetDll.XML %1
exit /B 0
