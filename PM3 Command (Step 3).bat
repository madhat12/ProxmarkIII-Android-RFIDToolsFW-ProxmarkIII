@echo off
color 0a
MODE CON COLS=110
title £¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡PM3 CMD BY tssmcu£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡£¡
echo.
echo.
echo.
echo

echo.
echo.

set num=
set /p num= Please fill ¡¾Com Port under Device Manager for Proxmark3¡¿Com Port(Example: com5, Fill in¡°5¡±):



Proxmark3 /com%num%

pause.