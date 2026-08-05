<#
.SYNOPSIS
Displays currently running Windows services.

.DESCRIPTION
Retrieves all Windows services with a status of Running and displays
their display name, service name, and current status.

.NOTES
Author: Nixon Bone
Version: 1.0
Created as part of the Windows IT Support Toolkit.
#>

Clear-Host

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Running Windows Services" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

try {

    Get-Service -ErrorAction Stop |
        Where-Object { $_.Status -eq "Running" } |
        Sort-Object DisplayName |
        Select-Object DisplayName,
                      Name,
                      Status |
        Format-Table -AutoSize

}
catch {

    Write-Host "Error: Unable to retrieve Windows services." -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor DarkRed

    exit 1

}
