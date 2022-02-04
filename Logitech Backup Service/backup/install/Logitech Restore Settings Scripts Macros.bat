
@echo off
TITLE "Restoring Logitech Settings"
cd %programdata%
timeout /t 1 
cls
xcopy /y /s /i /q "%programdata%\LogitechBackup\LGHUB" ".\LGHUB"

timeout 1 >nul
Pause
exit
