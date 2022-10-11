#!/bin/bash


APP_WD="/var/www/html/wdaws/bb/svr/restapi"


pm2 list

ps aux | grep a.node.js



cd ${APP_WD}






pm2 delete 0
pm2 delete a.node.js
pm2 delete ${APP_WD}/a.node.js

sudo pkill -f "${APP_WD}/a.node.js"

#pm2 startup
#
#  [PM2] Init System found: systemd
#  [PM2] To setup the Startup Script, copy/paste the following command:
#  sudo env PATH=$PATH:/usr/bin /usr/local/lib/node_modules/pm2/bin/pm2 startup systemd -u ubuntu --hp /home/ubuntu


#sudo env PATH=$PATH:/usr/bin /usr/local/lib/node_modules/pm2/bin/pm2 startup systemd -u ubuntu --hp /home/ubuntu

#pm2 startup upstart

#pm2 start a.node.js

#pm2 save


pm2 list

ps aux | grep a.node.js