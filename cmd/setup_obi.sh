

HOSTPATH="/var/www/html"
WKDIR="wdaws/obi"
 
cd ${HOSTPATH}
sudo mkdir -p ${WKDIR}
cd ${WKDIR}

USR1="wding"
USR2="soft"
PWD1="ghp"
PWD2="LESQRco71xsi6ai5"
PWD3="wc3cx47MrB4"
PWD4="5qA32WJKw"
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



