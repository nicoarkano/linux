#!/bin/bash
echo Acelerador de Descargas de apt-fast
sleep 1s
cd /home
sudo add-apt-repository ppa:apt-fast/stable
sudo apt-get -y install apt-fast
