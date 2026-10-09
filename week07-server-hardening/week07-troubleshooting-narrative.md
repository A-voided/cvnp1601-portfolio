Week 7 Troubleshooting Narrative

While hardening SSH I found that password authentication was still enabled even though I had changed sshd_config to
disable it. I checked the SSH configuration files and found that 50-cloud-init.conf contained PasswordAuthentication 
yes. I changed it to no checked the syntax with sshd -t reloaded SSH and confirmed the effective settings with sshd -T.

I then configured UFW to deny incoming connections by default allow outgoing connections and permit SSH before enabling
the firewall. The firewall status confirmed that it was active and SSH was allowed for IPv4 and IPv6.

Finally I restricted permissions on my SSH directory authorized keys file and hardening script. The permission listing
showed the expected settings and the world-writable search returned no output.

This task showed me why it is important to check the effective configuration and verify each security change instead of 
assuming it worked.
