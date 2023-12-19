#!/bin/bash

CL_VERSION=$(curl -s https://cdn.download.clearlinux.org/releases/current/clear/latest)


upstream_url="https://cdn.download.clearlinux.org/update"
statedir="$PWD/swupd-state"
#bundles="os-core,os-core-update,systemd-networkd-autostart,shells"
bundles="os-core-update,systemd-networkd-autostart,openssh-server,sysadmin-basic"
swupd os-install \
	--url $upstream_url \
	--statedir $statedir \
	--no-boot-update \
	-B $bundles \
	base