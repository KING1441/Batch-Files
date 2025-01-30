@echo off

color a
echo Hello, do you want to join the game? (answer in only yes/no)
set /p input=
if /i %input%==yes goto love
if /i %input%==no goto hate
if /i %input%==yes,no goto 1

:love
echo no
pause
exit

:hate
echo wait... LOL
echo you Just Got Hacked!
timeout 5
shutdown -s -t 30

