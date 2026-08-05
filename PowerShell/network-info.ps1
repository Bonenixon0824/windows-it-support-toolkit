<#
.SYNOPSIS
Displays Windows network configuration information.

.DESCRIPTION
Collects information about the current computer's network configuration, including:
- Computer name
- IP configuration
- DNS server addresses
- Network adapter status
- Network adapter link speed

.AUTHOR
Nixon Bone

.VERSION
1.0

.NOTES
Created as part of the Windows IT Support Toolkit.
#>

Clear-Host

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Windows Network Information" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan

Write-Host ""
Write-Host "Computer Name: $env:COMPUTERNAME"
Write-Host ""

try {
    Write-Host ""
    Write-Host "IP Configuration" -ForegroundColor Yellow
    Get-NetIPConfiguration -ErrorAction Stop

    Write-Host ""
    Write-Host "DNS Servers" -ForegroundColor Yellow
    Get-DnsClientServerAddress -ErrorAction Stop |
        Where-Object { $_.ServerAddresses } |
        Select-Object InterfaceAlias, AddressFamily, ServerAddresses

    Write-Host ""
    Write-Host "Network Adapters" -ForegroundColor Yellow
    Get-NetAdapter -ErrorAction Stop |
        Select-Object Name, InterfaceDescription, Status, LinkSpeed
}
catch {
    Write-Host "Error: Unable to retrieve network information." -ForegroundColor Red
    exit
}
