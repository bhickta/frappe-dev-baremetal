#!/bin/bash
echo "Installing Ansible..."
sudo apt-get update
sudo apt-get install -y ansible git

echo "Running Playbook..."
ansible-playbook -i inventory/hosts site.yml
