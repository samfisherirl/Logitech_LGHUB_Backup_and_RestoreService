
@echo off
timeout 1 >nul 
TITLE Restoring Logitech Settings
cd %programdata%
cls
xcopy /y /s /i /q "%programdata%\LogitechBackup\LGHUB" ".\LGHUB"

exit
