Week 7 Technical Lead Note

This week I worked on hardening SSH access and setting up a basic firewall. I created a separate SSH key for the lab
and added the public key to my account's authorized keys. I updated the SSH settings to disable password 
authentication and keep public-key authentication enabled.

At first, password authentication was still enabled even after I changed the main SSH configuration file. 
I found that another file, 50-cloud-init.conf, was setting password authentication to yes. I corrected that setting,
checked the configuration for errors, reloaded SSH, and verified the effective settings.

I also enabled UFW with incoming connections denied by default, outgoing connections allowed, and SSH permitted.
Finally, I set restrictive permissions on the SSH directory, authorized keys, and hardening script.

The main lesson was to verify the effective settings instead of assuming the first configuration change worked. 
Keeping an existing session open during SSH changes also helps reduce the risk of losing access to the system.
