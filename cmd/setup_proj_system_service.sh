


 

# install required modules for a.node.js
cd /var/www/html/wdaws/bb/svr/restapi
sudo ./install_node_modules.sh

sudo ../my_systemd_startup/setup_bsnpa_service.sh
sudo ../my_systemd_startup/setup_bsnpc_service.sh

sudo ../my_systemd_startup/start_bsnpa_service.sh
sudo ../my_systemd_startup/start_bsnpc_service.sh
#############



