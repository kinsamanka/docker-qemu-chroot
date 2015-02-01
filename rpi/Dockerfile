FROM kinsamanka/docker-qemu-chroot:proot-base
MAINTAINER GP Orcullo <kinsamanka@gmail.com>

# build RPi rootfs under /opt
RUN	cd /opt && \
	debootstrap --foreign --no-check-gpg --include=ca-certificates \
		--arch=armhf wheezy rootfs \
		http://mirrordirector.raspbian.org/raspbian && \
	proot -r /opt/rootfs -q qemu-arm-static \
		/debootstrap/debootstrap --second-stage --verbose 

