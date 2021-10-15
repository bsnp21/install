

HOSTDIR="/var/www/html"
WKDIR="obi/data"
 
cd ${HOSTDIR}

rm -rf ${WKDIR}
mkdir -p ${WKDIR}
cd ${WKDIR}
touch index.html

USR1="wding"
USR2="soft"
PWD1="ghp"
PWD2="bmS4tYs3eC"
PWD3="OpnDUoS1Yd"
PWD4="O49UqRfAUX42pD4y"
PROJ1="obimg"
PROJ2="obronze"
GITPATH1="github.com/${USR1}${USR2}/${PROJ1}.git"
GITPATH2="github.com/${USR1}${USR2}/${PROJ2}.git"
#base libs.


echo git clone  https://${USR1}${USR2}:${PWD1}_${PWD2}${PWD3}${PWD4}@${GITPATH1}
sudo git clone  https://${USR1}${USR2}:${PWD1}_${PWD2}${PWD3}${PWD4}@${GITPATH1}

echo rm -rf ${WKDIR}/${PROJ1}/.git
sudo rm -rf ${PROJ1}/.git

echo git clone https://${USR1}${USR2}:${PWD1}_${PWD2}${PWD3}${PWD4}@${GITPATH2}
sudo git clone https://${USR1}${USR2}:${PWD1}_${PWD2}${PWD3}${PWD4}@${GITPATH2}

echo rm -rf ${WKDIR}/${PROJ2}/.git
sudo rm -rf ${PROJ2}/.git






#############



