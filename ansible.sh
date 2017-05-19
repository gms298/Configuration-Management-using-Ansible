#!/bin/sh

echo "DOWNLOADING ANSIBLE PLAYBOOK FROM GITHUB"
git clone https://github.com/gms298/Configuration-Management-using-Ansible
cd Configuration-Management-using-Ansible/

echo "RUNNING ANSIBLE PLAYBOOK"
ansible-playbook playbook.yml -s -vvvv