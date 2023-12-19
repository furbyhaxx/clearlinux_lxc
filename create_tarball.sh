#!/bin/bash


cd base/etc
ln -s ../usr/lib/os-release os-release
cd ..

CL_VERSION=$(grep -oP '(?<=^VERSION_ID=).+' etc/os-release | tr -d '"')

#cd base
tar --numeric-owner -czf ../ClearLinux-${CL_VERSION}-amd64.tar.gz *
cd ..
#rm /var/www/html/images/ClearLinux-40480-amd64.tar.gz
#cp ClearLinux-40480-amd64.tar.gz /var/www/html/images/