@echo off
color 0A
:: Ask the user for their name
set /p username=What is your name? 

:: Check if the name is "pazi"
if /i "%username%"=="pazi" (
    echo Hello, Pazi. The system will now shut down.
    timeout /t 3 /nobreak >nul
    shutdown /s /t 10
    exit
) else (
    :: Create a folder named with the user's name
    mkdir "%username%"

    :: Create the README.txt file inside the folder with 5 lines
    echo Hello, %username%! This is your readme file. > "%username%\README.txt"
    echo Line 1: Welcome to your folder! >> "%username%\README.txt"
    echo Line 2: This folder is named after you. >> "%username%\README.txt"
    echo Line 3: You can store important files here. >> "%username%\README.txt"
    echo Line 4: This file was created by a batch script. >> "%username%\README.txt"
    echo Line 5: Have a great day! >> "%username%\README.txt"

    :: Create another .bat file inside the folder
    echo @echo off > "%username%\RIP_Me.bat"
    echo echo This is an example batch file. >> "%username%\RIP_Me.bat"

    :: Inform the user the folder and files were created
    echo Folder was created.
)
