Clear-Host
Get-Command -Module PSScheduledJob | Sort-Object Noum

$diario = New-JobTrigger -Daily -at 3am
$umavez = New-JobTrigger -Once -at (Get-Date).AddHours(1)
$semanal = New-JobTrigger -Weekly -DaysOfWeek Monday -At 6pm

Register-ScheduledJob -Name Backup -Trigger $diario -ScriptBlock{
    Copy-Item C:\APPS\Powershell*.*C:\APPS\ -Recurse -Force
}

Get-ScheduledJob Backup | Unregister-ScheduledJob

Get-ScheduledJob
