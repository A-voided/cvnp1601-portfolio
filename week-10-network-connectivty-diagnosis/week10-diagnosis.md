Week 10 Break Fix Diagnosis
Ticket CVNP1601-W10-010

State
The server has two default routes but
pinging 8.8.8.8 failed with 100 percent
packet loss so external connectivity
is not working

Root Cause
The most likely problem is an incorrect
default route with a lower metric
The system prefers 10.0.2.254 because
its metric is 50 instead of 100
Traffic is likely going through the
wrong gateway

Remediation
The first step is to remove the
incorrect default route because it has
the lower metric and is being preferred

sudo ip route del default via 10.0.2.254 dev eth0

This should allow the system to use
the correct gateway 10.0.2.1

Verification
Use ip route get 8.8.8.8 to check
which gateway is being used
Then run ping -c 4 8.8.8.8 to test
external connectivity

Security Note
Having a default route listed does not
guarantee it is the correct route
being used When multiple routes exist
the system chooses based on priority
and metric Always verify the active
route before assuming routing is working
correctly
