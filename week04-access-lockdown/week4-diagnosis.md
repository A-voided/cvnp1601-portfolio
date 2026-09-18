Week 4 Diagnosis
1. State

The file was successfully changed to be owned by root and the setuid bit was successfully added. The ls -l output shows -rwsr-xr-x, confirming the setuid bit is set. However, when the script was run, it still showed alice instead of root.

2. Root Cause

The most likely cause is that backup.sh is a shell script. Linux does not apply setuid privileges to scripts, so setting the bit with chmod does not make the script run as root.

3. Remediation

The trainee should not use setuid directly on the script. The safer approach is to use a small compiled setuid helper or another narrowly controlled privilege mechanism for the specific backup task. Sudoers could also be used if it can be restricted to only the required command.

4. Verification

I would first check the file type to confirm that backup.sh is a script. I would then test the replacement method and verify that the backup action runs with the required privileges. I would also confirm that unrelated commands do not receive elevated privileges.

Security Note

Using the narrowest privilege mechanism is important because giving a script or user more access than needed can create a security risk. The goal should be to allow only the required backup action instead of making broad root access available.
