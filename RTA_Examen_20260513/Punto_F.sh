#!/bin/bash

mkdir $HOME/Punto_F/

MEMORIA=$(free -h | grep "Mem:" | awk '{print $2}')
CPU=$(grep "model name" /proc/cpuinfo | head -n1)
MHZ=$(grep "cpu MHz" /proc/cpuinfo | head -n1)

echo $MEMORIA >> $HOME/Punto_F/Filtro_basico.txt
echo $CPU >> $HOME/Punto_F/Filtro_basico.txt
echo $MHZ >> $HOME/Punto_F/Filtro_basico.txt

cat $HOME/Punto_F/Filtro_basico.txt
