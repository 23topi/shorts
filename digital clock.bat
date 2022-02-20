
@echo off
digital clock
@mode con cols = 30 lines
color 00
:main
cls
echo.
echo Time:  %time%
echo.
echo Date:  %date%
echo.
timeout /nobreak 1 >nul
REM  ping -n 2 0.0.0.0 >nul
goto main