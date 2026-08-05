# Slow Computer Performance Troubleshooting Guide

## Common Symptoms

- Slow startup
- Applications take a long time to open
- High CPU or memory usage
- Frequent freezing or lag
- Slow file transfers
- Delayed response when switching between applications

## Possible Causes

- Too many startup applications
- Low available disk space
- High CPU or memory utilization
- Malware or unwanted software
- Failing hard drive or SSD
- Outdated drivers
- Windows updates running in the background

## Troubleshooting Steps

1. Restart the computer.
2. Check CPU, Memory, and Disk usage in Task Manager.
3. Disable unnecessary startup applications.
4. Verify available disk space.
5. Run Disk Cleanup.
6. Scan for malware using Microsoft Defender.
7. Install Windows Updates.
8. Update device drivers.
9. Check disk health:

```powershell
chkdsk /scan
```

10. Check system files:

```powershell
sfc /scannow
```

11. Escalate if hardware failure is suspected.

## Documentation

Record:

- Computer model
- Windows version
- CPU utilization
- Memory utilization
- Disk utilization
- Startup applications disabled
- Final resolution
