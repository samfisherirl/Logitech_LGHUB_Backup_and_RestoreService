
@echo off
TITLE "Backing up Logitech Settings"
cd %programdata%
timeout /t 1 
cls
xcopy /y /s /i /q "%programdata%\LGHUB" "%programdata%\LogitechBackup\" 

timeout 1 >nul
Pause
exit