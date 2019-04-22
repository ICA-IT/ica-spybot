#RequireAdmin
if $CmdLine[0] > 0 Then
   run($CmdLine[1])
Else
   run(@ScriptDir & '\spybotsd-2.6.46.exe' & ' /sp- /verysilent /norestart /nocancel /suppressmsgboxes /loadinf=setup2.ini',@ScriptDir)
EndIf

AutoItSetOption('MouseCoordMode',0)

WinWait('Update (Spybot - Search & Destroy 2.6, administrator privileges)')
sleep(10000)
;WinWait('Spybot - Search & Destroy')
WinActivate('Spybot - Search & Destroy')
sleep(1000)
; press the  "No" button
ControlClick('Spybot - Search & Destroy', 'JSDialogInstructionControl', 'TButton1')
sleep(1000)
; press the  "Cancel" button
ControlClick('Spybot - Search & Destroy', 'Cancel', 'TButton2')
sleep(1000)

;WinWait('Update (Spybot - Search & Destroy 2.6, administrator privileges)')
WinActivate('Update (Spybot - Search & Destroy 2.6, administrator privileges)')
sleep(1000)
; clean files
; press the "close" button
MouseClick("primary", 614, 18, 1, 0)
sleep(1000)

;WinWait('Start Center (Spybot - Search & Destroy 2.6, administrator privileges)')
WinActivate('Start Center (Spybot - Search & Destroy 2.6, administrator privileges)')
sleep(1000)
; clean files
; press the "close" button
MouseClick("primary", 673, 17, 1, 0)
sleep(1000)



