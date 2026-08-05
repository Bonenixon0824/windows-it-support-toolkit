<#
.SYNOPSIS
Displays recent Windows System event log entries.

.DESCRIPTION
Retrieves the most recent events from the Windows System log to assist with troubleshooting hardware, driver, and operating system issues.

.AUTHOR
Nixon Bone

.VERSION
1.0

.NOTES
Created as part of the Windows IT Support Toolkit.
#>

Clear-Host

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Recent System Errors" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan

try {

    Write-Host ""
    Write-Host "Recent System Events" -ForegroundColor Green
    Write-Host ""

    Get-WinEvent -LogName System -MaxEvents 20 -ErrorAction Stop |
        Select-Object TimeCreated,
                      Id,
                      LevelDisplayName,
                      ProviderName,
                      Message |
        Format-Table -Wrap -AutoSize

}
catch {

    Write-Host "Unable to retrieve Windows event logs." -ForegroundColor Red

}
