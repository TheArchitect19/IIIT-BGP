#!/bin/bash

# Update the package list
echo "Updating package list..."
sudo apt-get update -y

# Install required packages
echo "Installing required packages..."
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
echo "Adding Docker's official GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Set up Docker stable repository
echo "Setting up Docker stable repository..."
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update the package list again
echo "Updating package list again..."
sudo apt-get update -y

# Install Docker
echo "Installing Docker..."
sudo apt-get install -y docker-ce

# Start Docker service
echo "Starting Docker service..."
sudo systemctl start docker

# Enable Docker to start on boot
echo "Enabling Docker to start on boot..."
sudo systemctl enable docker

# Add current user to Docker group
echo "Adding current user ($USER) to Docker group..."
sudo usermod -aG docker "$USER"

# Prompt user for immediate group update
echo ""
echo "Docker installed successfully."
echo "To use Docker without sudo, you must re-login or run the following command:"
echo "    newgrp docker"
echo ""

# Optionally activate docker group in current session
read -p "Do you want to activate Docker group now (run 'newgrp docker')? [y/N]: " activate_now
if [[ "$activate_now" =~ ^[Yy]$ ]]; then
    newgrp docker
fi