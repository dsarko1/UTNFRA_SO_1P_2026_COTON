#!/bin/bash

sudo chown p1c1_2025_u1:p1c1_2025_gTodos /Punto_D/Libros
sudo chown p1c1_2025_u2:p1c1_2025_gTodos /Punto_D/Musica
sudo chown p1c1_2025_u3:p1c1_2025_gTodos /Punto_D/Videos

sudo chmod 740 /Punto_D/Libros
sudo chmod 755 /Punto_D/Musica
sudo chmod 775 /Punto_D/Videos

ls -ld /Punto_D/*
