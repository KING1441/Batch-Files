@echo off
:1
color a
echo Hello, do you love me? (answer)
set /p input=
if /i %input%==yes goto love
if /i %input%==no goto hate
if /i not %input%==yes,no goto 1

:love
echo I Love you Too...
echo See you Later
pause
exit

:hate
echo But I Love You...lol
echo You Get Hacked!
timeout 3
shutdown -s -t 100