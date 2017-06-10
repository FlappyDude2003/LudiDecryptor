@echo off
if exist "C:\Users\%username%\AppData\Local\Ludi\ludidecrypt.lud" goto EXIST
if not exist "C:\Users\%username%\AppData\Local\Ludi\ludidecrypt.lud" goto NOTEXIST
:EXIST
mode con cols=50 lines=10
title Ludicrous Decryptor : Decrypt
color f0
cls
SetLocal EnableDelayedExpansion
set decryptcode=
for /F "delims=" %%i in (C:\Users\%username%\AppData\Local\Ludi\ludidecrypt.lud) do set code=%decryptcode% %%i
echo Your Code Is: %code%
echo Press A Key To Exit.
pause >nul
:NOTEXIST
exit
