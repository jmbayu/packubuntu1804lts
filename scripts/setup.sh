#!/bin/bash -eux

# Add mobile user to sudoers.
echo "mobile        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers.d/mobile
ls -l /etc/sudoers.d/
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# Disable daily apt unattended updates.
echo 'APT::Periodic::Enable "0";' >> /etc/apt/apt.conf.d/10periodic
