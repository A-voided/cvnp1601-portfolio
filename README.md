# CVNP1601 Linux Administration Portfolio

Coursework and evidence for CVNP1601. One folder per week.

Portfolio card WEEK 1

I Am able to use commands such as grep find head wc to locate files filer logs and document findings while recoginzing file/directory permissions and security boundaries.

Portfolio card WEEK 2

I am able to use text processing commands such as grep and awk to extract, filter, and organize information from Linux files and logs. I also learned how to use vim and nano for editing files and how to redirect command output into files.

Week 2 included working with /etc/passwd and /var/log/auth.log, using commands such as grep, awk, head, and output redirection to collect and document system information.

Portfolio card WEEK 3

Ticket CVNP1601-W3-003

Submitted by: Engineering Manager

Affected system: Linux user account, developers group, sudoers policy

Request: Provision devuser with membership in the developers group and targeted service restart access.

Business impact: Medium

Security consideration: Full sudo access would give the account more privileges than required. The sudo rule must allow one exact service action while denying unrelated privileged actions.

Week 3 Progress

Confirmed the lab host was cvnp1606lab
Confirmed the working account was james
Confirmed the working directory was /home/james
Checked current group membership
Created the week03-provisioning directory
Created a screenshots directory for evidence
Created an evidence collection script
Made the script executable using chmod +x
Inspected /etc/passwd
Inspected /etc/shadow for the root entry
Created the devuser account
Verified the devuser account using id devuser
Initially created a misspelled devlopers group
Corrected the group name to developers
Added devuser to the developers group
Verified the group membership
Began configuring restricted sudo access
Used visudo to edit the sudoers configuration
Tested sudo permissions with sudo -l -U devuser
Found that the initial sudo rule was not being recognized
Inspected /etc/sudoers to troubleshoot the configuration
Removed the test devuser account and developers group to rebuild the configuration cleanly

Week 3 Troubleshooting

Several command and path errors occurred during setup and were corrected.

Examples included:

passwrd instead of passwd
desuser instead of devuser
devlopers instead of developers
Incorrect spacing when running commands
Testing sudo access before confirming the sudoers rule was being recognized

These errors were used as troubleshooting opportunities to identify the correct command syntax and verify changes before continuing.

Current Status

The Week 3 provisioning process is being rebuilt from a clean state.

Portfolio card WEEK 4

Access Lockdown and ACL Audit

Week 4 focused on Linux access control, file permissions, and access control lists. I worked with ACLs to inspect and document permissions on the /project directory.

I used getfacl to view the ACL configuration for /project and redirected the output into an audit file using >>. This created an ACL audit record that can be used as evidence of the current access configuration.

Week 4 also included reviewing access permissions and identifying how Linux permissions and ACLs can be used to control access to files and directories. The goal was to make sure users have only the access they need while documenting the permissions for troubleshooting and security review.

Portfolio card WEEK 5

I am able to install and configure nginx, enable it to start automatically at boot, verify that it is running, and use a Bash script to automate the setup and check for failures.

AI Tool Use Statement

I used AI to help organize and explain the Bash script requirements and review the commands used for installing, enabling, starting, and verifying nginx. I changed and verified the script myself and tested the commands on the Linux system. I can explain the shebang, apt update, apt install, systemctl enable --now, systemctl is-active, systemctl is-enabled, $? and exit 1 without AI help.

AI assistance was used throughout this portfolio as a learning and troubleshooting aid. AI was used to explain Linux commands and concepts, help identify command errors, provide step-by-step guidance, and assist with organizing the documentation and progress logs.

All commands and configuration changes documented in this portfolio were performed and verified in the Linux lab environment. AI assistance was used to support the learning process rather than replace hands-on work.


Portfolio card WEEK 6

I am able to create a Bash backup script that backs up /etc, uses variables, creates timestamped archives, 
and records backup activity in a log. I also learned how to use if statements and exit codes to detect when a 
backup fails and how Git can be used to track changes to scripts.

AI tool use

I used AI to help understand Bash scripting, troubleshooting, and how to organize the backup script. 

Portfolio card Week 7 Server Hardening

This week I worked on securing SSH access and setting up a firewall. I created an SSH key and configured the system to 
use public key authentication instead of password authentication. I also enabled UFW and allowed SSH so remote access 
would continue working.

I set secure permissions on my SSH files and hardening script and checked for world-writable files in my home directory.
One issue I found was that another SSH configuration file was still allowing password authentication. I fixed it and 
verified the final settings.

This lab helped me understand why checking the effective configuration matters and why security changes need to be 
tested carefully to avoid losing access.

Week 7 — Server Hardening

Configured SSH key authentication, disabled password-based SSH login, enabled UFW with secure default rules, and set 
restrictive permissions on SSH files. Troubleshot an SSH configuration override and verified the final security 
settings.

AI Use Statement

I used AI for some guidance while working through the Week 7 server hardening tasks. It helped me understand SSH 
settings, troubleshoot why password authentication was still enabled, and organize my notes. 
I ran the commands myself and checked the results in the lab to make sure the settings were correct.
