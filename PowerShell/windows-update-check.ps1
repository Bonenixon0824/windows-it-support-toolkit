<#
.SYNOPSIS
Checks the status and startup configuration of the Windows Update service.

.DESCRIPTION
Retrieves information about the Windows Update service, including its current status and startup type.

.NOTES
Author: Nixon Bone
Version: 1.0
Created as part of the Windows IT Support Toolkit.
#>

Clear-Host

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Windows Update Service Status" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

try {
    $Service = Get-CimInstance Win32_Service `
        -Filter "Name='wuauserv'" `
        -ErrorAction Stop

    if (-not $Service) {
        throw "The Windows Update service could not be found."
    }

    [PSCustomObject]@{
        "Service Name" = $Service.Name
        "Display Name" = $Service.DisplayName
        "Status"       = $Service.State
        "Startup Type" = $Service.StartMode
    } | Format-List
}
catch {
    Write-Host "Error: Unable to retrieve the Windows Update service status." -ForegroundColor Red
    Write-Host "Details: $($_.Exception.Message)" -ForegroundColor DarkRed
    exit 1
}
