#!/bin/bash
# Update apt
sudo apt -qq update -y

# Install dependancies
sudo apt -qq install -y gnupg wget apt-transport-https ca-certificates software-properties-common sed

# Get gpg key
wget -qO- https://pgp.mongodb.com/server-7.0.asc | gpg --dearmor | sudo tee /usr/share/keyrings/mongodb-server-7.0.gpg > /dev/null
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu $(lsb_release -cs)/mongodb-org/7.0 multiverse" | sudo tee -a /etc/apt/sources.list.d/mongodb-org-7.0.list

# Update apt again
sudo apt -qq update -y

# Install mongodb
sudo apt -qq install -y mongodb-org

#Enable mongodb as a service
sudo systemctl enable --now mongod

# Open connection to any IP
sudo sed -i 's/bindIp: 127.0.0.1/bindIp: 0.0.0.0/g' /etc/mongod.conf

# Restart mongoDB service
sudo systemctl restart mongod.service