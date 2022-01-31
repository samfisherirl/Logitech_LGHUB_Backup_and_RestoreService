/min
@echo off
TITLE "Backing up Logitech Settings"
  
Cls
xcopy /y /s /i /Q ".\LGHUB" ".\LogitechBackup\LGHUB"

Cls
timeout 1 >nul 
exit
