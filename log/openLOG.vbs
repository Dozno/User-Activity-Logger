' Vytvoření objektu pro shell
Set objShell = CreateObject("WScript.Shell")

' Nastavení správného hesla
correctPassword = "142536Dc2011*"

' Výzva k zadání hesla
userPassword = InputBox("Enter password for acces to file", "file lock")

' Kontrola zadaného hesla
If userPassword = correctPassword Then
    ' Pokud je heslo správné, otevře soubor
    objShell.Run "notepad.exe ""C:\Users\cicko\Desktop\cmd\log\log.txt"""
Else
    ' Pokud je heslo nesprávné, zobrazí chybovou zprávu
    MsgBox "Wrong password! acces denied", vbCritical, "Error"
End If