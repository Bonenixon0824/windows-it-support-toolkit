<#
.SYNOPSIS
Checks the status and startup configuration of the Windows Update service.

.DESCRIPTION
Retrieves information about the Windows Update service, including its current status and startup type.

.AUTHOR
Nixon Bone

.VERSION
1.0

.NOTES
Created as part of the Windows IT Support Toolkit.
#>

Clear-Host

try {
    Write-Host ""
    Write-Host "Windows Update Service Status" -ForegroundColor Green
    Write-Host ""

    $Service = Get-CimInstance Win32_Service `
        -Filter "Name='wuauserv'" `
        -ErrorAction Stop

    [PSCustomObject]@{
        "Service Name" = $Service.Name
        "Display Name" = $Service.DisplayName
        "Status"       = $Service.State
        "Startup Type" = $Service.StartMode
    } | Format-List
}
catch {
    Write-Host "Error: Unable to retrieve the Windows Update service status." -ForegroundColor Red
    exit
}
