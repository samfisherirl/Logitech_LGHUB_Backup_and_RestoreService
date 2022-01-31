ECHO OFF
TITLE Logitech Backup and Restore Service
CLS
:MENU

if exist %ProgramData%\LogitechBackup\ (
ECHO.
ECHO       ...............................................
ECHO       Welcome to Logitech Backup and Restore Service
ECHO       ...............................................
ECHO.
ECHO.
ECHO       ...............................................
ECHO       Select and options and Press Enter, or 5 to EXIT
ECHO       ...............................................
ECHO.
ECHO 1 - RE-Install or Repair -install detected-
ECHO 2 - Backup LGHUB Settings
ECHO 3 - Restore LGHUB Settings
ECHO 4 - Schedule Windows Startup Task to Backup Settings on Login 
ECHO 5 - EXIT Menu
ECHO. 
set /A installed=1
GOTO PSTMEN
) 
else ( 
ECHO.
ECHO       ...............................................
ECHO       Welcome to Logitech Backup and Restore Service
ECHO       ...............................................
ECHO.
ECHO.
ECHO       ...............................................
ECHO       Select and options and Press Enter, or 5 to EXIT
ECHO       ...............................................
ECHO.
ECHO 1 - Install -needed to backup or restore-
ECHO 2 - Backup LGHUB Settings
ECHO 3 - Restore LGHUB Settings
ECHO 4 - Schedule Windows Startup Task to Backup Settings on Login 
ECHO 5 - EXIT Menu
ECHO.
set /A installed=0
GOTO PSTMEN
)
:PSTMEN 
SET /P M=Type 1, 2, 3, 4, or 5 then press ENTER:
IF %M%==1 GOTO INSTAL
IF %M%==2 GOTO BACK
IF %M%==3 GOTO RESTO
IF %M%==4 GOTO STARTSK
IF %M%==5 GOTO EXI
rem //////////install/////////.
:INSTAL
xcopy /y /s /i /q ".\files\backup" "%programdata%"  
xcopy /y /s /i /q ".\files\shortcut" "%userprofile%\desktop"   
Cls
ECHO.Files have been added to \ProgramData\ titled Logitech Backup and Restore
ECHO.
ECHO.A shortcut has been added to the Desktop
ECHO.
GOTO MENU
rem //////////backup/////////.
:BACK
ECHO. Backing up files...
ECHO. 
ECHO. 
Timeout /t 1
cd %ProgramData%
Start ""  ".\Logitech Backup Settings Scripts Macros.bat" 
Cls
GOTO MENU
rem //////////restore/////////.
:RESTO
ECHO. Restoring Settings...
ECHO. 
ECHO. 
Timeout /t 1
cd %ProgramData%
Start ""  ".\Logitech Restore Settings Scripts Macros.bat" 
Cls
ECHO.
ECHO.Your LGHUB settings and profile have been restored from the last backup
ECHO.
GOTO MENU
rem ///////////onlogin start task//////////
:STARTSK 
ECHO. Schedule Task to Backup LGHUB settings on Startup.
ECHO.
ECHO. This Requires Admin, Opening New Window. 
ECHO. 
ECHO. 
cd %ProgramData%
Start ""  ".\create startup task.exe" 
Cls
ECHO. New window opened to schedule backup task. If you did not receive a prompt, please reinstall. 
ECHO. 
GOTO MENU
rem //////////exit/////////.
:EXI
CLS 
ECHO. Thanks for using. /u/Iam_A_HoneyBadger. 
@ECHO OFF
Timeout /t 2
exit
