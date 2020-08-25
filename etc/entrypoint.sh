#!/bin/sh
set -eu

# Store host ssh keys in the home dir to avoid warning on key change

if [ ! -d /home/developer/.sshd ]; then
    ssh-keygen -A
    mv /etc/ssh /home/developer/.sshd
fi
rm -rf /etc/ssh
ln -s /home/developer/.sshd /etc/ssh


exec /usr/sbin/sshd -D -e "$@"
