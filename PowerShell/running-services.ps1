<#
.SYNOPSIS
Displays currently running Windows services.

.DESCRIPTION
Retrieves all Windows services with a status of Running and sorts them alphabetically by display name.

.AUTHOR
Nixon Bone

.VERSION
1.0

.NOTES
Created as part of the Windows IT Support Toolkit.
#>

Clear-Host

try {
    Get-Service -ErrorAction Stop |
        Where-Object { $_.Status -eq "Running" } |
        Sort-Object DisplayName |
        Select-Object DisplayName, Name, Status |
        Format-Table -AutoSize
}
catch {
    Write-Host "Error: Unable to retrieve Windows services." -ForegroundColor Red
    exit
}
