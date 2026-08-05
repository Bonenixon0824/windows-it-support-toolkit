<#
.SYNOPSIS
Displays detailed Windows system information.

.DESCRIPTION
Collects information about the current computer including:
- Computer Name
- Manufacturer
- Model
- Windows Version
- Processor
- Installed RAM
- Current Logged-in User

.AUTHOR
Nixon Bone

.VERSION
1.0

.NOTES
Created as part of the Windows IT Support Toolkit.
#>

Clear-Host
Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Windows System Information" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan

try {
    $Computer = Get-CimInstance Win32_ComputerSystem -ErrorAction Stop
    $OS = Get-CimInstance Win32_OperatingSystem -ErrorAction Stop
    $CPU = Get-CimInstance Win32_Processor -ErrorAction Stop
}
catch {
    Write-Host "Error: Unable to retrieve system information." -ForegroundColor Red
    exit
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "      Windows System Information" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$SystemDetails = [PSCustomObject]@{
    "Computer Name"    = $env:COMPUTERNAME
    "Manufacturer"     = $Computer.Manufacturer
    "Model"            = $Computer.Model
    "Operating System" = $OS.Caption
    "OS Version"       = $OS.Version
    "Processor"        = $CPU.Name
    "Installed RAM"    = "$([math]::Round($Computer.TotalPhysicalMemory / 1GB, 2)) GB"
    "Current User"     = $env:USERNAME
}

$SystemDetails | Format-List
