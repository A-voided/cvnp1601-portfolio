Week 6 Troubleshooting Narrative

1 What was the problem?

The backup script reported that the backup succeeded even though tar showed permission errors 
while trying to read files in /etc.

2 What did the evidence show?

The terminal showed tar permission errors, but the script still logged Backup succeeded. 
The echo $? command also returned 0. The archive was only 128 bytes, which showed that the backup was not complete.

3 What was the root cause?

The tar command was piped into tee inside the if statement. Because of this, the if statement
checked tee's exit status instead of tar's exit status.

4 How was the problem fixed?

The tar command was tested directly in the if statement by removing the pipe to tee.

5 How was the fix verified?

The script can be run without sudo to make sure a failure is reported. 
It can also be run with sudo and the archive can be checked with tar to make sure it is a valid backup.

6 What was the risk?

A false success message could make someone think they have a working backup when they do not. 
This could cause problems during an incident if the backup is needed for recovery.
