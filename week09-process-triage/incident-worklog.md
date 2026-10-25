Week 9 Incident Worklog

For this assignment, I practiced finding and stopping a process that was using a lot of CPU. I used ps, pgrep, and top to look at 
running processes and find the one causing the high CPU usage. I used kill to stop it and checked that it was no longer running.

I also worked with nginx to practice troubleshooting a service failure. I added an invalid line to the configuration file, 
which caused nginx to fail when I tried to start it. I checked the service status and used journalctl to find the error. 
I saved the logs before fixing the problem.

The problem was the invalid directive on the first line of the nginx configuration file. I removed it and ran nginx -t to make sure the 
configuration was correct. After that, I restarted nginx and checked that it was running again.

I saved screenshots of the commands and results in my Word document as evidence. 
The failure log is saved in ~/reports/diagnosis_failure_20261025_191645.txt.
