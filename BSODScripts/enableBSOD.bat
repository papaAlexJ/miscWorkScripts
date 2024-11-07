@echo off
set PS1_PATH=%~dp0
powershell -Command "Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force"
powershell -Command "PowerShell -f %PS1_PATH%enableBSOD.ps1"
powershell -Command "PowerShell -f %PS1_PATH%checkAR.ps1"