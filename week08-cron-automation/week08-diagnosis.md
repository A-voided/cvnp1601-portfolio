State

The script worked when it was run manually and produced the Extended report section in the disk_report.log file. 
The cron job also ran because syslog shows cron executed the script and a new report was written to the log. However,
the Extended report section was missing from the cron-generated report.

Root Cause

The problem is not that bash is randomly skipping lines. The error log shows "duf command not found" which means 
cron could not find the duf command. Cron runs with a limited environment and PATH compared to a normal terminal 
session.

Remediation

Run which duf to find the full path to the duf executable. Then replace the duf command in the script with its full 
path such as /usr/bin/duf so cron can locate it correctly.

Verification

Run the script manually and confirm the Extended report section appears in the log without errors. Then allow cron to 
run the job and verify that the Extended report appears again and that the duf command not found error no longer 
appears in the cron log.

Security Note

A job appearing in crontab -l only proves it is scheduled. Syslog proves cron attempted to run it. 
Neither proves every command inside the script succeeded. In this case cron started the script successfully but 
the duf command failed because the cron environment was different from the users interactive shell.
