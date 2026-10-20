Week 8 Cron Automation

Cron syntax uses five fields

minute hour day-of-month month day-of-week command

Example

0 2 * * 0 /home/james/scripts/disk_report.sh

Edit current crontab

crontab -e

List current cron jobs

crontab -l

Remove crontab

crontab -r

Warning crontab -r is risky because it deletes the entire crontab with no confirmation

Always use absolute paths in cron jobs because cron runs with a limited environment and may not know the current working directory

Example

/home/james/scripts/disk_report.sh

Append output to a file

Example

echo test >> logfile.txt

Redirect stderr to the same location as stdout

2>&1

Example

/home/james/scripts/disk_report.sh >> logfile.txt 2>&1

View the end of a log file

tail

Examples

tail -20 logfile.txt

tail -f logfile.txt

Check cron activity in syslog

grep CRON /var/log/syslog | tail -20

If syslog is unavailable use journalctl

sudo journalctl -u cron.service | tail -20

Cron troubleshooting

1 Verify the job exists with crontab -l 2 Check syslog or journalctl to confirm cron attempted the job 3 Check the 
scripts log file to confirm the script succeeded 4 Verify permissions on the script and log directory 5 Verify 
absolute paths are being used 6 Verify errors are being captured with 2>&1
