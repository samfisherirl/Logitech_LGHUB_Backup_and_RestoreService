@echo off
goto check_Permissions

:check_Permissions

    net session >nul 2>&1
    if %errorLevel% == 0 (
          ECHO. Schedule Task to Backup LGHUB settings on Startup.
          ECHO.
          ECHO. 
          ECHO.
          ECHO. 
          ECHO.
          ECHO. 
          SCHTASKS /CREATE /SC ONLOGON  /TN "MyTasks\Logitech task" /TR "%ProgramData%\Logitech Backup onstart min starter.bat"
          ECHO. 
          ECHO. 
          ECHO. 
          ECHO.Completed. Close this and the previous window to continue. 
          ECHO. 
          ECHO.
          pause
          exit
    ) else (       
    echo Administrative permissions required. It has detected no admin priviledges. 
    echo.
    echo.A new window will open. When done, Close this window.
    echo.
     if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
    )

    pause >nul

ECHO. Schedule Task to Backup LGHUB settings on Startup.
ECHO.
ECHO. 
ECHO.
ECHO. 
ECHO.
ECHO. 
SCHTASKS /CREATE /SC ONLOGON  /TN "MyTasks\Logitech task" /TR "%ProgramData%\Logitech Backup onstart min starter.bat"
timeout /t 2  
exit