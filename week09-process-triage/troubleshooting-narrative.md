Troubleshooting Narrative
I first practiced finding a process that was using a lot of CPU and checked its PID, owner, and command.
I stopped the test process with SIGTERM and confirmed it was no longer running.

For the nginx issue, I added an invalid directive to the configuration file to cause a startup failure.
I checked the service status and journal logs, which showed the unknown directive on line 1.
I saved the failure logs before fixing the problem. After removing the invalid line, I ran the nginx configuration test, restarted the 
service, and confirmed it was active again.

This helped me understand why checking logs and permissions matters before trying more forceful fixes.
A process running under another account may require authorized privileges to manage, and restarting a service without understanding 
the error can make troubleshooting harder.
