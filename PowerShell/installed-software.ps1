# Installed Software Script
# Author: Nixon Bone

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Installed Software" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan

Get-ItemProperty `
"HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*" `
-ErrorAction SilentlyContinue |

Where-Object {$_.DisplayName} |

Select-Object DisplayName, DisplayVersion |

Sort-Object DisplayName |

Format-Table -AutoSize
