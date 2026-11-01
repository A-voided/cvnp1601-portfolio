Troubleshooting Narrative – Week 10
Ticket CVNP1601-W10-010

The reported problem was that the server could not reach external API endpoints
I started by checking the network interface and routing table to see if the VM had an active connection and a default gateway
The ens33 interface was up and had an assigned IP address with a default route through 192.168.126.2
I tested connectivity using ping to 8.8.8.8 and google.com and both tests succeeded with no packet loss
DNS resolution was also working correctly because google.com resolved to an IP address
No network or DNS issues were found during testing
I saved the network information as evidence to document the system state and help with future troubleshooting
