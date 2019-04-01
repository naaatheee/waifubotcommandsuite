^F6:: 
; CTRL+F6 is the default hotkey, change if needed
; Make sure to focus on the textbox before starting the script
pages := 57 ; Enter the max number of pages you have here
currentpage := 1 ; For initialization
while (currentpage <= pages)
{
	sendinput .list %currentpage% -orderby alphabetical {enter}
	
	sleep, 1000
	send {up}			; Auto-deletes the line sent for a uniform look
	sleep, 500
	send {ctrl down}{a}{ctrl up}
	sleep, 1000
	send {DEL}
	send {Enter}
	sleep, 500
	send {Enter}		; Auto-delete script ends here
	
	sleep, 6000			; Artifical 9 second lag due to Waifubot command cooldowns
						; and potential Discord input lag
	currentpage ++		; Increments to next page
}	
return

; Pause function to pause the interaction script, hotkey is CTRL+F7
^F7::
Pause , -1,
return