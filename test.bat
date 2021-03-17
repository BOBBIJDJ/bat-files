@echo off
color 0e
cls
:start_
echo test matematico
goto test_1
:test_1
cls
echo digita il numero giusto
echo a.9
echo b.15
echo c.5
echo d.12
set /p answer= nell'equazione 3x=9+12-6  x è uguale a cosa?
if %answer%==5 goto correct_1
if %answer%==9 goto wrong
if %answer%==15 goto wrong
if %answer%==12 goto wrong
:correct_1
cls
echo risposta giusta
set /p answer= 
goto test_2
:wrong
cls
echo risposta sbagliata
goto start_
:test_2
cls
echo digita la lettera 
echo a.-6
echo b.8
echo c.-8
echo d.-2
set /p answer= nell'equazione 2x-y=10x+y-8+24  sapendo che y è il risultato precedente calcola il valore di x
if %answer%==d goto correct_2
if %answer%==b goto wrong
if %answer%==c goto wrong
if %answer%==a goto wrong
:correct_2
cls
echo risposta giusta
set /p answer= 
goto test_3
:test_3
cls
echo digita la lettera
echo a.7/6
echo b.3/8
echo c.2
echo d.-15
set /p answer= nell'equazione 5x*8-6y=9y sapendo che y è il risultato precedente calcola il valore di x
if %answer%==c goto correct_3
if %answer%==d goto wrong
if %answer%==b goto wrong
if %answer%==a goto wrong
:correct_3
:correct_2
cls
echo risposta giusta
set /p answer= 
goto test_4