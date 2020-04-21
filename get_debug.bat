echo DEBUG_VERSION_DO_NOT_COMMIT > DEBUG_VERSION_DO_NOT_COMMIT

call :copynative x86 Debug
call :copynative x64 Debug
call :copynet Debug

exit /B 0

:copynative
copy \Programming\DllNet\%1\%2\McsUsbNet.xml %1\
copy \Programming\DllNet\%1\%2\McsUsbNet.dll %1\
exit /B 0

:copynet
copy \Programming\DllNet\%1\McsUsbUpdateNetDll.dll .
copy \Programming\DllNet\%1\McsUsbUpdateNetDll.XML .
exit /B 0
