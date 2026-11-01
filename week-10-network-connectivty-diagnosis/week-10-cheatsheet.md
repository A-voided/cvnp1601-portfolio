Week 10 – Network Diagnosis

ip addr

Shows network interfaces and assigned IP addresses

Look for UP and LOWER_UP to confirm the interface is active

ip route

Displays the routing table and default gateway

Check whether a default route exists

ip route add

Adds a new network route

Example sudo ip route add 192.168.10.0/24 via 192.168.126.2

ss -tlnp

Shows listening TCP ports and the processes using them

Useful for checking whether a service is listening

ping -c 4

Sends four ping packets to test connectivity

Example: ping -c 4 8.8.8.8

Can also test DNS with ping -c 4 google.com

ssh -v

Shows detailed information when making an SSH connection

Useful for troubleshooting SSH connection problem

Standard 5 – Network Capture

Captures network interface routing and listening port information into a timestamped file

Saves the output in ~/reports/.

Command:{ ip addr; echo "---"; ip route; echo "---"; ss -tlnp; } > ~/reports/network_$(date +%Y%m%d_%H%M%S).txt
