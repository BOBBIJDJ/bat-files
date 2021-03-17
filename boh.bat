@echo off 
title game made by BOBBIJDJ
color 86
if "%1" neq ""  (goto %1)
:Menu
cls
echo.
echo.                                               #########################
echo.                                               # GAME MADE BY BOBBIJDJ #
echo.                                               #########################
echo.
echo.
echo.
echo.
echo.
echo Please select your Choice. Use mouse or Keyboard (up/down) keys to navigate to different menus.
echo.
menumode 8668 "                                                        START" "                                                        CREDITS" "                                                        EXIT"
if %errorlevel1%==1 goto start_1
if %errorlevel1%==2 goto credits
if %errorlevel1%==3 goto exit_1
:exit_1
cls
echo thanks for playing
pause
exit  /b
:credits
cls
echo credits
echo.
echo thank you for playing boh
echo by BOBBIJDJ
pause
goto Menu
:start_1
cls
echo oh no Fortnite è crashato 
echo stavi per fare vittoria reale ma poof
echo 1.Fortnite
echo 2.Dauntless
set /p answer=provi a riavviare Fortnite o vai a giocare a Dauntless?
if %answer%==1 goto Fortnite_1
if %answer%==2 goto Dauntless_1
:Fortnite_1
cls
echo sta caricando...
set /p answer= premi 1 e poi invio per continuare
if %answer%==1 goto Fortnite_crash
:Dauntless_1
cls
echo Dauntless é un gioco bellissimo (è in beta ma non crasha come Fortnite)
pause
goto Menu 
:Fortnite_crash
cls
echo Fortnite è crashato perchè è un gioco di merda
pause
goto Menu