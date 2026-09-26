State 
The systm reported that the nginx service could not be found

Root Cause
Nginx was not installed so there was no nginx service for systectl to manage or detect 

Fix I updated the packagelist with apt and installed nginx 

Verification 
I checked with dpkg and aswell with systemctl is-active as well as is-enabled on nginx that verified that it was 
active and installed running and enabled 

Security and evidence integrity 

The checks make sure the setup worked as it should of instead of assuming it installed properly 
