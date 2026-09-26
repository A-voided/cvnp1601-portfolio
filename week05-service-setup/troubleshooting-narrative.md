What went wrong or could have gone wrong?
Nginx was not available when the system said the nginx service could not be found.

What evidence did you check first?
I checked the nginx service and found that the service was not installed.

What did you try?
I ran apt update and then installed nginx with apt install -y nginx.

What fixed the problem?
Installing nginx created the service so it could be managed with systemctl.

How did you verify the result?
I checked that nginx was active and enabled using systemctl is-active nginx and systemctl is-enabled nginx.

What was the security or reliability impact?
Without checking the service, the script could finish without nginx actually running. The verification block catches 
this and exits with an error.
