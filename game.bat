@echo off
title game
cls
mode con:cols=120 lines=30
color 86

set load=
set/a loadnum=0
:Loading
set load=%load%ÛÛ
cls
echo.
echo     Loading... Please Wait...
echo     ________________________________________
echo     %load%
echo.
ping localhost -n 0 >nul
set/a loadnum=%loadnum% +1
if %loadnum%==20 goto Done
goto Loading
:Done
echo.
goto aio
:aio
if exist "C:\Windows\System32\menumode.exe" goto check
goto menucreate
:menucreate
cd >nul
xcopy /c /q menumode.exe "C:\Windows\System32"
goto check
:check
cls
if exist C:\windows\System32\menumode.exe goto proceed
if not exist C:\windows\System32\menumode.exe goto menusel
:menusel
cls
echo.
echo                         Sorry for the interruption
echo.
echo  Some features of this utility are not supported by your Computer.
echo  Please move menumode.exe from downloaded package to C:\Windows\System32.
echo.
choice  /C "yn" /M " Do you want to download that file?: "
if ERRORLEVEL 2 goto check
if ERRORLEVEL 1 goto downmenu
:downmenu
cls
echo this section is under maintanace
goto maintain



cd %~dp0
set url="http://goo.gl/Tpk7fR"
set location="C:\Windows\System32"
%extd% /download %url% %location%
if %result% EQU 0  (
	%extd% /messagebox Error "Download failed" 16
) ELSE (
	%extd% /messagebox Done "Download succeeded"
)


:maintain
::start http://goo.gl/Tpk7fR 
:proceed
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "welcome" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto welcome
:welcome
echo.
echo.
echo      !!!!          !!!!  !!!!!!!!!!!  !!!!           !!!!       !!!!      !!!!!        !!!!!   !!!!!!!!!!!
echo      !!!!          !!!!  !!!!         !!!!         !!!   !!   !!!  !!!    !!!! !!    !! !!!!   !!!!
echo      !!!!    !!    !!!!  !!!!         !!!!        !!         !!      !!   !!!!  !!  !!  !!!!   !!!!
echo      !!!!   !!!!   !!!!  !!!!!!!!     !!!!       !!         !!        !!  !!!!   !!!!   !!!!   !!!!!!!!
echo      !!!!  !!  !!  !!!!  !!!!         !!!!        !!         !!      !!   !!!!    !!    !!!!   !!!!
echo      !!!! !!    !! !!!!  !!!!         !!!!         !!!   !!   !!!  !!!    !!!!          !!!!   !!!!
echo      !!!!!        !!!!!  !!!!!!!!!!!  !!!!!!!!!!!    !!!!       !!!!      !!!!          !!!!   !!!!!!!!!!!
echo.
goto vercheck
:vercheck
if exist C:\Windows\System32\version1.6 goto maino
if not exist C:\Windows\System32\version1.6 goto cverinfo
:cverinfo
md C:\Windows\System32\version1.6
for /l %%n in (1, 1 ,1) do echo x=msgbox("1) 'More Tools' menu added. 2) Zip or unzip a file with simple zipper. 3) Several bugs fixed" ,0, "What's new in this version 1.6") >> verinfo.vbs
start verinfo.vbs
timeout 0 >nul
del verinfo.vbs
goto maino
:main
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "home page" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto maino
:maino
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
menumode 8668 "                         START" "                         CREDITS" "                         EXIT" 
if %errorlevel%==1 goto startvbs
if %errorlevel%==2 goto creditsvbs
if %errorlevel%==3 goto exitvbs
goto errormain
:errormain
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Invalid choice. chose from 1 to 14" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto finalpg
:startvbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "system cleanup" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto start
:start
cls
echo oh no Fortnite è crashato
echo. 
echo stavi per fare vittoria reale ma poof
echo.
echo cosa fai,provi a riavviare Fortnite o giochi a Dauntless?
echo.
menumode 8668 "                         FORTNITE" "                         DAUNTLESS"
if %errorlevel%==1 goto fortnitevbs
if %errorlevel%==2 goto dauntlessvbs
goto errormain
echo 1.Fortnite
echo 2.Dauntless
:fortnitevbs
rem making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "system cleanup" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto Fortnite_1
:dauntlessvbs
rem making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "system cleanup" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto dauntless_1
:Fortnite_1
cls
echo sta caricando...
timeout 5
goto Fortnite_crash
:Dauntless_1
cls
echo Dauntless é un gioco bellissimo (è in beta ma non crasha come Fortnite)
pause
goto Main 
:Fortnite_crash
cls
echo Fortnite è crashato perchè è un gioco di merda
pause
goto Main
:creditsvbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "System power management" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto credits
:credits
cls
echo credits
echo.
echo thank you for playing this game
echo by BOBBIJDJ
pause
goto Main
:exitvbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "website tools" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto exit_1
:exit_1
cls
echo thanks for playing
pause
exit  /b