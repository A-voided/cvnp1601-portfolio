Week 6 Break/Fix Diagnosis
1 State

The tar command did run, but it showed permission errors while trying to back up /etc. 
The script still said the backup was successful. 
This happened because the script was checking the wrong part of the command for success.

2 Root Cause

The problem was piping tar into tee inside the if statement. The if statement ended up checking tee instead of tar.
 Tee completed successfully even though tar had errors, so the script reported a successful backup.

3.Remediation

The first fix is to test tar directly in the if statement.

Change:

if tar -czf "$ARCHIVE" /etc 2>&1 | tee -a "$LOG"; then

to:

if tar -czf "$ARCHIVE" /etc; then

This makes the if statement check whether tar actually worked. 
If tar fails, the else section will run and the script will exit with an error.

4 Verification

First, run the script without sudo and make sure it shows an error and returns a failure status.

Second, run the script with sudo and check that the archive was created and can be opened with tar. 
The log should also show that the backup succeeded.

Security Note

A backup saying it succeeded when it actually failed could cause a problem during an incident. 
Someone could trust the log and think there is a good backup when there really is not.

