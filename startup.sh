#!/bin/sh

# Start sshd for Azure
ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
mkdir -p /etc/ssh/run
/usr/sbin/sshd

# Run any additional commands like ./camunda.sh
npm start