#!/bin/bash
apt update -y
apt upgrade -y
#install docker
sudo apt-get install -y docker.io docker-compose
sudo systemctl enable docker
sudo systemctl restart docker
sudo usermod -a -G docker ubuntu
#install snapd and terminator
sudo apt install snapd terminator -y
#install visual-studio-code and similar tools for our work
sudo snap install code --classic
sudo snap install sublime-text --classic
sudo snap install teams-for-linux
sudo snap install slack --classic
sudo snap install telegram-desktop
sudo apt install chromium-browser -y
sudo snap install prospect-mail
#install openconnect
sudo snap install globalprotect-openconnect --edge
#other tools
sudo apt install build-essential -y
sudo apt-get install manpages-dev -y
#python
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update -y
sudo apt install python3.8 -y
#supporting software
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget -y
sudo apt install curl -y
#install aws cli
sudo snap install aws-cli --classic
#install google cloud sdk
sudo snap install google-cloud-sdk --classic
#azure storage explorer
sudo snap install storage-explorer
#azure gateway
sudo apt install snapd
#terraform
sudo apt-get install -y gnupg software-properties-common curl -y
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update
sudo apt-get install terraform
#terragrunt 
sudo snap install terragrunt
#keepass to store passwords
sudo snap install keepassxc
#ansible
sudo apt install ansible
#install github desktop (be sure this is the latest version)
sudo wget https://github.com/shiftkey/desktop/releases/download/release-2.9.3-linux3/GitHubDesktop-linux-2.9.3-linux3.deb
sudo dpkg -i GitHubDesktop-linux-2.9.3-linux3.deb
#openshift client
wget https://github.com/openshift/origin/releases/download/v3.11.0/openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz
tar xvzf openshift*.tar.gz && cd openshift-origin-client-tools*/
sudo mv  oc kubectl  /usr/local/bin/
#mv ssh config file
mv ssh_config/config $HOME/.ssh/config
