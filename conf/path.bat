@echo off

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