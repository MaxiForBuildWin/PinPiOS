@echo off 
title Loading..
set loadingitem=Loading required files..
color 0A
echo %loadingitem%
echo ========================================
echo ^|                                ^|   0 ^|
echo ========================================
ping localhost -n 2 >nul
cls
echo %loadingitem%
echo ========================================
echo ^|##                              ^|   5 ^|
echo ========================================
ping localhost -n 1 >nul
cls
echo %loadingitem%
echo ========================================
echo ^|####                            ^|  15 ^|
echo ========================================
ping localhost -n 1 >nul
cls
echo %loadingitem%
echo ========================================
echo ^|########                        ^|  30 ^|
echo ========================================
ping localhost -n 2 >nul
cls
echo %loadingitem%
echo ========================================
echo ^|##########                      ^|  42 ^|
echo ========================================
ping localhost -n 1 >nul
cls
echo %loadingitem%
echo ========================================
echo ^|##########                      ^|  45 ^|
echo ========================================
ping localhost -n 1 >nul
cls
echo %loadingitem%
echo ========================================
echo ^|############                    ^|  47 ^|
echo ========================================
ping localhost -n 1 >nul
cls
echo %loadingitem%
echo ========================================
echo ^|##############                  ^|  50 ^|
echo ========================================
ping localhost -n 2 >nul
cls
echo %loadingitem%
echo ========================================
echo ^|################                ^|  52 ^|
echo ========================================
ping localhost -n 1 >nul
cls
echo %loadingitem%
echo ========================================
echo ^|##################              ^|  53 ^|
echo ========================================
ping localhost -n 1 >nul
cls
echo %loadingitem%
echo ========================================
echo ^|####################            ^|  65 ^|
echo ========================================
ping localhost -n 2 >nul
cls
echo %loadingitem%
echo ========================================
echo ^|######################          ^|  70 ^|
echo ========================================
ping localhost -n 1 >nul
cls
echo %loadingitem%
echo ========================================
echo ^|##########################      ^|  80 ^|
echo ========================================
ping localhost -n 1 >nul
cls
echo %loadingitem%
echo ========================================
echo ^|############################    ^|  89 ^|
echo ========================================
ping localhost -n 1 >nul
cls
echo %loadingitem%
echo ========================================
echo ^|##############################  ^|  90 ^|
echo ========================================
ping localhost -n 1 >nul
cls
echo %loadingitem%
echo ========================================
echo ^|##############################  ^|  95 ^|
echo ========================================
ping localhost -n 1 >nul
cls
echo Loading Complete...
echo ========================================
echo ^|################################^| 100 ^|
echo ========================================
echo OK!
cls
title PinPiOS
cd "C:\Users\My Laptop\Desktop\PinPiOS\PinPiOS files"
title PinPiOS|RAM=4GB|FPS 60
call main.bat
