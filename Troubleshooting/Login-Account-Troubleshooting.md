# Login & Account Troubleshooting Guide

## Common Symptoms

- User cannot sign in
- Incorrect username or password
- Account is locked
- Password has expired
- Multi-factor authentication (MFA) issues
- Domain trust relationship error
- Profile fails to load

## Possible Causes

- Incorrect credentials
- Expired password
- Locked account
- Network connectivity issues
- Active Directory synchronization delays
- Corrupted user profile
- MFA configuration problems

## Troubleshooting Steps

1. Verify the username and password.
2. Confirm the Caps Lock key is not enabled.
3. Test the user's network connection.
4. Verify the device is connected to the domain (if applicable).
5. Unlock the account in Active Directory (if applicable).
6. Reset the user's password and verify password policy requirements.
7. Verify the user's account is enabled.
8. Confirm MFA enrollment and authentication methods.
9. Test login from another device.
10. Create a new Windows profile if the current profile is corrupted.
11. Escalate if authentication services or domain controllers appear unavailable.

## Documentation

Record:

- Username
- Device name
- Error message
- Account status
- Password reset performed
- MFA status
- Troubleshooting steps completed
- Final resolution
