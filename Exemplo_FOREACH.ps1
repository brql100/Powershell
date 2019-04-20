#Exemplo de FOREACH
Clear-Host
#foreach($numeros in 1,2,3,4,5,6,7,8)
#{
#    Write-Host $numeros
#}
foreach ($arquivos in Get-ChildItem)
{
    if ($arquivos.Extension -eq ".txt")
    {
        $arquivos
    }
}

#Mais Exemplo
Get-Process Notepad
Get-Process Notepad | foreach kill
