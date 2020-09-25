Scripts de Buenas Practicas Post-Instalacion de Lubuntu. Distribucion de Linux basada en Ubuntu/Debian.
Este repositorio fue creado en conjunto con la comunidad Linux Lubuntu en Español de Telegram. 
Puedes unirte a ella en el siguiente link: https://t.me/lubuntues
# Acelerador de descargas de apt-fast
sudo add-apt-repository ppa:apt-fast/stable
sudo apt-get -y install apt-fast

# Instalar Chromiun por paquete deb.
sudo add-apt-repository ppa:system76/pop
sudo apt-fast install -y chromium

# Instalar basshtop por deb
sudo add-apt-repository ppa:bashtop-monitor/bashtop
sudo apt-fast install -y bashtop

#Scrip de liberación de RAM cache cada hora.

sudo touch /etc/cron.hourly/liberaRam.sh
echo "sync && sysctl -w vm.drop_caches=3" |sudo tee -a /etc/cron.hourly/liberaRam.sh
sudo chmod u+x /etc/cron.hourly/liberaRam.sh

#Actualización completa del sistema

sudo apt-fast upgrade -y
