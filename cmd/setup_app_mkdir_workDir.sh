


cd /var/www/html
sudo mkdir wdaws
cd wdaws

#base libs.
sudo git clone https://github.com/wdingbox/bible_concordance.git
sudo git clone https://github.com/wdingbox/bible_obj_lib.git
#sudo git clone https://github.com/bsnp21/install.git
#git clone https://github.com/wdingbox/bible_obj_usr.git
#git clone https://github.com/wdingbox/hebrew_ciu.git

#Client-Svr
sudo git clone https://github.com/bsnp21/bb.git
#sudo cp ./ham12/utility/wdaws/*.htm ../index.html


cd bb/svr/restapi
sudo ./install_node_modules.sh





#############



