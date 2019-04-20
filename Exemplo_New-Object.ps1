$wshell = New-Object -ComObject WScript.Shell

$wshell | Get-Member

$wshell.Popup("Esse curso eh bom")

$wshell.Run("Notepad")
Start-Sleep 2
$wshell.SendKeys("Esse curso eh muito bom")