Week 7 Diagnosis

Problem:
SSH password authentication was still enabled after changing the main SSH configuration file.

Cause:
The file /etc/ssh/sshd_config.d/50-cloud-init.conf contained PasswordAuthentication yes, which overrode the intended 
setting.

Fix:
Changed the setting to PasswordAuthentication no, checked the configuration with sudo sshd -t, reloaded SSH, and 
verified the effective settings with sudo sshd -T.

Verification:
Password authentication is disabled and public-key authentication is enabled. UFW is active, incoming connections 
are denied by default, and SSH is allowed. The SSH directory, authorized keys file, and hardening script have 
the required permissions.

Lesson learned:
SSH settings can be affected by other configuration files. Always check the effective settings after making changes. 
Keep an existing session open while hardening SSH to reduce the risk of losing access.
