#!/bin/bash


#sudo git clone https://github.com/bsnp21/install.git 


# top the system service a.node.js running
sudo /var/www/html/wdaws/bb/svr/my_systemd_startup/stop_bsnpa_service.sh

sudo rm -rf /var/www/html/wdaws

# install github codes.
./setup_proj_main.sh
./setup_proj_obi.sh

# restart system service a.node.js
sudo /var/www/html/wdaws/bb/svr/my_systemd_startup/setup_bsnpa_service.sh
sudo /var/www/html/wdaws/bb/svr/my_systemd_startup/start_bsnpa_service.sh


# -f: tail to end for debug...
journalctl -u bsnpa -f 