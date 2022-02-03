ECHO OFF
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
ECHO         PRESS 1, 2 OR 3 then enter, or 4 to EXIT.
ECHO       ...............................................
ECHO.
ECHO 1 - RE-INSTALL
ECHO 2 - Backup LGHUB Settings
ECHO 3 - Restore LGHUB Settings
ECHO 4 - EXIT MENU
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
ECHO         PRESS 1, 2 OR 3 then enter, or 4 to EXIT.
ECHO       ...............................................
ECHO.
ECHO 1 - Install (needed to backup/restore)
ECHO 2 - Backup LGHUB Settings
ECHO 3 - Restore LGHUB Settings
ECHO 4 - EXI
ECHO.
set /A installed=0
GOTO PSTMEN
)
:PSTMEN 

SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF %M%==1 GOTO INSTAL
IF %M%==2 GOTO BACK
IF %M%==3 GOTO RESTO
IF %M%==4 GOTO EXI
rem //////////install/////////.
:INSTAL
Cls
xcopy /y /s /i /q ".\files\backup" "%programdata%"  
xcopy /y /s /i /q ".\files\shortcut" "%userprofile%\desktop"   

GOTO MENU
rem //////////backup/////////.
:BACK
ECHO. Backing up files...
Timeout /t 1
cd %ProgramData%
Start ""  ".\Logitech Backup Settings Scripts Macros.bat" 
GOTO MENU
rem //////////restore/////////.
:RESTO
ECHO. Restoring Settings...
Timeout /t 1
cd %ProgramData%
Start ""  ".\Logitech Restore Settings Scripts Macros.bat" 
GOTO MENU
rem //////////exit/////////.
:EXI
CLS 
ECHO. Thanks for using. /u/Iam_A_HoneyBadger. 
@ECHO OFF
Timeout /t 1
exit
