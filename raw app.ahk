Gui, Add, Text, x62 y29 w320 h30 , Welcome to Logitech Backup and Restore Service
Gui, Add, Button, x62 y79 w90 h20 ginstall, Install or Repair
Gui, Add, Text, x182 y79 w170 h20 , Required to Backup or Restore
Gui, Add, Button, x62 y129 w90 h20 gbackup, Backup
Gui, Add, Text, x182 y129 w200 h30 , Backup LGHUB Settings
Gui, Add, Button, x62 y179 w90 h20 grestore, Restore
Gui, Add, Text, x182 y179 w200 h30 , Restore LGHUB Settings
Gui, Add, Button, x62 y229 w90 h20 gstartup, Startup Task
Gui, Add, Text, x182 y229 w200 h30 , Create Windows startup task to backup settings on logon.
Gui, Add, Button, x282 y299 w100 h30 , Exit
; Generated using SmartGUI Creator 4.0
Gui, Show, x187 y156 h383 w453, LGHUB Backup and Restore
Return

install:
{
	Run, "%A_WorkingDir%\files\install.bat", ,UseErrorLevel
	if (ErrorLevel = "ERROR")
	{		
		MsgBox Error. Please return this application to it's install folder to get it to function properly. The application was unable to install.
	}
}
Return

backup:
{
	Run, "%programdata%\Logitech Backup Settings Scripts Macros.bat", , UseErrorLevel
	if (ErrorLevel = "ERROR")
	{		
		MsgBox Error. Unable to find files in program data folder. Please reinstall. Search samfisherirl on github. 
		}
}
Return

restore:
{
	Run, "%programdata%\Logitech Restore Settings Scripts Macros.bat" , , UseErrorLevel
	if (ErrorLevel = "ERROR")
	{		
		MsgBox Error. Unable to find files in program data folder. Please reinstall. Search samfisherirl on github. 
		}
}
Return


startup:
{
	MsgBox,4,Confirm creating startup task,Do you want to create a startup task that will backup LGHUB files on Windows Start (fast and in the background).
	IfMsgBox, Yes
	{		
		Run, "%programdata%\schedule tasks.bat" , , UseErrorLevel
		if (ErrorLevel = "ERROR")
		{		
			MsgBox Error. Unable to find files in program data folder. Please reinstall. Search samfisherirl on github. 
		}
	}
	else IfMsgBox, No
		return
}
Return


ButtonExit:
ExitApp

GuiClose:
ExitApp
