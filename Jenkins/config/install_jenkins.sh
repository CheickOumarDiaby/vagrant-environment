#!/bin/bash

# Update OS
sudo yum update

# Install dependences
sudo yum install -y wget

# Update repository
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

# Install java and jenkins
sudo yum install -y fontconfig java-11-openjdk
sudo yum install -y jenkins

# Start jenkins
sudo systemctl start jenkins && sudo systemctl enable jankins

# Display IP address and acces
echo "For this Stack, you will use http://$(ip -f inet addr show enp0s8 | sed -En -e 's/.*inet ([0-9.]+).*/\1/p'):8080 IP Address"
echo "Password : $(cat /var/lib/jenkins/secrets/initialAdminPassword)"