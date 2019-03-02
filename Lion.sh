#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get purge openssh-server
yes Yes | sudo apt-get install openssh-server
sudo service ssh status
sudo sed -i -e 's/#Port 22/Port 4141/' /etc/ssh/sshd_config
sudo service ssh restart
sudo service ssh status
