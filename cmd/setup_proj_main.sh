


cd /var/www/html
sudo rm -rf wdaws
sudo mkdir wdaws
sudo chmod 777 wdaws
cd wdaws

#base libs.
git clone https://github.com/wdingbox/bible_concordance.git
git clone https://github.com/wdingbox/bible_obj_lib.git
#sudo git clone https://github.com/bsnp21/install.git
#git clone https://github.com/wdingbox/bible_obj_usr.git
#git clone https://github.com/wdingbox/hebrew_ciu.git

#Client-Svr
git clone https://github.com/bsnp21/home.git
git clone https://github.com/bsnp21/bb.git
#sudo cp ./ham12/utility/wdaws/*.htm ../index.html


cd ./bb/svr/restapi
./installinstall_node_modules.sh


#############



