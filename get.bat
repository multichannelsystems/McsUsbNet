call :copynative x86 Release
call :copynative x64 Release
call :copynet Release

del DEBUG_VERSION_DO_NOT_COMMIT

exit /B 0

:copynative
copy \Programming\DllNet\%1\%2\McsUsbNet.xml %1\
copy \Programming\DllNet\%1\%2\McsUsbNet.dll %1\
exit /B 0

:copynet
copy \Programming\DllNet\%1\McsUsbUpdateNetDll.dll .
copy \Programming\DllNet\%1\McsUsbUpdateNetDll.XML .
exit /B 0
