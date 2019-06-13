Install-windowsfeature AD-domain-services
Import-Module ADDSDeployment

Install-ADDSForest -DomainName max.local -CreateDNSDelegation -DomainNetbiosName "max" -SafeModeAdministratorPassword (ConvertTo-SecureString "Keepcool33!" -AsPlainText -Force) -InstallDNS:$true -confirm -force
