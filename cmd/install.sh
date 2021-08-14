#!/bin/bash




sudo rm -rf /var/www/html/wdaws

./setup_apache.sh
./setup_app_base.sh
./setup_app_mkdir.sh

./setup_pm2_auto_restart.sh



#./update_github_home_svip.sh
SvrIP=`dig +short myip.opendns.com @resolver1.opendns.com`
echo SvrIP=${SvrIP}

echo "please run update_github_home_svip.sh with PAT param to update bsnp21."
