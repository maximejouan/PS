$domain = "max.local"
$password = "Keepcool33!" | ConvertTo-SecureString -asPlainText -Force
$username = "$domain\admincis" 
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -DomainName $domain -Credential $credential
