Function Meu-HD
{
Get-WmiObject Win32_logicalDisk | Select-Object DeviceID, @{'Name'='Tamanho (GB)'; 'Expression'={[math]::truncate($_.size / 1GB)}}
}