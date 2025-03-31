#!bin/bash

# Description: Run this command on startup

sudo yum update -y
sudo groupadd docker
sudo useradd John -aG docker 
sudo yum install git unzip wget httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo cd /opt
sudo wget https://github.com/kserge2001/web-consulting/archive/refs/heads/dev.zip
sudo unzip dev.zip
sudo cp -r /opt/web-consulting-dev/* /var/www/html