#!/bin/bash


#Script: server-setup.sh

# purpose: install and enable nginx on an fresh unbuntu server

#Author: James Goebel 
#Date: 9/26/2026
#Usage sudo bash server-setup.sh

# Update package lists so packages can be installed
echo "Updating package lists..."
sudo apt update

# Install nginx so the web server is available
echo "Installing nginx..."
sudo apt install -y nginx

# Enable nginx for boot and start it now
echo "Enabling and starting nginx..."
sudo systemctl enable --now nginx

# Verify nginx is running
if systemctl is-active --quiet nginx; then
echo "SUCCESS: nginx is active and running"
else
echo "ERROR: nginx failed to start" >&2
exit 1
fi
