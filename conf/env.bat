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

:: Thiết lập đường dẫn tới trình biên dịch.
:: Hãy nhập đường dẫn thực tế trên máy tính của bạn.
::     !Lưu ý: Không đặt đường dẫn trong dấu nháy kép.
set compiler_path=C:\mingw-64\i686-8.1.0-win32-dwarf-rt_v6-rev0\mingw32\bin

echo %path% | find "%compiler_path%" > null
if %errorlevel% == 0 goto path_existed

set path=%path%;%compiler_path%
goto end_compiler_path

:path_existed
echo %compiler_path% existed
goto end_compiler_path

:end_compiler_path
echo path=%path%

:: Kết thúc các tùy chỉnh
:end_configuration