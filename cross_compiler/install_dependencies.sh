#!/bin/sh -ex

# install requisite packages
apt-get install -y --no-install-recommends \
	git \
	devscripts \
	fakeroot \
	equivs \
	lsb-release \
	less

# install machinekit build depends
apt-get install -y -t wheezy-backports cython

apt-get install -y --no-install-recommends \
	autoconf \
	automake \
	avahi-daemon \
	build-essential \
	bwidget \
	debhelper \
	kmod \
	libavahi-client-dev \
	libboost-python-dev \
	libboost-serialization-dev \
	libboost-thread-dev \
	libczmq-dev \
	libgl1-mesa-dev \
	libglib2.0-dev \
	libglu1-mesa-dev \
	libgtk2.0-dev \
	libjansson-dev \
	libmodbus-dev \
	libncurses-dev \
	libprotobuf-dev \
	libprotoc-dev \
	libreadline-dev \
	libsodium-dev \
	libssl-dev \
	libtk-img \
	libtool \
	libudev-dev \
	liburiparser-dev \
	libusb-1.0-0-dev \
	libwebsockets-dev \
	libxaw7-dev \
	libxenomai-dev \
	libxmu-dev \
	libxmu-headers \
	libzmq4-dev \
	openssl \
	pkg-config \
	procps \
	protobuf-compiler \
	psmisc \
	python \
	python-avahi \
	python-dev \
	python-netifaces \
	python-protobuf \
	python-pyftpdlib \
	python-setuptools \
	python-simplejson \
	python-support \
	python-tk \
	python-zmq \
	tcl8.5-dev \
	tk8.5-dev \
	uuid-dev \
	uuid-runtime

