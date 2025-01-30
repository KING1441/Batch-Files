@echo off
set "folderName=Computer"
set "documentsPath=%USERPROFILE%\Documents"

:: Create the folder if it doesn't exist
if not exist "%documentsPath%\%folderName%" (
    mkdir "%documentsPath%\%folderName%"
    echo Folder "%folderName%" created in Documents.
) else (
    echo Folder "%folderName%" already exists.
)

:: Define paths for the files
set "batFilePath=%documentsPath%\%folderName%\script.bat"
set "vbsFilePath=%documentsPath%\%folderName%\script.vbs"
set "txtFilePath=%documentsPath%\%folderName%\script.txt"

:: Create the .bat file to run ipconfig and open Visual Studio Code
(
    echo @echo off
    echo start cmd /k ipconfig
    echo start code
) > "%batFilePath%"

:: Create the .vbs file that opens a message box with title "System 32"
(
    echo MsgBox "You Got Hacked!", vbCritical, "System 32"
) > "%vbsFilePath%"

:: Create the .txt file with the specified content
(
    echo Set oV = CreateObject("SAPI.SpVoice")
    echo Set oFS = CreateObject("SAPI.SpFileStream")
    echo oFS.Open "C:\Windows\Media\tada.wav"
    echo oV.SpeakStream oFS
    echo oFS.Close
    echo oV.Speak "Hello World!"
) > "%txtFilePath%"

echo Files created: script.bat, script.vbs, and script.txt in the folder "%folderName%".
pause