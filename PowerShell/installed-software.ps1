<#
.SYNOPSIS
Displays installed software on a Windows computer.

.DESCRIPTION
Queries common Windows registry locations to retrieve installed application names,
versions, publishers, and installation dates.

.NOTES
Author: Nixon Bone
Version: 1.0
Created as part of the Windows IT Support Toolkit.
Results may vary depending on whether applications were installed for all users
or only the current user.
#>

Clear-Host

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Installed Software" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$RegistryPaths = @(
    "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*",
    "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*",
    "HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*"
)

try {
    Get-ItemProperty -Path $RegistryPaths -ErrorAction Stop |
        Where-Object { $_.DisplayName } |
        Select-Object `
            DisplayName,
            DisplayVersion,
            Publisher,
            InstallDate |
        Sort-Object DisplayName, DisplayVersion -Unique |
        Format-Table -AutoSize
}
catch {
    Write-Host "Error: Unable to retrieve installed software." -ForegroundColor Red
    Write-Host "Details: $($_.Exception.Message)" -ForegroundColor DarkRed
    exit 1
}
