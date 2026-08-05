# Windows Network Information Script
# Author: Nixon Bone

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Windows Network Information" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan

Write-Host ""
Write-Host "Computer Name: $env:COMPUTERNAME"
Write-Host ""

Write-Host "IP Configuration" -ForegroundColor Yellow
Get-NetIPConfiguration

Write-Host ""
Write-Host "DNS Servers" -ForegroundColor Yellow
Get-DnsClientServerAddress |
    Where-Object { $_.ServerAddresses } |
    Select-Object InterfaceAlias, AddressFamily, ServerAddresses

Write-Host ""
Write-Host "Network Adapters" -ForegroundColor Yellow
Get-NetAdapter |
    Select-Object Name, InterfaceDescription, Status, LinkSpeed
