What went wrong was that the script ran through cron but could not find the duf command, causing part of the report 
to be missing. The first evidence I checked was the disk report log and the cron entries in syslog.
I compared the manual run to the cron run and found the "duf command not found" error. The fix was to use the 
full path to the duf command so cron could locate it correctly.
I verified the fix by checking that the Extended Report section appeared in the log and that the error no longer 
appeared. The reliability impact was that incomplete reports could hide disk space problems and reduce the accuracy
of audit records.
