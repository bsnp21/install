#!/bin/bash


#sudo git clone https://github.com/bsnp21/install.git 




# install apt-get install git 

./setup_apache.sh

./setup_npm_node.sh

./setup_proj_main.sh
./setup_proj_obi.sh

./setup_proj_system_service.sh


# last step: gh. prepare brwoser open: https://github.com/login/device. 
./setup_visually_gh.sh




#./update_github_home_svip.sh
SvrIP=`dig +short myip.opendns.com @resolver1.opendns.com`
echo SvrIP=${SvrIP}

echo "please run update_github_home_svip.sh with PAT param to update bsnp21."
