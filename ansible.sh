#!/bin/sh

echo "INSTALLING ANSIBLE"
sudo apt-get update
sudo apt-get -y install git make vim python-dev python-pip libffi-dev libssl-dev libxml2-dev libxslt1-dev libjpeg8-dev zlib1g-dev
sudo pip install ansible

echo "DOWNLOADING ANSIBLE PLAYBOOK FROM GITHUB"
git clone https://github.com/gms298/Configuration-Management-using-Ansible
cd Configuration-Management-using-Ansible/

echo "RUNNING ANSIBLE PLAYBOOK"
ansible-playbook main.yml -s -vvvv