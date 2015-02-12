FROM kinsamanka/docker-qemu-chroot:armv7l-base
MAINTAINER GP Orcullo <kinsamanka@gmail.com>

# install native cross-compiler
ADD	http://emdebian.org/tools/debian/emdebian-toolchain-archive.key /tmp/
RUN	apt-key add /tmp/emdebian-toolchain-archive.key && \
	echo "deb http://emdebian.org/tools/debian/ jessie main" >> \
		/etc/apt/sources.list.d/emdebian.list && \
	dpkg --add-architecture armhf && \
	apt-get update && \
	apt-get install -y --no-install-recommends crossbuild-essential-armhf

# configure apt
ADD	configure_apt.sh /opt/rootfs/tmp/
RUN	proot -r /opt/rootfs -q qemu-arm-static /tmp/configure_apt.sh

# install dependencies
ADD	install_dependencies.sh /opt/rootfs/tmp/
RUN	proot -r /opt/rootfs -q qemu-arm-static /tmp/install_dependencies.sh
