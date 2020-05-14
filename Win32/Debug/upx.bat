@echo off
upx.exe --best EncodeDPR.exe
echo Hata Kodu: %errorlevel%
if %errorlevel% == 0 goto son
pause
:son
