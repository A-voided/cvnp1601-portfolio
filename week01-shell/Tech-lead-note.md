This Week i check a linux filesystem and used commands like pwd cd ls find to locate files and i also used the commands grep head wc
to filter and count information in the /var/log/syslog. one of th emost useful command outputs was grep -i "error" /var/log/syslog 
| head -20 mainly becausse it redudced large logs into the the first 20 lines contaning the errors making it a lot nicer to read 
through i also found /car/log/auth.log when looking for authentication related logs when looking through /etc without 2>/dev/null
 i saw multipule permission denied messages which showed that some of the system file locations are protecteed. after that i escalated
any repeated or suspicious errors or authenication events that the sys admin or security team for further investigation.
the accurate command documentation i provide helps reduce the guessing during the incident by showing where i was what was accessed
aswell as the locations or info that couldnt be accessed.
