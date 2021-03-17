@echo off
color 0e
cls 
:menu
echo 1.scientifico scienze applicate
echo 2.ITIS informatico

set /p answer=quale scuola scgliere? (digita il numero)
if %answer%==1 goto scientifico
if %answer%==2 goto ITIS
:scientifico
echo pro:
echo è un liceo che dà una formazione generale
echo gli sbocchi lavorativi sono numerosi 
echo contro:
echo meno informatica
echo bisogna fare l'università
echo in caso di pre-accademia mi verrebbe troppo impegnativo
pause 
:ITIS
echo pro:
echo più informatica
echo puoi iniziare subito a lavorare
echo contro:
echo non è un liceo che dà una formazione generale 
echo gli sbocchi lavorativi non sono tanti
pause