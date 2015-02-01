FROM kinsamanka/docker-qemu-chroot:proot-base
MAINTAINER GP Orcullo <kinsamanka@gmail.com>

# build armv7l rootfs under /opt
RUN	cd /opt && \
	debootstrap --foreign --no-check-gpg --include=ca-certificates \
		--arch=armhf wheezy rootfs http://cdn.debian.net/debian && \
	proot -r /opt/rootfs -q qemu-arm-static \
		/debootstrap/debootstrap --second-stage --verbose 

