; CTRL+F10 is the default hotkey, change if needed
; Make sure to focus on the textbox before starting the script
^F10:: 
spawnattempt := 1 ; Initialization
while (spawnattempt <= 60)
{
	sendinput spawn attempt {#}%spawnattempt% {enter}
	sleep, 1000
	spawnattempt ++
}
sendinput Spawning script completed. {enter} ; just in case you miss any waifus
return

; Pause function to pause the interaction script, hotkey is CTRL+F11
^F11::
Pause , -1,
return

; Hotkey to shut down the script, default is CTRL+F12
^F12::
ExitApp
return

