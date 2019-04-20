# Teste com Hash Table
Clear-Host
$Servidores = [Ordered] @{Server1="127.0.0.1";Server2="127.0.0.2";Server3="127.0.0.3"}
$Servidores

#Adicionar Servidores
$Servidores["Server4"]="127.0.0.4"

#Remover
$Servidores.Remove("Server4")

#Contar Itens dentro da variável Servidores
$Servidores.Count

#Teste de Conexão
Test-Connection $Servidores.Server1

#Exibir Valores
$Servidores.Values
