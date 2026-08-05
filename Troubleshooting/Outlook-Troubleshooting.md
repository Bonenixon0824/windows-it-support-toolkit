# Microsoft Outlook Troubleshooting Guide

## Common Symptoms

- Outlook will not open
- Outlook freezes or crashes
- Unable to send or receive emails
- Outlook is disconnected
- Search function is not working
- Attachments fail to open
- Outlook is running slowly

## Possible Causes

- Corrupt Outlook profile
- Network connectivity issues
- Microsoft 365 service outage
- Corrupted OST or PST file
- Add-ins causing conflicts
- Mailbox storage limit reached
- Damaged Office installation

## Troubleshooting Steps

1. Confirm the user has an active internet connection.
2. Verify Microsoft 365 service status.
3. Restart Outlook and the computer.
4. Start Outlook in Safe Mode:

```powershell
outlook.exe /safe
```

5. Disable unnecessary Outlook add-ins.
6. Create a new Outlook profile.
7. Repair the Outlook data file (OST/PST).
8. Repair Microsoft Office from Apps & Features.
9. Verify mailbox storage is not full.
10. Test Outlook Web App (OWA).
11. Escalate if the issue affects multiple users or appears to be server-side.

## Documentation

Record:

- Outlook version
- Error message
- User account
- Troubleshooting steps completed
- Test results
- Final resolution
- Escalation status
