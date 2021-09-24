


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
pm2 delete 0

pm2 startup
#
#  [PM2] Init System found: systemd
#  [PM2] To setup the Startup Script, copy/paste the following command:
#  sudo env PATH=$PATH:/usr/bin /usr/local/lib/node_modules/pm2/bin/pm2 startup systemd -u ubuntu --hp /home/ubuntu


sudo env PATH=$PATH:/usr/bin /usr/local/lib/node_modules/pm2/bin/pm2 startup systemd -u ubuntu --hp /home/ubuntu

pm2 startup upstart

pm2 start a.node.js

pm2 save


pm2 list



