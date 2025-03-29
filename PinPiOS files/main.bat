@echo off
type calibratescreen.pinpiapp
pause >nul
color B1
type splash.pinpiutility
color B1
timeout 5 >nul
color 0F
cls
echo _________________________________________________________________________
echo.
echo  Boot menu v1.0
echo.
echo _________________________________________________________________________
echo.
echo Please select the operating system you want to boot. Use the 1 and 2 keys
echo to select the operating system. For more details relate to the Github page.
echo.
echo Select the operating system.
echo 1. PinpiOS
echo 2. "PinPiOS Graphical (beta)"
choice /c 12
if errorlevel 2 goto graphicalmenu
if errorlevel 1 goto menu
:graphicalmenu
if exist setup.txt goto menu
cls
type splash.pinpiutility
timeout 5 >nul
cls
echo Initilising setup.. This may take a while. depending on your CPU speed.
"C:\Users\My Laptop\Desktop\PinPiOS\Windows XP Installation Music.mp3"
cls
type setup1.pinpiapp
pause >nul
cls
type setup2.pinpiapp
timeout 3 >nul
cls
echo Welcome to text mode. This mode will be used for apps that only support Text mode.
echo This will be used for the login setup and login screen to make it a bit easier for me.
echo "(NOTE WHEN DEVELOPING APPS: Please use the template.bat to make your app.
echo "so PLEASE, i beg you to do that. Thank you)"
echo Type in your username and password. once setup completes, you will no longer see setup again.
set /p username=Username: 
set /p password=Password: 
echo Setup has completed. Saveing setup files..
echo setupdone >setup.txt
echo %username% >username.txt
echo %password% >password.txt
cls
echo Restart required. Restarting in 3
timeout 1 >nul
cls
echo Restart required. Restarting in 2
timeout 1 >nul
cls
echo Restart required. Restarting in 1
timeout 1 >nul
cls
goto menu
:menu
color B1
type splash.pinpiutility
color B1
timeout 5 >nul
color 0F
cls
color 0B
type desktop.txt
choice /c m
if errorlevel 1 set app=start
if errorlevel 1 goto start
:start
cls
echo.
echo %app%
echo _____________________________________________________________________________________________________
call %app%.bat
cd ..
cd "PinPiOS files"
goto menu