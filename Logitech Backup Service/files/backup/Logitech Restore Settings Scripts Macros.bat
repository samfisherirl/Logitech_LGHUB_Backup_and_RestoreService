
@echo off
TITLE "Restoring Logitech Settings"

timeout /t 1 
cls
xcopy /y /s /i /q ".\LogitechBackup\LGHUB" ".\LGHUB"

timeout 1 >nul
Pause
exit
