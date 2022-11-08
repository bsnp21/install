#!/bin/bash


#sudo git clone https://github.com/bsnp21/install.git 


./stop_pm2.sh
./uninstall_pm2.sh

sudo rm -rf /var/www/html/wdaws

./setup_apache.sh
./setup_npm_node_ok.sh
./setup_pm2.sh
./setup_user_app.sh

./start_pm2.sh



#./update_github_home_svip.sh
SvrIP=`dig +short myip.opendns.com @resolver1.opendns.com`
echo SvrIP=${SvrIP}

echo "please run update_github_home_svip.sh with PAT param to update bsnp21."
