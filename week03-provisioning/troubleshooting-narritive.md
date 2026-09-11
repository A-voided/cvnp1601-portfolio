Troubleshooting Narrative

While provisioning the devuser account, I ran into a few errors with command spelling and group names. 
I also had trouble getting the sudo rule to work correctly I checked the sudoers file and found that the rule was present 
but the permissions on the file were not secure I learned that sudoers files need the correct permissions before sudo will trust them.
Instead of rebooting and guessing at the problem I checked the configuration and file permissions to find the likely cause. 
This helped me understand how to troubleshoot sudo access and why secure permissions are important
