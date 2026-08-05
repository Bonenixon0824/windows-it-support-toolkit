# Printer Troubleshooting Guide

## Common Symptoms

- Printer is offline
- Print jobs are stuck in the queue
- Printer is not detected
- Documents print incorrectly
- Poor print quality
- Network printer cannot be reached

## Possible Causes

- Loose or disconnected cable
- Printer is powered off
- Incorrect default printer
- Stuck print queue
- Outdated or corrupted printer driver
- Network connectivity issue
- Incorrect IP address
- Low ink, toner, or paper

## Troubleshooting Steps

1. Confirm the printer is powered on and check for error messages.
2. Verify USB, Ethernet, or wireless connectivity.
3. Confirm the correct printer is selected as the default printer.
4. Check the print queue and cancel any stuck jobs.
5. Restart the printer and the computer.
6. Restart the Print Spooler service.
7. Print a test page.
8. Confirm the printer has paper, ink, or toner.
9. Update or reinstall the printer driver.
10. For a network printer, verify the IP address and test connectivity with `ping`.
11. Remove and re-add the printer if necessary.
12. Escalate if the printer has a hardware fault or remains unreachable.

## Print Spooler Commands

```powershell
Get-Service Spooler
Restart-Service Spooler
