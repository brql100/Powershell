Workflow workflowDemorado
{
    while(1)
    {
        (Get-Date).ToString() + "Script Demoradinho"
        Start-Sleep -Seconds 2
    }
}

$wfjob = workflowDemorado -AsJob
$wfjob

Receive-Job $wfjob
Suspend-Job $wfjob -Force
Stop-Job $wfjob
Resume-Job $wfjob

