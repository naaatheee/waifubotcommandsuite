^F8:: 
; CTRL+F8 is the default hotkey, change if needed
; Make sure to focus on the textbox before starting the script
waifus := 1112 ; Enter the max number of waifus you have here
while (waifus > 0)
{
	sendinput .interact %waifus% {enter}
	sleep, 5200
	waifus -= 1
}
sendinput .interact 0 {enter} ; 0th index declared separately for speed
sendinput .list -interactable {Enter} ; just in case you miss any waifus
return

; Pause function to pause the interaction script, hotkey is CTRL+F9
^F9::
Pause , -1,
return