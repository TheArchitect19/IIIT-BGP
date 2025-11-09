#!/bin/bash

# Install NVM (Node Version Manager)
echo "Downloading and installing NVM..."
curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash

# Load NVM into the current shell session
echo "Loading NVM..."
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Verify NVM installation
echo "Verifying NVM installation..."
if command -v nvm &> /dev/null
then
    echo "NVM installed successfully! Version: $(nvm --version)"
else
    echo "NVM installation failed."
    exit 1
fi

echo "Installation complete. You may need to restart your terminal or run 'source ~/.bashrc' to start using NVM."