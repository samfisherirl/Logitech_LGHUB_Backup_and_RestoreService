@echo off
ECHO. Schedule Task to Backup LGHUB settings on Startup.
ECHO.
ECHO.This Requires Admin Privileges. Press enter to accept. 
ECHO.
ECHO. 
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
SCHTASKS /CREATE /SC ONLOGON  /TN "MyTasks\Logitech task" /TR "%ProgramData%\Logitech Backup onstart min starter.bat"
exit