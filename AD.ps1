Install-windowsfeature AD-domain-services
Install-ADDSForest -DomainName max.local -DomainNetbiosName "max" -SafeModeAdministratorPassword (ConvertTo-SecureString "Keepcool33!" -AsPlainText -Force) -InstallDNS:$true -confirm -force -NoRebootOnCompletion:$false
