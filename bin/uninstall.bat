@echo off

set dir=%~dp0

rem �ж�64λϵͳ��32λϵͳ
if /i %PROCESSOR_IDENTIFIER:~0,3%==x86 (
    echo ֻ֧��Win64 ��֧��Win32
) else (
	regsvr32 /unregister %dir%CustomContextMenu.dll /CodeBase
)

taskkill /f /im explorer.exe

explorer.exe