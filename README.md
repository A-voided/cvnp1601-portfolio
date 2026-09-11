# CVNP1601 Linux Administration Portfolio

Coursework and evidence for CVNP1601. One folder per week.

Portfolio card WEEK 1 

I Am able to use commands such as grep find head wc to locate files filer logs and document findings while recoginzing
file/directory permissions and security boundaries.

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

The Week 3 provisioning process is being rebuilt from a clean state





AI Use

AI assistance was used throughout this portfolio as a learning and troubleshooting aid. AI was used to explain Linux commands and concepts, help identify command errors, provide step-by-step guidance, and assist with organizing the documentation and progress logs.

All commands and configuration changes documented in this portfolio were performed and verified in the Linux lab environment. 
AI assistance was used to support the learning process rather than replace hands-on work
