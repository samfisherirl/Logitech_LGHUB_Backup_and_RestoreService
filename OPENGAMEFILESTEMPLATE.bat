
@ECHO OFF
Cls
TITLE Saving Logitech GHUB Settings
ECHO. Backing up files...
Timeout /t 1

cd %ProgramData%

Start ""  ".\Logitech Backup Settings Scripts Macros.bat"

exit



