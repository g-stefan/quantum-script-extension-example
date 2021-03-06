@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

echo -^> platform release quantum-script-extension-example

goto cmdXDefined
:cmdX
%*
if errorlevel 1 goto cmdXError
goto :eof
:cmdXError
echo "Error: release"
exit 1
:cmdXDefined

call :cmdX cmd.exe /C "build\msvc64.cmd clean"
call :cmdX cmd.exe /C "build\msvc64.cmd release"
call :cmdX cmd.exe /C "build\msvc64.cmd clean"

call :cmdX cmd.exe /C "build\msvc32.cmd clean"
call :cmdX cmd.exe /C "build\msvc32.cmd release"
call :cmdX cmd.exe /C "build\msvc32.cmd clean"

call :cmdX cmd.exe /C "build\mingw64.cmd clean"
call :cmdX cmd.exe /C "build\mingw64.cmd release"
call :cmdX cmd.exe /C "build\mingw64.cmd clean"

call :cmdX cmd.exe /C "build\mingw32.cmd clean"
call :cmdX cmd.exe /C "build\mingw32.cmd release"
call :cmdX cmd.exe /C "build\mingw32.cmd clean"

call :cmdX cmd.exe /C "build\wsl-ubuntu-20.04.cmd clean"
call :cmdX cmd.exe /C "build\wsl-ubuntu-20.04.cmd release"
call :cmdX cmd.exe /C "build\wsl-ubuntu-20.04.cmd clean"

call :cmdX cmd.exe /C "build\wsl-ubuntu-18.04.cmd clean"
call :cmdX cmd.exe /C "build\wsl-ubuntu-18.04.cmd release"
call :cmdX cmd.exe /C "build\wsl-ubuntu-18.04.cmd clean"
