@echo off
upx.exe --best yvK.exe
echo Hata Kodu: %errorlevel%
if %errorlevel% == 0 goto son
pause
:son

