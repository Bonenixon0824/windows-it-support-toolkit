# Windows Update Check
# Author: Nixon Bone

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Windows Update Status" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan

$service = Get-Service -Name wuauserv

Write-Host ""
Write-Host "Windows Update Service Status:"
Write-Host "------------------------------"

$service | Format-Table Name, Status, StartType -AutoSize
