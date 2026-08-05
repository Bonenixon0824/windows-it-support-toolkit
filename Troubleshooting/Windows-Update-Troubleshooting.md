# Windows Update Troubleshooting Guide

## Common Symptoms

- Windows Update fails to install
- Updates are stuck downloading
- Error codes appear during installation
- Computer repeatedly restarts
- Windows Update service is not running

## Possible Causes

- Corrupted update cache
- Insufficient disk space
- Disabled Windows Update service
- Corrupted system files
- Network connectivity issues

## Troubleshooting Steps

1. Verify internet connectivity.
2. Restart the computer.
3. Run the Windows Update Troubleshooter.
4. Restart the Windows Update service.
5. Clear the SoftwareDistribution folder.
6. Run the following commands:

```powershell
sfc /scannow

DISM /Online /Cleanup-Image /RestoreHealth
```

7. Check available disk space.
8. Retry Windows Update.
9. Review Event Viewer for update-related errors.
10. Escalate if Windows continues to fail after system repair.

## Documentation

Record:

- Windows version
- Error code
- Update KB number
- Troubleshooting steps completed
- Final resolution
