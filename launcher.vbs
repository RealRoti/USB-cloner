Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & "C:\Users\directory\script.bat" & chr(34), 0
Set WshShell = Nothing