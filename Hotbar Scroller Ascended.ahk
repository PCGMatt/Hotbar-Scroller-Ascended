; Hotbar Scroller Ascended (for ARK: Survival and other games)
; Credits: Scripting by PCGMatt
; License: GPLv3 https://www.gnu.org/licenses/gpl-3.0.html#license-text
; Download Auto Hotkey 2.0 here https://www.autohotkey.com/

; ======== CONFIG ZONE ======================================================
max_scroll_slot := 7 	 ; Max number it will scroll to (2-9). It is recommended to leave the last few slots for consumables/building that do not work with scrolling
invert_scroll := false ; If you prefer an inverted scroll wheel setting, change this to true
current_slot := 1	 ; What slot do you want the progam to start on?
pause_key := "~CapsLock" ; A key to pause the script so you can scroll in inventories without issue
;============================================================================

; ======== DO NOT MODIFY BELOW UNLESS YOU KNOW WHAT YOU ARE DOING ===========
#Requires AutoHotkey v2.0	; Checks version for compatibility
A_MaxHotkeysPerInterval :=100	; Allows up to 100 actions per second without giving an error
A_HotkeyInterval :=1000		; Sets the interval to 1000ms (1 second) for above command
#SingleInstance Force		; Makes sure 2 copies can't be running at the same time to prevent glitches
#HotIf WinActive("ahk_exe ArkAscended.exe") or WinActive("ahk_exe ShooterGame.exe") ; Only activates the script if an ARK window is active. Prevents it from messing with web browsers or other programs when tabbed out

;Creates a simple popup GUI to inform the user when the program starts or toggles pause
PauseGui := Gui("+AlwaysOnTop -Caption +ToolWindow")
PauseGui.BackColor := "111111" ; Dark background color
PauseGui.SetFont("S16 Bold cWhite", "Arial") ; Size 16, Bold, White Text
PauseText := PauseGui.Add("Text", "Center W300", "Hotbar Scroller Ascended Started")
PauseGui.Show("Center")
SetTimer(ClearToolTip, -1000)



*WheelUp:: { 		; Functions for inverting the scroll wheel if set to true
    if (invert_scroll)
        ScrollDown()
    else
        ScrollUp()
}
*WheelDown:: {
    if (invert_scroll)
        ScrollUp()
    else
        ScrollDown()
}

ScrollUp() {		; Scroll up action to cycle to previous slot
    global current_slot, max_scroll_slot
    current_slot--
    if (current_slot < 1)
        current_slot := max_scroll_slot
    Send(current_slot)
}

ScrollDown() {		; Scroll down action to cycle to next slot
    global current_slot, max_scroll_slot
    current_slot++
    if (current_slot > max_scroll_slot)
        current_slot := 1
    Send(current_slot)
}

;Pauses the script so you can scroll in inventories
Hotkey(pause_key, ManualPause,"S")

ManualPause(key_name) {
	Suspend(-1) ;Toggle for suspending hotkeys
	if A_IsSuspended {
		PauseText.Value := "SCROLLER PAUSED"
        PauseGui.Show("Center NA")
	} else {
		PauseText.Value := "SCROLLER ACTIVE"
        PauseGui.Show("Center NA")
	}
	SetTimer(ClearToolTip, -500)
}

ClearToolTip() {	;Universal function to remove the popup after a set time (normally 0.5 seconds)
	PauseGui.Hide()
}