# Wi-Fi Troubleshooting Guide

## Common Symptoms

- Unable to connect to Wi-Fi
- Connected to Wi-Fi but no internet access
- Slow or unstable connection
- Wireless network is not visible
- Frequent disconnects

## Possible Causes

- Wi-Fi is disabled
- Airplane mode is enabled
- Incorrect network password
- Weak signal or interference
- Router or modem issue
- Incorrect IP or DNS configuration
- Outdated or corrupted wireless adapter driver

## Troubleshooting Steps

1. Confirm Wi-Fi is enabled and airplane mode is turned off.
2. Verify the correct wireless network and password are being used.
3. Restart the computer, modem, and router.
4. Forget the wireless network and reconnect.
5. Run `ipconfig /all` to review the network configuration.
6. Run `ipconfig /release` followed by `ipconfig /renew`.
7. Run `ipconfig /flushdns`.
8. Test connectivity with `ping 8.8.8.8`.
9. Test DNS resolution with `nslookup google.com`.
10. Update or reinstall the wireless adapter driver.
11. Test another device on the same network.
12. Escalate if multiple devices cannot connect or the router appears unavailable.

## Documentation

Record:

- Device name
- Operating system
- Network name
- Error message
- Troubleshooting steps completed
- Test results
- Final resolution
- Whether escalation was required
