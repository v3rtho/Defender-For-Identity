#  Thomas Verheyden - 09/04/24
<#
Wait for new Kerberos ticket to be issued. Kerberos tickets are normally valid for 10 hours.

Reboot the server. When the server is rebooted, a new Kerberos ticket is requested with the new group membership.

Purge the existing Kerberos tickets. This forces the domain controller to request a new Kerberos ticket.

To purge the tickets, from an administrator command prompt on the domain controller, run the following command: klist purge -li 0x3e7
#>


#Install managemed service account on every domain controller
Write-Host "Install and test" $GMSA -ForegroundColor Green
Install-ADServiceAccount $GMSA
Test-ADServiceAccount $GMSA
 
