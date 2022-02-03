

echo Backing up files 


@echo off

TITLE Saving Logitech GHUB Settings

Timeout /t 2         

cd %ProgramData%

Start ""  ".\program apps folder.bat"

cd %LocalAppData%

Start ""  ".\local apps folder.bat" 

timeout 5 >nul
exit



