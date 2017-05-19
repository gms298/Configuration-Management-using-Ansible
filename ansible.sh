#!/bin/sh
cd Configuration-Management-using-Ansible/

echo "RUNNING ANSIBLE PLAYBOOK"
ansible-playbook playbook.yml -s -vvvv