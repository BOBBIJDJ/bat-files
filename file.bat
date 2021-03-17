echo off
color 2
cls
:menu
set load=
set /a loadnum=0
:Loading
set load=%load%--
cls
echo.
echo                                                  Loading... Please Wait...
echo                                          %load%
echo.
ping localhost -n 0 >nul
set /a loadnum=%loadnum% +1
if %loadnum%==20 goto VAFFANCULO
goto Loading
:VAFFANCULO
echo                                                        VAFFANCULO
pause
goto menu