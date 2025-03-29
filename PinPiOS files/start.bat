@echo off
cd ..
cd apps
:startofapp
dir /B
echo _________________________________________________________________________________
set /p app=What app do you want to launch? (without .bat extention)
cls
echo.
echo %app%
echo __________________________________________________________________________________________________
if exist "%app%.bat" (
    call %app%.bat
) else (
    echo Error: App "%app%.bat" not found!
    goto startofapp
)