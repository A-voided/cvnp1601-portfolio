Technical Lead Note

This week I practiced finding processes using too much CPU and troubleshooting a failed nginx service. 
I learned to check the process owner before trying to stop a process. I also used journalctl to find the reason nginx failed to start, 
fixed the bad configuration line, and verified the service was running again. One thing I learned is that using kill -9 does not get 
around Linux permissions. It is important to find the cause of a problem before trying more forceful fixes
