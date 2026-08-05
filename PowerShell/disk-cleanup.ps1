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
    try {
        if (Test-Path $folder) {
            Write-Host "Cleaning $folder..." -ForegroundColor Yellow

            Get-ChildItem $folder -Recurse -Force -ErrorAction Stop |
                Remove-Item -Force -Recurse -ErrorAction Stop

            Write-Host "Successfully cleaned $folder." -ForegroundColor Green
        }
        else {
            Write-Host "Folder not found: $folder" -ForegroundColor DarkYellow
        }
    }
    catch {
        Write-Host "Unable to fully clean $folder. Some files may be in use or require administrator access." -ForegroundColor Red
    }
}
Write-Host ""
Write-Host "Disk cleanup completed." -ForegroundColor Green


