# Setup MongoDB on AWS

First, make sure you're sshed into the aws server.

Next, ensure that the right packages are installed:
```
sudo apt install gnupg wget apt-transport-https ca-certificates software-properties-common
```

Next, import the Mo0ngoDB repository GPG key:
```
wget -qO- \
  https://pgp.mongodb.com/server-7.0.asc | \
  gpg --dearmor | \
  sudo tee /usr/share/keyrings/mongodb-server-7.0.gpg >/dev/null
```

Add MongoDB respoitory:
```
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] \
  https://repo.mongodb.org/apt/ubuntu $(lsb_release -cs)/mongodb-org/7.0 multiverse" | \
  sudo tee -a /etc/apt/sources.list.d/mongodb-org-7.0.list
```

update the apt 
```
sudo apt update
```

And finally, install mongodb
```
sudo apt install mongodb-org
```
One last step, start mongo
```
sudo systemctl enable --now mongod
```

### Remote access
If we want remote access, we need to allow so

```
sudo nano /etc/mongod.conf
```

Under the network interfaces, change binIp: 127.0.0.1 to bindIp: 0.0.0.0

Restart mongodb
```
sudo systemctl restart mongod.service
```

