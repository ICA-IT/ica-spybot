#RequireAdmin

;#AutoIt3Wrapper_Change2CUI=y

Sleep(300)

if $CmdLine[0] > 0 Then
   run($CmdLine[1])
Else
   run('C:\Program Files (x86)\Spybot - Search & Destroy 2\unins000.exe' & ' /sp- /VERYSILENT /SUPPRESSMSGBOXES','C:\Program Files (x86)\Spybot - Search & Destroy 2')
EndIf

AutoItSetOption('MouseCoordMode',0)
AutoItSetOption("WinTitleMatchMode", 3)

sleep(300)

Local $hWnd2 = WinWait('', 'Are you looking for a way to undo changes',20)
sleep(300)
Local $hWnd = WinActivate($hWnd2)
sleep(300)
; press the  "Next" button
Local $clickstat = ControlClick($hWnd, '',"[CLASS:TNewButton; INSTANCE:3]")
sleep(300)

; press the  "Uninstall" button
$hWnd2 = WinWait('', 'Please give us feedback',20)
sleep(300)
$hWnd = WinActivate($hWnd2)
ControlClick($hWnd, '', "[CLASS:TNewButton; INSTANCE:4]")
sleep(300)

; press reboot now...
$hWnd2 = WinWait("Spybot - Search & Destroy Uninstall", "Would you like to restart now",20)
sleep(300)
Local $hWnd = WinActivate($hWnd2)
ControlClick($hWnd, '', 'Button1')
sleep(1000)


