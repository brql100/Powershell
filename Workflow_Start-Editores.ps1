function iniciar-editores
{
    Start-Process notepad
    sleep 5
    Start-Process Wordpad
}

Workflow Start-editores
{
Parallel
    {
        Start-Process notepad
        sleep 5
        Start-Process Wordpad
    }
}