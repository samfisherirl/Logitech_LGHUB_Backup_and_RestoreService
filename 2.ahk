Gui, Add, Text, x62 y29 w320 h30 , Welcome to Logitech Backup and Restore Service
Gui, Add, Button, x62 y79 w90 h20 , Install or Repair
Gui, Add, Text, x182 y79 w170 h20 , Required to Backup or Restore
Gui, Add, Button, x62 y129 w90 h20 , Backup
Gui, Add, Text, x182 y129 w200 h30 , Backup LGHUB Settings
Gui, Add, Button, x62 y179 w90 h20 , Restore
Gui, Add, Text, x182 y179 w200 h30 , Restore LGHUB Settings
Gui, Add, Button, x62 y229 w90 h20 , Startup Task
Gui, Add, Text, x182 y229 w200 h30 , Create Windows startup task to backup settings on logon.
Gui, Add, Button, x282 y299 w100 h30 , Exit
; Generated using SmartGUI Creator 4.0
Gui, Show, x206 y156 h367 w446, New GUI Window
Return

GuiClose:
ExitApp