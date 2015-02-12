#!/bin/sh -ex

# copy resolv.conf from parent host
cp /host-rootfs/etc/resolv.conf /etc

# add dovetail gpg key
apt-key adv --keyserver hkp://keys.gnupg.net --recv-key 73571BB9

# update apt sources
echo "deb http://deb.dovetail-automata.com wheezy main" \
	> /etc/apt/sources.list.d/machinekit.list
echo "deb http://http.debian.net/debian wheezy-backports main" \
	>> /etc/apt/sources.list
apt-get update
