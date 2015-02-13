## docker-qemu-chroot
QEMU Armhf User Emulation Docker Container


This is an implementation of QEMU User emulation on a Docker container using [proot](http://proot.me).


### Usage

Three readymade containers are provided: Raspberry Pi Raspbian and standard Debian Wheezy and Jessie ARMv7 armhf port

To use these containers, just use the following `FROM` files respectively:

```
FROM kinsamanka/docker-qemu-chroot:rpi-base
```

or

```
FROM kinsamanka/docker-qemu-chroot:wheezy-base
```
or

```
FROM kinsamanka/docker-qemu-chroot:jessie-base
```

The chroot filesystem is stored under ```/opt/rootfs```

To enter the chroot environment, run the following command:

```
proot -r /opt/rootfs -q qemu-arm-static /bin/bash
```

Additional information regarding `proot` usage can be found [here](http://proot.me/#examples).


