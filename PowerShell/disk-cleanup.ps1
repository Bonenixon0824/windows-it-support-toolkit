<#
.SYNOPSIS
Removes temporary Windows files to help free disk space.

.DESCRIPTION
Checks common Windows temporary-file locations and removes files that can be safely deleted.

.NOTES
Author: Nixon Bone
Version: 1.0
Created as part of the Windows IT Support Toolkit.
Administrator privileges may be required to clean some system folders.
#>

Clear-Host

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Windows Disk Cleanup" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$tempFolders = @(
    $env:TEMP,
    "C:\Windows\Temp"
)

foreach ($folder in $tempFolders) {
    if (-not (Test-Path -Path $folder)) {
        Write-Host "Folder not found: $folder" -ForegroundColor DarkYellow
        continue
    }

    Write-Host "Cleaning $folder..." -ForegroundColor Yellow

    try {
        $items = Get-ChildItem -Path $folder -Force -ErrorAction Stop

        foreach ($item in $items) {
            try {
                Remove-Item -Path $item.FullName -Force -Recurse -ErrorAction Stop
            }
            catch {
                Write-Host "Skipped: $($item.FullName)" -ForegroundColor DarkYellow
            }
        }

        Write-Host "Cleanup attempt completed for $folder." -ForegroundColor Green
    }
    catch {
        Write-Host "Unable to access $folder. Administrator privileges may be required." -ForegroundColor Red
    }

    Write-Host ""
}

Write-Host "Disk cleanup completed." -ForegroundColor Green
