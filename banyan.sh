#!/bin/bash

# URL to your script hosted online
SCRIPT_URL="https://raw.githubusercontent.com/MISTERNEGATIVE21/banyan-tree/master/rpm-ostree-manager.sh"

# Path where the script will be installed
INSTALL_PATH="/usr/local/bin/banyan"

# Download and install the script
echo "Downloading Banyan script..."
curl -fsSL $SCRIPT_URL -o $INSTALL_PATH

# Check if download was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to download the script."
    exit 1
fi

# Make the script executable
chmod +x $INSTALL_PATH

# Verify installation
if [ -x $INSTALL_PATH ]; then
    echo "Banyan has been installed successfully!"
    echo "You can now use it by typing 'banyan' in your terminal."
else
    echo "Error: Failed to install Banyan."
    exit 1
fi
