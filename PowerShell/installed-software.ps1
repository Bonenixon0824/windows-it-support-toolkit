<#
.SYNOPSIS
Displays installed software on a Windows computer.

.DESCRIPTION
Queries the Windows registry to retrieve installed application names and versions.

.AUTHOR
Nixon Bone

.VERSION
1.0

.NOTES
Created as part of the Windows IT Support Toolkit.
Results may vary depending on whether applications were installed for all users or only the current user.
#>

Clear-Host
try {
    Write-Host ""
    Write-Host "Installed Software" -ForegroundColor Green
    Write-Host ""

    $RegistryPaths = @(
        "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*",
        "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*",
        "HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*"
    )

    Get-ItemProperty $RegistryPaths -ErrorAction Stop |
        Where-Object { $_.DisplayName } |
        Select-Object DisplayName, DisplayVersion, Publisher |
        Sort-Object DisplayName |
        Format-Table -AutoSize
}
catch {
    Write-Host "Error: Unable to retrieve installed software." -ForegroundColor Red
    exit
}
