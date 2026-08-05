<#
.SYNOPSIS
Removes temporary Windows files to help free disk space.

.DESCRIPTION
Checks common Windows temporary-file locations and removes files that can be safely deleted.

.AUTHOR
Nixon Bone

.VERSION
1.0

.NOTES
Created as part of the Windows IT Support Toolkit.
Administrator privileges may be required to clean some system folders.
#>

Clear-Host

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Windows Disk Cleanup" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan

$tempFolders = @(
    "$env:TEMP",
    "C:\Windows\Temp"
)

foreach ($folder in $tempFolders) {
    if (Test-Path $folder) {
        Write-Host "Cleaning $folder..." -ForegroundColor Yellow
        Get-ChildItem $folder -Recurse -Force -ErrorAction SilentlyContinue |
            Remove-Item -Force -Recurse -ErrorAction SilentlyContinue
    }
}

Write-Host ""
Write-Host "Disk cleanup completed." -ForegroundColor Green


