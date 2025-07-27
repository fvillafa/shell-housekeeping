#!/bin/bash
apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade
apt -y autoremove
dpkg -l | awk '/^rc/ {print $2}' | xargs -r dpkg --purge
apt-get clean
