#!/bin/bash

apt install skopeo -y
git clone https://git.jakstys.lt/motiejus/undocker.git

cd undocker
make undocker

cd ..

docker_tarball=clearlinux.docker.tar
rootfs_tarball=clearlinux.rootfs.tar

rm $docker_tarball
rm $rootfs_tarball

skopeo copy docker://clearlinux:latest docker-archive:$docker_tarball
./undocker/undocker $docker_tarball $rootfs_tarball

/root/go/bin/distrobuilder build-lxc clearlinux-docker.yaml ./output/ --compression gzip


#wget https://github.com/gh0st-work/clear-linux-wsl/releases/download/40450/clear_linux_rootfs.tar.xz

#/root/go/bin/distrobuilder build-lxd clearlinux.yaml ./output/ --debug

