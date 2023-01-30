#!/bin/bash 

# Install the Desktop Enviroment
apt install ubuntu-desktop -y

# Download Chrome Remote Desktop
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb

# Install Chrome Remote Desktop
apt-get install --assume-yes ./chrome-remote-desktop_current_amd64.deb

# Create a new user
echo "Enter the desired username:"
read username
adduser $username

# Make user a sudoer
usermod -aG sudo $username

# Run command from chrome web browser under add by ssh
su - <$username> -c 'echo "Please go to https://remotedesktop.google.com/headless and login in to or create an account as necessary. Follow the prompts and authorize. Copy the Debian Linux box command and paste it into your vm console.'

# Swith to new user 
su $username





