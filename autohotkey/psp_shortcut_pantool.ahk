; ==========
;  Preamble
; ==========

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn   ; Enable warnings to assist with detecting common errors.

#SingleInstance Force
Process, Priority,, High

SetTitleMatchMode, 2
DetectHiddenWindows, on

; =======
;  Notes
; =======

; https://www.autohotkey.com/docs/Hotkeys.htm
; # = Win
; ! = Alt
; ^ = Ctrl
; + = Shift
; MsgBox Hi there!

; =====================================================
;  Improvements for Jasc PaintShop Pro, versions 7 - 9
; =====================================================

; When pressing the middle mouse button, activate the pan tool

; PSP7

#IfWinActive ahk_exe psp.exe
~MButton::
    Send, j
    MouseClick, left,,,,,D
    KeyWait, MButton
    MouseClick, left,,,,,U
return
#If

; PSP8

#IfWinActive ahk_exe Paint Shop Pro.exe
~MButton::
    Send, a
    MouseClick, left,,,,,D
    KeyWait, MButton
    MouseClick, left,,,,,U
return
#If

; PSP9

#IfWinActive ahk_exe Paint Shop Pro 9.exe
~MButton::
    Send, a
    MouseClick, left,,,,,D
    KeyWait, MButton
    MouseClick, left,,,,,U
return
#If
