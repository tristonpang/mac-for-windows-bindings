;-----------------------------------------
; AutoHotKey Script for Almost Complete Mac Keyboard Transformation for Windows 11 but for PC Keyboards
; AutoHotKey Version:		2.x
; Language:					English
; Platform:					Windows 10/11
; Author:					TheBitStick, tristonpang
;=========================================

; --------------------------------------------------------------
; Key
; --------------------------------------------------------------

; ! = Option (Command)
; ^ = Control
; + = Shift
; # = Meta


; --------------------------------------------------------------
; Setup
; --------------------------------------------------------------


; --------------------------------------------------------------
; Base System Remappings
; --------------------------------------------------------------

*~LAlt::Send "{Blind}{vkE8}"
; ~LWin::
; ~RWin::Send("{Blind}{vkFF}")



; --------------------------------------------------------------
; Additional System Remappings
; --------------------------------------------------------------

!+z::Send("^y")

!^f::Send("{F11}")

;global AltTabMenu := false
;LAlt & Tab:: 
;{
;		global
;    AltTabMenu := true
;    If GetKeyState("Shift","P")
;        Send '{Alt Down}{Shift Down}{Tab}'
;    else
;        Send '{Alt Down}{Tab}'
;return
;}
;
;#HotIf (AltTabMenu)
;	~*LAlt Up::
;	{
;		global
;		Send '{Shift Up}{Alt Up}'
;		AltTabMenu := false
;		return
;	}
;
;#HotIf


; !+3::Send("~#{PrintScreen}")
!+4::Send '{LWin down}{LShift down}s{LWin up}{LShift up}'


; --------------------------------------------------------------
; Basic Translations (from Control+* to Command+* [and some Command+Shift+*])
; --------------------------------------------------------------

!a::Send("^a")
!b::Send("^b")
!c::Send("^c")
!d::Send("^d")
!e::Send("^e")
!f::Send("^f")
!g::Send("^g")
!h::Send("^h")
!i::Send("^i")
	#HotIf WinActive("ahk_exe explorer.exe", )
		!i::		Send("!{Enter}")
	#HotIf
!j::Send("^j")
!l::Send("^l")
!m::WinMinimize("A")
!n::Send("^n")
!o::Send("^o")
	#HotIf WinActive("ahk_exe explorer.exe", )
		!o::		Send("{Enter}")
	#HotIf
!p::Send("^p")
!q::Send("!{F4}")
!r::Send("^r")
!s::Send("^s")
!t::Send("^t")
!u::Send("^u")
	#HotIf WinActive("ahk_exe explorer.exe", )
		!u::		Send("{F2}")
	#HotIf
!v::Send("^v")
!w::Send("^w")
!x::Send("^x")
!y::Send("^y")
!z::Send("^z")

!+a::Send("^+a")
!+i::Send("^+i")
!+j::Send("^+j")
!+m::Send("^+m")
!+n::Send("^+n")
!+p::Send("^+p")
!+s::Send("^+s")
!+t::Send("^+t")
!+v::Send("^+v")

; --------------------------------------------------------------
; Media Key Remappings
; --------------------------------------------------------------

;F7::							Media_Prev
;F8::							Media_Play_Pause
;F9::							Media_Next
;F10::							Volume_Mute
;F11::							Volume_Down
;F12::							Volume_Up


; --------------------------------------------------------------
; Text Manipulation
; --------------------------------------------------------------

!Left::Send '{Home}'
!Right::Send '{End}'

!Up::Send '{LCtrl Down}{Home}{LCtrl Up}'
!Down::Send '{LCtrl Down}{End}{LCtrl Up}'

!+Left::Send '{Shift Down}{Home}{Shift Up}'
!+Right::Send '{Shift Down}{End}{Shift Up}'
!+Up::Send '{Ctrl Down}{Shift Down}{Home}{Shift Up}{Ctrl Up}'
!+Down::Send '{Ctrl Down}{Shift Down}{End}{Shift Up}{Ctrl Up}'

#Left::Send '{Ctrl Down}{Left}{Ctrl Up}'
#Right::Send '{Ctrl Down}{Right}{Ctrl Up}'

#+Left::Send '{Ctrl Down}{Shift Down}{Left}{Shift Up}{Ctrl Up}'
#+Right::Send '{Ctrl Down}{Shift Down}{Right}{Shift Up}{Ctrl Up}'


; --------------------------------------------------------------
; VSCode Specific
; --------------------------------------------------------------

; Add cursor down
#!Down:: Send '{LCtrl Down}{LAlt Down}{Down}{LAlt Up}{LCtrl Up}'

; Add cursor up
#!Up:: Send '{LCtrl Down}{LAlt Down}{Up}{LAlt Up}{LCtrl Up}'

; Shift line down
#Down:: Send '{LAlt Down}{Down}{LAlt Up}'

; Shift line up
#Up:: Send '{LAlt Down}{Up}{LAlt Up}'

; Copy line down
#+Down:: Send '{LShift Down}{LAlt Down}{Down}{LShift Up}{LAlt Up}'

; Copy line up
#+Up:: Send '{LShift Down}{LAlt Down}{Up}{LShift Up}{LAlt Up}'

; Quick Fix
!.:: Send '{LCtrl Down}{.}{LCtrl Up}'

; Go to reference
<!LButton::Send '{LCtrl down}{Click}{LCtrl up}'

; Go to reference, open in new window
<!#LButton::Send '{LCtrl down}{LAlt down}{Click}{LCtrl up}{LAlt up}'

; Comment out line
!/:: Send '{LCtrl down}/{LCtrl up}'

; Global search
!+f:: Send '{LCtrl down}{LShift down}f{LCtrl up}{LShift up}'

; Opened files search
!+e:: Send '{LCtrl down}k{LCtrl up}{LCtrl down}p{LCtrl up}'

; Indent
!]:: Send '{LCtrl down}]{LCtrl up}'

; De-indent
![:: Send '{LCtrl down}[{LCtrl up}'

; Add cursor
<#LButton:: Send '{LAlt down}{Click}{LAlt up}'

; Switch between split windows
<!1:: Send '{LCtrl down}1{LCtrl up}'
<!2:: Send '{LCtrl down}2{LCtrl up}'
<!3:: Send '{LCtrl down}3{LCtrl up}'
<!4:: Send '{LCtrl down}4{LCtrl up}'
<!5:: Send '{LCtrl down}5{LCtrl up}'

; --------------------------------------------------------------
; 60% Keyboard Bindings
; --------------------------------------------------------------

; Tilde
>^Esc:: Send '~'

; Back tick
<^Esc:: Send '``'

; Fn keybinds (RCtrl)
>^1:: Send '{F1}'
>^2:: Send '{F2}'
>^3:: Send '{F3}'
>^4:: Send '{F4}'
>^5:: Send '{F5}'
>^6:: Send '{F6}'
>^7:: Send '{F7}'
>^8:: Send '{F8}'
>^9:: Send '{F9}'
>^0:: Send '{F10}'
>^-:: Send '{F11}'
>^=:: Send '{F12}'

; Media keybinds (RAlt)
>!7::	Media_Prev
>!8::	Media_Play_Pause
>!9::	Media_Next
>!0::	Volume_Mute
>!-::	Volume_Down
>!=::	Volume_Up

; --------------------------------------------------------------
; Etc
; --------------------------------------------------------------

!Enter::Send("^{Enter}")
!+Enter::Send("^+{Enter}")

<^LButton::Click("Right")

; Browser Devtools
#!I:: Send '{F12}'
!+c:: Send '{Ctrl down}{Shift down}c{Shift up}{Ctrl up}'

; Tab switching
#!Left:: Send '{Ctrl down}{PgUp}{Ctrl up}'
#!Right:: Send '{Ctrl down}{PgDn}{Ctrl up}'

; Clear terminal
!k:: Send '{Ctrl down}l{Ctrl up}'

; --------------------------------------------------------------
; Rectangle (Mac window manager) shortcuts
; --------------------------------------------------------------
; NOTE: disable Windows keyboard shortcut binding for Microsoft 365 using:-
; REG ADD HKCU\Software\Classes\ms-officeapp\Shell\Open\Command /t REG_SZ /d rundll32


; Shift window to left / right monitor
; Uses WinMove instead of sending Win+Shift+Arrow: adding Shift to the held
; Ctrl+Win+Alt forms the Office key chord (Ctrl+Shift+Alt+Win), which opens
; the Microsoft 365 Copilot app.
^#!Left:: MoveToAdjacentMonitor(-1)
^#!Right:: MoveToAdjacentMonitor(1)

MoveToAdjacentMonitor(dir) {
	hwnd := WinExist("A")
	if !hwnd || MonitorGetCount() < 2
		return

	wasMax := WinGetMinMax(hwnd) = 1
	if wasMax
		WinRestore(hwnd)

	WinGetPos(&x, &y, &w, &h, hwnd)
	cur := MonitorFromPoint(x + w // 2, y + h // 2)

	; Sort monitors left-to-right so Left/Right match the physical layout
	mons := []
	Loop MonitorGetCount() {
		MonitorGetWorkArea(A_Index, &l, &t, &r, &b)
		mons.Push({idx: A_Index, l: l, t: t, r: r, b: b})
	}
	Loop mons.Length - 1 {
		Loop mons.Length - A_Index {
			if mons[A_Index].l > mons[A_Index + 1].l {
				tmp := mons[A_Index]
				mons[A_Index] := mons[A_Index + 1]
				mons[A_Index + 1] := tmp
			}
		}
	}

	pos := 1
	for i, m in mons
		if m.idx = cur
			pos := i
	nextPos := Mod(pos - 1 + dir + mons.Length, mons.Length) + 1
	c := mons[pos], n := mons[nextPos]

	; Keep the same relative position and size on the new monitor
	sx := (n.r - n.l) / (c.r - c.l)
	sy := (n.b - n.t) / (c.b - c.t)
	WinMove(n.l + (x - c.l) * sx, n.t + (y - c.t) * sy, w * sx, h * sy, hwnd)

	if wasMax
		WinMaximize(hwnd)
}

MonitorFromPoint(px, py) {
	Loop MonitorGetCount() {
		MonitorGet(A_Index, &l, &t, &r, &b)
		if (px >= l && px < r && py >= t && py < b)
			return A_Index
	}
	return MonitorGetPrimary()
}

; Maximise window
^#Enter:: WinMaximize("A")
