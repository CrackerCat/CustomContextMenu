@echo off

set dir=%~dp0

rem �ж�64λϵͳ��32λϵͳ
if /i %PROCESSOR_IDENTIFIER:~0,3%==x86 (
    echo ֻ֧��Win64 ��֧��Win32
    pause
) else (
    regsvr32  %dir%CustomContextMenu.dll /CodeBase
)