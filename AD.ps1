Install-windowsfeature AD-domain-services
Import-Module ADDSDeployment

Install-ADDSForest -DomainName max.local -CreateDNSDelegation -DomainMode Win2016 -ForestMode Win2016 -DomainNetbiosName "max" -SafeModeAdministratorPassword (ConvertTo-SecureString "Keepcool33!" -AsPlainText -Force) -InstallDNS:$true
