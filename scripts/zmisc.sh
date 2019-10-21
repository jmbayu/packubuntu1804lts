#!/bin/bash -eux

# set proxy
. /tmp/proxy.env
sudo cp /tmp/90proxy.conf /etc/apt/apt.conf.d/

echo "hello world"
wget www.google.de
ip a
