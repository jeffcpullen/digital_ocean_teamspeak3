#!/bin/bash
BANNER="======================================"

echo $BANNER
echo "Create the droplet"
echo $BANNER

ansible-playbook deploy_droplet.yml
echo $BANNER
echo "Droplet created"
echo $BANNER


echo $BANNER
echo "Add python"
echo $BANNER
echo yes | ansible teamspeak -m raw -a "dnf -y install python-simplejson python-dnf"
echo $BANNER
echo "Python added"
echo $BANNER


echo $BANNER
echo "Install and configure TeamSpeak"
echo $BANNER
ansible-playbook deploy_teamspeak.yml
echo $BANNER
echo "TeamSpeak installed and configured"
echo $BANNER
