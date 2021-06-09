;*** Tasti del volume improvvisati
+NumpadAdd:: Send {Volume_Up}
 +NumpadSub:: Send {Volume_Down}
 break::Send {Volume_Mute}
 return
 

;*** Empty Recycle Bin
; Empty trash
#Del::FileRecycleEmpty ; win + del
return

;*** Avvia qualsiasi app
#f::Run Firefox

;*** Utilizzare AutoHotKey per controllare il volume di Windows 10
Il seguente script di base consente di alzare e abbassare il volume di Windows utilizzando 
Windows Key + Pagina su e Tasto Windows + Pagina giù.

#PgUp::Send {Volume_Up 3} #PgDn::Send {Volume_Down 3}  

;*** Adjusting Volume
; Custom volume buttons
+NumpadAdd:: Send {Volume_Up} ;shift + numpad plus
+NumpadSub:: Send {Volume_Down} ;shift + numpad minus
break::Send {Volume_Mute} ; Break key mutes
return


 ;*** Eseguire una ricerca rapida con Google
 ^+c::
 {
 Send, ^c
 Sleep 50
 Run, https://www.google.com/search?q=%clipboard%
 Return
 }
 
 ;*** Inserisci caratteri speciali
 Alt + Q per inserire l’icona del marchio
!q::SendInput {™}

;*** Riutilizza i tasti funzione
;Avvia Sublime Text 
F7::Run "C:\Program Files\Sublime Text 2\sublime_text.exe"
return

;*** Apri rapidamente le pagine Web
; Launch MakeTechEasier
^+t::Run "www.maketecheasier.com" ; use ctrl+Shift+t
return

;*** Riutilizzare Caps Lock
; Turn Caps Lock into a Shift key
 Capslock::Shift
 return
 
 ;*** Disabilitare i tasti di blocco
 ; Set Lock keys permanently
 SetNumlockState, AlwaysOn
 SetCapsLockState, AlwaysOff
 SetScrollLockState, AlwaysOff
 return


;*** Open Favorite Folders
; Open Downloads folder
^+d::Run "C:\Users\Vamsi\Downloads" ; ctrl+shift+d
return


; Suspend AutoHotKey
#ScrollLock::Suspend ; Win + scrollLock
return


; **************** Windows key+F2 ******************

;*** Using variables
#F2::
example := 5+5
msgbox, Example is equal to %example%
return

#F2::
example := "Nathan"
msgbox, Hello World! My name is %example%
return

#F2::
example := "Example: " 5+5
msgbox, Mixed variable is %example%
return

;*** Conditional statements
#F2::
example := 5
if example = 5
msgbox, true
else
msgbox, false
return

#F2::
example := "computer"
if (example = "hope")
msgbox, true
else
msgbox, false
return

;*** Creating a loop
#F2::
loop, 5
{
send Hello World{!}
sleep 300
}
return

;*** Regular expressions
#F2::
example := "support@computerhope.com"
example:= RegExReplace(example, "@.*", "")
msgbox, Username is %example%
return
 

;***  I use AutoHotKey scripts mainly within PowerShell of vbscript If you want to call your scripts from PowerShell you can use: & "C:\Program Files\AutoHotkey\AutoHotkey.exe" "C:\Temp\Start.ahk"
If you want to call your scripts from vbscript you can use:

Set oWS = CreateObject("WScript.Shell")
sPath = chr(34) & "C:\System\AHK\C:\Temp\Start.ahk" & Chr(34)
errResult = oWS.Run(sPath,,False)
 

A basic example of a script could be:

; make Win+n as a hotkey for launching Notepad
#n::Run Notepad
 

So if you save the above as an .ahk file and then double click on it, pressing Windows key + n will launch notepad

The below script would enter the signature text when you press F6:

; pressing F6 to insert your signature
F8::
Send Best,{Enter}{Enter} Bob Smith
Return


