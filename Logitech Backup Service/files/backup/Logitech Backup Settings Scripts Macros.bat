
@echo off
TITLE "Backing up Logitech Settings"
  
Cls
xcopy /y /s /i /Q ".\LGHUB" ".\LogitechBackup\LGHUB"

timeout 1 >nul 
ECHO. 
ECHO Files have been backed up in C:\ProgramData\Logitech Backup\.
ECHO. 
ECHO. 
Pause
exit
