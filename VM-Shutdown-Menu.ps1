function Show-Menu
{
     $d = "Data Center ID"
     param ([string]$Title = "$d")
     cls
     Write-Host "================ $Title ================"

     Write-Host "1: Press '1' to shutdown Zone-01"
     Write-Host "2: Press '2' to shutdown Zone-02"
     Write-Host "3: Press '3' to shutdown Zone-03"
     Write-Host "4: Press '4' to shutdown Zone-04"
     Write-Host "5: Press '5' to shutdown Zone-05"
     Write-Host "6: Press '6' to shutdown Zone-06"
     Write-Host "7: Press '7' to shutdown Zone-07"
     Write-Host "8: Press '8' to shutdown Zone-08"
     Write-Host -foreground Red -BackgroundColor Yellow "1320: !!-DANGER-!! Press '1320' to SHUTDOWN ALL VM's AT $d"
     Write-Host "Q: Press 'Q' to quit."
}
do
{
     Show-Menu
     $input = Read-Host "Please make a selection"
     $username = "domain\username"
     $password = "Password"
     $server = "Server IP"
     $d = "The Data Center ID"
     switch ($input)
     {
           '1' {
                cls
                Set-PowerCLIConfiguration -InvalidCertificateAction ignore -confirm:$false
Connect-VIServer -Server $server -User $username -Password $password
Get-VM -Name $d-Zone-01-* | Shutdown-VMGuest -Confirm:$True

           } '2' {
                cls
                Set-PowerCLIConfiguration -InvalidCertificateAction ignore -confirm:$false
Connect-VIServer -Server $server -User $username -Password $password
Get-VM -Name $d-Zone02-* | Shutdown-VMGuest -Confirm:$True
           } '3' {
                cls
                Set-PowerCLIConfiguration -InvalidCertificateAction ignore -confirm:$false
Connect-VIServer -Server $server -User $username -Password $password
Get-VM -Name $d-Zone-03-* | Shutdown-VMGuest -Confirm:$True
           } 
           '4' {
                cls
                Set-PowerCLIConfiguration -InvalidCertificateAction ignore -confirm:$false
Connect-VIServer -Server $server -User $username -Password $password
Get-VM -Name $d-Zone-04-* | Shutdown-VMGuest -Confirm:$True
           } 
           '5' {
                cls
                Set-PowerCLIConfiguration -InvalidCertificateAction ignore -confirm:$false
Connect-VIServer -Server $server -User $username -Password $password
Get-VM -Name $d-Zone-05-* | Shutdown-VMGuest -Confirm:$True
           } 
           '6' {
                cls
                Set-PowerCLIConfiguration -InvalidCertificateAction ignore -confirm:$false
Connect-VIServer -Server $server -User $username -Password $password
Get-VM -Name $d-Zone-06-* | Shutdown-VMGuest -Confirm:$True
           } 
           '7' {
                cls
                Set-PowerCLIConfiguration -InvalidCertificateAction ignore -confirm:$false
Connect-VIServer -Server $server -User $username -Password $password
Get-VM -Name $d-Zone-07-* | Shutdown-VMGuest -Confirm:$True
           } 
           '8' {
                cls
                Set-PowerCLIConfiguration -InvalidCertificateAction ignore -confirm:$false
Connect-VIServer -Server $server -User $username -Password $password
Get-VM -Name $d-Zone-08-* | Shutdown-VMGuest -Confirm:$True
           } 
           '1320' {
                cls
                Set-PowerCLIConfiguration -InvalidCertificateAction ignore -confirm:$false
Connect-VIServer -Server $server -User $username -Password $password
Get-VM -Name $d-Zone* | Shutdown-VMGuest -Confirm:$True
           } 
           
           'q' {
                return
           }
     }
     pause
}
until ($input -eq 'q')