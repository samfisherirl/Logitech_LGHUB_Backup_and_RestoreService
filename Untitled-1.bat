@ECHO OFF

if exist %ProgramData%\LogitechBackup\ (
  echo Yes 
  pause
) else (
  echo No
  pause
)
