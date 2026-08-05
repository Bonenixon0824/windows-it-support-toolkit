# Running Services Script
# Author: Nixon Bone

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Running Windows Services" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan

Get-Service |
Where-Object {$_.Status -eq "Running"} |
Sort-Object DisplayName |
Format-Table DisplayName,Status -AutoSize
