#!/bin/bash

sudo mkdir -p /Punto_D/{Libros,Musica,Videos}

whoami | sudo tee /Punto_D/{Libros,Musica,Videos}/elemento

tree /Punto_D/
