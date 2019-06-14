mkdir c:\temp\
echo "policy" > C:\TEMP\log.txt
$domainnetbios = "max"
echo "max" >> C:\TEMP\log.txt
$domainFQDN = "max.local"
echo "max.local" >> C:\TEMP\log.txt
$password = "Keepcool33!" | ConvertTo-SecureString -asPlainText -Force
echo "password" >> C:\TEMP\log.txt
$username = "$domainnetbios\admincis"
echo "username" >> C:\TEMP\log.txt
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
echo "cred" >> C:\TEMP\log.txt
Add-Computer -DomainName $domainFQDN -Credential $credential -restart
echo "JOINAD" >> C:\TEMP\log.txt
