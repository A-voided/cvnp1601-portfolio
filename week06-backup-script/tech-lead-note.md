Tech Lead Note

The backup script creates a compressed backup of the /etc directory and gives the archive a timestamp so each backup 
has a unique name. The backup files are stored in /var/backups/etc and the log file is stored in 
/var/log/backup_etc.log. 
The script uses a log function with tee -a so the backup steps are shown on the screen and saved to the log at the 
same time.

The script checks the tar command directly with an if statement. 
If tar succeeds, the script logs that the backup was successful. 
If tar fails, the script logs an error and exits with a failure status instead of reporting a false success.

The Git history shows that the script was created and then improved with archive verification. 
It also shows the Week 6 cheat sheet and break/fix diagnosis were committed. 
This reduces the risk of having an unreliable backup or not knowing when the script was changed.
