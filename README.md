## ClearLinux LXC templates
Automatically built LXC templates for ClearLinux to be used on Proxmox.

## How to use
First, install this [patch](https://github.com/furbyhaxx/proxmox_clearlinux_lxc) on your proxmox host.

## How to install
Run this oneliner on your Proxmox host to pull the latest ClearLinux LXC image into your templates directory.
```
CLVER=$(curl https://raw.githubusercontent.com/furbyhaxx/clearlinux_lxc/main/latest) && sudo wget https://github.com/furbyhaxx/clearlinux_lxc/releases/download/${CLVER}/ClearLinux-${CLVER}-amd64.tar.gz -O /var/lib/vz/template/cache/ClearLinux-${CLVER}-amd64.tar.gz
```

