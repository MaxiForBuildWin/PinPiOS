@echo off
echo Welcome to the Simple Game Creator!
echo.
echo What do you want to name your game?
set /p gameName=
echo.
echo Type in your game code. Each line you type will be saved.
echo When you are finished, press Ctrl+Z and then Enter.
echo.

echo @echo off > %gameName%.bat
echo echo %gameName% >> %gameName%.bat
echo echo. >> %gameName%.bat
copy con >> %gameName%.bat

echo.
echo Your game code has been saved to %gameName%.bat!
pause
cls
color 00
timeout 1 >nul
color 80
timeout 1 >nul
color 70
timeout 1 >nul
color F0
timeout 1 >nul
echo Do you want to submit this app to the App store on Github?
choice
if errorlevel 2 exit
if errorlevel 1 goto AppSubmition
:AppSubmition
echo Please copy the code you used for the app then send it to the email maxigoggle1@gmail.com. this
echo app will then go through verification process. If the app has any innapropiate content, There will
echo be a reply saying that this app cannot be uploaded. Once you are done with that, you can close
echo this app.
pause