
ECHO OFF  
TITLE Logitech Backup and Restore Service 
xcopy /y /s /i /q ".\backup" "%programdata%"
xcopy /y /s /i /q ".\shortcut" "%userprofile%\desktop"
Cls
ECHO.
ECHO.Files have been added to \ProgramData\ titled Logitech Backup and Restore
ECHO.
ECHO.A shortcut has been added to the Desktop
ECHO.
ECHO.
timeout /t 1