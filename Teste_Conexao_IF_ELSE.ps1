# Teste de Internet com IF/ELSE
Clear-Host
$conn = (Test-Connection www.mcsesolution.com.br -Count 1 -Quiet)
if($conn = "true")
{
    Write-Host Internet Funcionando -ForegroundColor Yellow
}
else
{
    
    Write-Host Internet não está funcionando -ForegroundColor Red
}