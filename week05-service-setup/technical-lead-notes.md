The script updates the package list, installs nginx, enables it at boot, and starts it right away.
After that it checks if nginx is active and reports an error if it is not running.
I tested the script from a clean state to make sure nginx was not already set up.
I then checked systemctl is-active nginx and systemctl is-enabled nginx to verify that nginx was running and enabled 
for startup.I also checked that the nginx package was installed.
The verification block helps prevent the script from saying it worked when nginx actually failed to start.
This makes the script more reliable because it catches a problem right away instead of leaving the web server not 
running.
