When a cron job appears in crontab -l but produces no output the first command I would run is

grep CRON /var/log/syslog | tail -20

This verifies whether cron is actually attempting to run the job Cron jobs should always use absolute paths because 
cron's working directory is not your home directory so relative paths may fail Cron also runs with a 
limited environment and may not have the same PATH variables or environment settings as an interactive shell 
Next check permissions to confirm the cron user can execute the script and write to the specified log 
location Verify that stderr is being captured with 2>&1 otherwise error messages may be lost Finally 
distinguish between evidence that cron tried to run the job through syslog or journalctl entries and 
evidence that the script succeeded through timestamped entries in the scripts own log file
