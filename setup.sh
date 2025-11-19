#!/bin/bash
echo "Installing Ansible..."
sudo apt-get update
sudo apt-get install -y ansible git

# 2. Fix Home Permissions (Allows 'frappe' user to read Ansible tmp files)
echo "Relaxing Home Directory Permissions..."
# Grants Read/Execute access to everyone for the current user's home
sudo chmod o+rx $HOME

echo "Running Playbook..."
ansible-playbook -i inventory/hosts site.yml
