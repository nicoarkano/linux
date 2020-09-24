#!/bin/bash

echo Scrip de liberación de RAM cache cada hora.
sudo touch /etc/cron.hourly/liberaRam.sh
echo "sync && sysctl -w vm.drop_caches=3" |sudo tee -a /etc/cron.hourly/liberaRam.sh
sudo chmod u+x /etc/cron.hourly/liberaRam.sh