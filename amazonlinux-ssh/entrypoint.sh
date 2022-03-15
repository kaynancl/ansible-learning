#!/bin/bash

env > /tmp/env.txt
env | grep AWS_ >> /root/.ssh/environment

root_pw=${ROOT_PW:-root}

ssh-keygen -A

echo "root:$root_pw" | chpasswd

exec /usr/sbin/sshd -d -D -e "$@"