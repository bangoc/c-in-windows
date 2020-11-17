@echo off

:: Thiết lập bảng mã để hiển thị tiếng việt
ver | find "5.1" > nul 
if %errorlevel% == 0 goto xp
 
ver | find "6.0" > nul
if %errorlevel% == 0 goto win vista

ver | find "6.1"
if %errorlevel% == 0 goto win7
 
ver | find "6.2" > nul
if %errorlevel% == 0 goto win8
 
ver | find "6.3" > nul
if %errorlevel% == 0 goto win8.1

ver | find "10.0" > nul
if %errorlevel% == 0 goto win10
 
:xp 
:win vista
:win7
:win8
:win8.1
echo Not Win10, i'm not sure about utf-8 support here, try with lucks!
goto :end_codepage

:win10
echo Win10, change codepage to 65001
chcp 65001
goto :end_codepage
 
:other
echo Early Win
goto :end_codepage

:end_codepage
