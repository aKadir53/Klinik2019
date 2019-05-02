@echo off
upx.exe --best Klinik2019.exe
echo Hata Kodu: %errorlevel%
if %errorlevel% == 0 goto son
pause
:son
