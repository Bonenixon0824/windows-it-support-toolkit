# Windows Event Log Review
# Author: Nixon Bone

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Recent System Errors" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan

Get-EventLog -LogName System -EntryType Error -Newest 20 |
Select-Object TimeGenerated, Source, EventID, Message |
Format-Table -Wrap
