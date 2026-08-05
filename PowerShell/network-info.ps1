<#
.SYNOPSIS
Displays Windows network configuration information.

.DESCRIPTION
Retrieves the current computer's network configuration, including IP settings,
DNS server addresses, and network adapter status.

.NOTES
Author: Nixon Bone
Version: 1.0
Created as part of the Windows IT Support Toolkit.
#>

Clear-Host

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Windows Network Information" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Computer Name : $env:COMPUTERNAME"
Write-Host "Current User  : $env:USERNAME"
Write-Host ""

try {

    Write-Host "========== IP Configuration ==========" -ForegroundColor Yellow

    Get-NetIPConfiguration -ErrorAction Stop

    Write-Host ""

    Write-Host "========== DNS Servers ==========" -ForegroundColor Yellow

    Get-DnsClientServerAddress -ErrorAction Stop |
        Where-Object { $_.ServerAddresses } |
        Select-Object InterfaceAlias,
                      AddressFamily,
                      ServerAddresses |
        Format-Table -AutoSize

    Write-Host ""

    Write-Host "========== Network Adapters ==========" -ForegroundColor Yellow

    Get-NetAdapter -ErrorAction Stop |
        Select-Object Name,
                      InterfaceDescription,
                      Status,
                      LinkSpeed |
        Format-Table -AutoSize

}
catch {

    Write-Host ""
    Write-Host "Error: Unable to retrieve network information." -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor DarkRed

    exit 1

}
