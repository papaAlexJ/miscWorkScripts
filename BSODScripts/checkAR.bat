@echo off
set PS1_PATH=%~dp0
powershell -Command "Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force"
powershell -Command "PowerShell -f %PS1-PATH%checkAR.ps1"