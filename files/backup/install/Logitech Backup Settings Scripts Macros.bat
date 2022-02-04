
@echo off
TITLE Backing up Logitech Settings
cd %programdata% 
cls
xcopy /y /s /i /q "%programdata%\LGHUB" "%programdata%\LogitechBackup\" 

timeout 1 >nul 
exit