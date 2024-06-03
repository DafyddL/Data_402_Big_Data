#!/bin/bash
sudo apt update -y
sudo apt install mysql-server
sudo sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mysql.conf.d/mysqld.cnf
sudo systemctl restart mysql