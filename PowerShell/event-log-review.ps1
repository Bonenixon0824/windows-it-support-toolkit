<#
.SYNOPSIS
Displays recent Windows System event log entries.

.DESCRIPTION
Retrieves the most recent events from the Windows System log to assist with troubleshooting hardware, driver, and operating system issues.

.NOTES
Author: Nixon Bone
Version: 1.0
Created as part of the Windows IT Support Toolkit.
#>

Clear-Host

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Recent Windows System Events" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

try {
    Get-WinEvent -LogName System -MaxEvents 20 -ErrorAction Stop |
        Select-Object `
            TimeCreated,
            Id,
            LevelDisplayName,
            ProviderName,
            Message |
        Format-Table -Wrap -AutoSize
}
catch {
    Write-Host "Error: Unable to retrieve Windows System event logs." -ForegroundColor Red
    exit
}

