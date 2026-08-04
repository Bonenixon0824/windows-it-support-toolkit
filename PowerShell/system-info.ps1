# Windows System Information Script
# Author: Nixon Bone

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Windows System Information" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan

$Computer = Get-CimInstance Win32_ComputerSystem
$OS = Get-CimInstance Win32_OperatingSystem
$CPU = Get-CimInstance Win32_Processor

Write-Host ""
Write-Host "Computer Name : $env:COMPUTERNAME"
Write-Host "Manufacturer  : $($Computer.Manufacturer)"
Write-Host "Model         : $($Computer.Model)"
Write-Host "Operating Sys : $($OS.Caption)"
Write-Host "Version       : $($OS.Version)"
Write-Host "Processor     : $($CPU.Name)"
Write-Host "RAM           : $([math]::Round($Computer.TotalPhysicalMemory / 1GB,2)) GB"
Write-Host "Current User  : $env:USERNAME"
