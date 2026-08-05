# Blue Screen of Death (BSOD) Troubleshooting Guide

## Common Symptoms

- Computer displays a blue screen and restarts unexpectedly
- System crashes during startup or while in use
- Error codes such as CRITICAL_PROCESS_DIED or MEMORY_MANAGEMENT
- Repeated boot loops

## Possible Causes

- Faulty or incompatible device drivers
- Corrupted Windows system files
- Failing hard drive or SSD
- Defective RAM
- Overheating
- Hardware failure
- Recent Windows updates or software installations

## Troubleshooting Steps

1. Record the BSOD stop code.
2. Disconnect any recently installed hardware.
3. Boot into Safe Mode if Windows will not start normally.
4. Check Device Manager for driver issues.
5. Update or roll back device drivers.
6. Run the following commands:

```powershell
sfc /scannow

DISM /Online /Cleanup-Image /RestoreHealth
```

7. Run Windows Memory Diagnostic.
8. Check disk health:

```powershell
chkdsk /f /r
```

9. Review Event Viewer for critical system events.
10. Restore the system if the issue began after a recent update or installation.
11. Escalate if hardware failure is suspected.

## Documentation

Record:

- Stop code
- Date and time of the crash
- Recent hardware or software changes
- Troubleshooting steps completed
- Test results
- Final resolution
