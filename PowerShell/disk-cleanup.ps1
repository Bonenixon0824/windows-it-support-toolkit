# Windows Disk Cleanup Script
# Author: Nixon Bone

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
