#!/bin/sh
set -eu

if [ ! -d /home/developer/.ssh ]; then
    mkdir -p /home/developer/.ssh
    chmod 700 /home/developer/.ssh
    touch /home/developer/.ssh/authorized_keys
    chmod 600 /home/developer/.ssh/authorized_keys
    chown -R developer:developer /home/developer
fi

if [ ! -d /home/developer/.sshd ]; then
    ssh-keygen -A
    mv /etc/ssh /home/developer/.sshd
fi
rm -rf /etc/ssh
ln -s /home/developer/.sshd /etc/ssh

echo ${AUTH_PUB_KEY} > /home/developer/.ssh/authorized_keys

exec /usr/sbin/sshd -D -e "$@"
