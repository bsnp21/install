#!/bin/bash



./setup_apache.sh


./setup_app_base.sh

./setup_app_mkdir.sh

#./update_github_home_svip.sh


./setup_pm2_auto_restart.sh



SvrIP=`dig +short myip.opendns.com @resolver1.opendns.com`
echo SvrIP=${SvrIP}
