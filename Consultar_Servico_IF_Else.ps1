#Consultar serviço do Windows (If/Else)
Clear-Host
$Serv = Get-Service -Name EFS
If ($Serv.Status -eq "Running") 
{
    Write-Host Em Execução
}
Else
{
    Write-Host Serviço Parado
}