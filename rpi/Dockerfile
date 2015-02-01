FROM kinsamanka/docker-qemu-chroot
MAINTAINER GP Orcullo <kinsamanka@gmail.com>

# build RPi rootfs under /opt
RUN	cd /opt && \
	debootstrap --foreign --no-check-gpg --include=ca-certificates \
		--arch=armhf wheezy rootfs \
		http://mirrordirector.raspbian.org/raspbian && \
	proot -r /opt/rootfs -q qemu-arm-static \
		/debootstrap/debootstrap --second-stage --verbose 

# configure and cleanup apt
RUN	sh -c 'echo "deb http://mirrordirector.raspbian.org/raspbian/ wheezy main rpi" \
		> /opt/rootfs/etc/apt/sources.list' && \
	proot -r /opt/rootfs -q qemu-arm-static apt-get clean
