


cd /var/www/html
sudo rm -rf wdaws
sudo mkdir wdaws
cd wdaws

#base libs.
sudo git clone https://github.com/wdingbox/bible_concordance.git
sudo git clone https://github.com/wdingbox/bible_obj_lib.git
#sudo git clone https://github.com/bsnp21/install.git
#git clone https://github.com/wdingbox/bible_obj_usr.git
#git clone https://github.com/wdingbox/hebrew_ciu.git

#Client-Svr
sudo git clone https://github.com/bsnp21/home.git
sudo git clone https://github.com/bsnp21/bb.git
#sudo cp ./ham12/utility/wdaws/*.htm ../index.html

# install required modules for a.node.js
cd bb/svr/restapi
sudo ./install_node_modules.sh

sudo ../my_systemd_startup/setup_bsnpa_service.sh
sudo ../my_systemd_startup/setup_bsnpc_service.sh

sudo ../my_systemd_startup/start_bsnpa_service.sh
sudo ../my_systemd_startup/start_bsnpc_service.sh
#############



