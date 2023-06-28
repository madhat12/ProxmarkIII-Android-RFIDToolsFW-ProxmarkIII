@echo off
color 0a
MODE CON COLS=100 LINES=36
title £¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡Caution£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set num=
set /p num= Fill in Com Port¡¾Find Com Port in Device Manager¡ªProxmark3¡¿Com Port(Example"5"):

echo.
echo.

goto :all


:all
cls
title lashing Proxmark3 Firmware[RRG BOOTROM],Please wait........
echo.
echo                 ©³©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©·
echo                 ©¦Flashing bootrom,Please wait a moment     ©¦
echo                 ©»©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¿
echo.
flasher.exe com%num% -b  bootrom.elf
ping 127.0.0.1 -n 8 >nul
taskkill /f /im flasher.exe

cls
title Congratulations bootrom.elf upgrade successfully£¡
echo.
echo.
echo.
pause.
cls
MODE CON COLS=130 LINES=36
cmd.exe
