FROM debian:jessie
MAINTAINER GP Orcullo <kinsamanka@gmail.com>

# install required dependencies
RUN	apt-get update && \
	apt-get -y --no-install-recommends install \
		debootstrap \
		proot \
		qemu-user-static

# patch debootstrap as /proc cannot be mounted under proot
RUN	sed -i 's/in_target mount -t proc/#in_target mount -t proc/g' /usr/share/debootstrap/functions

