#!/usr/bin/env sh

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "You must run this script as root or with sudo."
    exit 1
fi

# Get the username and password from the user
echo "Enter the username for the new user:"
read username
echo "Enter the password for the new user:"
read password

# Ask if the user should have sudo privileges
echo "Should the user have sudo privileges? (y/n):"
read is_sudo

# Create the new user
useradd -m -s /bin/sh "$username"
if [ $? -ne 0 ]; then
    echo "Failed to create user $username."
    exit 2
fi

# Set the password for the new user
echo "$username:$password" | chpasswd
if [ $? -ne 0 ]; then
    echo "Failed to set password for $username."
    exit 3
fi

# Add the user to the sudo group if requested
if [ "$is_sudo" = "y" ]; then
    usermod -aG sudo "$username"
    if [ $? -ne 0 ]; then
        echo "Failed to add $username to the sudo group."
        exit 4
    fi
    echo "User $username has been added to the sudo group."
else
    echo "User $username has been created without sudo privileges."
fi

# Optionally, display the user ID to confirm
id "$username"
