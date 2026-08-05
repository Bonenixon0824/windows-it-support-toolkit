# How to Run the PowerShell Scripts

## Requirements

- Windows 10 or Windows 11
- PowerShell 5.1 or PowerShell 7+
- Administrator privileges may be required for some scripts

---

## Running a Script

1. Open PowerShell.
2. Navigate to the script folder:

```powershell
cd PowerShell
```

3. Run a script:

```powershell
.\system-info.ps1
```

Replace the script name with any of the following:

- system-info.ps1
- network-info.ps1
- disk-cleanup.ps1
- running-services.ps1
- installed-software.ps1
- event-log-review.ps1
- windows-update-check.ps1

---

## Execution Policy

If PowerShell blocks the script, run:

```powershell
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
```

Then try running the script again.

---

## Notes

Some scripts require administrator privileges to return complete results.

Always review scripts before running them in production environments.
