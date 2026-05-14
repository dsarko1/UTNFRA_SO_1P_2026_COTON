#!/bin/bash

IP=$(curl -s ifconfig.me)
MHZ=$(grep "MHz" /proc/cpuinfo | head -n1 | awk '{print $4}')
CPU=$(grep "model name" /proc/cpuinfo | head -n1 | awk -F':' '{print $2}')

mkdir -p $HOME/Punto_G

cat << EOF > $HOME/Punto_G/Filtro_Avanzado.txt

Mi ip publica es: $IP
CPU Modelo: $CPU Frecuencia: $MHZ Mhz
EOF
