@echo off

set dir=%~dp0

rem �ж�64λϵͳ��32λϵͳ
if /i %PROCESSOR_IDENTIFIER:~0,3%==x86 (
    echo 32λ����ϵͳ
    %windir%\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe /unregister %dir%bin/CustomContextMenu.dll /CodeBase
) else (
    echo 64λ����ϵͳ
    %windir%\Microsoft.NET\Framework64\v4.0.30319\RegAsm.exe /unregister %dir%bin/CustomContextMenu.dll /CodeBase
)

taskkill /f /im explorer.exe

explorer.exe