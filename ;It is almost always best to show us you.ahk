;It is almost always best to show us your code so we can see how to help you. From your description it sounds like you need to read about g-labels: <!-- m -->http://www.autohotke.../Gui.htm#Events<!-- m -->

Here is a simple gui to show how they work:
gui, add, button, x5 y5 h20 w70 gsub1, Subroutine 1 [color=#408000];these buttons use g-labels to define a subroutine to act on.[/color]
gui, add, button, x5 y30 h20 w70 gsub2, Subroutine 2
gui, add, button, x5 y60 h20 w70 gexit, Exit Script
gui, show, w80
return

sub1: [color=#008000];when creating the subroutine remember to leave off the g.[/color]
 {
   msgbox, You clicked the first button!
 }
return

sub2:
 {
   msgbox, You clicked the Second button!
 }
return

guiclose:
exit:
 {
   exitapp
 }
return