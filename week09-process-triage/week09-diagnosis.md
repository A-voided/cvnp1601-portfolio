Week 9 Diagnosis


State

The process using the most CPU was PID 5502, an nginx worker using 97.8% CPU. The process owner was www-data, while the person trying 
to stop it was logged in as trainee. Both kill 5502 and kill -9 5502 failed with "Operation not permitted." 
Neither signal stopped the process.


Root Cause

The most likely cause is that the trainee does not have permission to signal a process owned by www-data. 
Using -9 makes the signal forceful, but it does not bypass Linux permission checks. 
The error does not mean the process is specially protected or impossible to stop.


Remediation

The first step is to check the nginx service and confirm whether the worker is actually causing a problem. If the worker needs to be 
stopped as part of an approved response, use the service manager with administrator privileges rather than trying to kill another 
user's process directly.

The trainee should run:

sudo systemctl status nginx --no-pager

If the incident requires restarting nginx and the trainee is authorized to do so, the command is:

sudo systemctl restart nginx


Verification

First, check the service state with systemctl status nginx and confirm it is active and running after the approved fix.

Second, inspect the process list with ps aux --sort=-%cpu | head -10 to check the nginx workers and their CPU usage. These checks show 
both whether the service is running and whether the high-CPU condition has improved.

A rejected signal is a permission boundary, not proof that a process is dangerous or unkillable. Recognizing the difference helps avoid 
unnecessary reboots and keeps incident response focused on the actual problem.
