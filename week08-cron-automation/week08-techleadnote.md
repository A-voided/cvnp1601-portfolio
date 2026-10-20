The scheduled job runs the disk_report.sh script automatically to collect disk usage information and write the results
to /home/james/logs/disk_report.log. Each report includes a timestamp, allowing the log file to serve as evidence 
that the script executed successfully over time. Additional verification comes from cron entries in syslog, which 
show that the cron service attempted to run the scheduled job.

The final schedule is 0 2 * * 0, which runs the script every Sunday at 2:00 AM. This automation reduces the risk of 
disk space problems going unnoticed and improves auditing by creating a consistent record of both system storage 
usage and scheduled task execution.
