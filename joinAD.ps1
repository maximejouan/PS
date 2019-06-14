echo "test" >> C:\TEMP\log.txt
$domainnetbios = "max"
$domainFQDFN = "max.local"
$password = "Keepcool33!" | ConvertTo-SecureString -asPlainText -Force
$username = "$domainnetbios\admincis" 
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -DomainName $domainFQDN -Credential $credential >> C:\TEMP\log.txt -restart
