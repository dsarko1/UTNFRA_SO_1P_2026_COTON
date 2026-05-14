#!/bin/bash

DISCO=$(sudo fdisk -l | grep "8 GiB" | awk '{print $2}' | awk -F ':' '{print $1}')

sudo fdisk -l $DISCO | grep Linux | awk '{print "sudo mkfs.ext4 " $1}' | /bin/bash

sudo mount /dev/sdc1 $HOME/Astronomia/Planeta/Gravedad
sudo mount /dev/sdc2 $HOME/Astronomia/Planeta/Orbita
sudo mount /dev/sdc5 $HOME/Astronomia/Cometa/Cola
sudo mount /dev/sdc6 $HOME/Astronomia/Cometa/Gravedad
sudo mount /dev/sdc7 $HOME/Astronomia/Cometa/Orbita
