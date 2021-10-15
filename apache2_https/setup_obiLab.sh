

HOSTDIR="/var/www/html"
WKDIR="obi/Lab"
 
cd ${HOSTDIR}

rm -rf ${WKDIR}
mkdir -p ${WKDIR}
cd ${WKDIR}
#touch index.html

USR1="wding"
USR2="box"
PWD1="ghp"
PWD2="7yj6dx6Omh"
PWD3="BOOMsdA2LDP"
PWD4="418RjnxiA4TnZXg"
PROJ1="obilib"
PROJ2="obronze"
GITPATH1="github.com/${USR1}${USR2}/${PROJ1}.git"
#GITPATH2="github.com/${USR1}${USR2}/${PROJ2}.git"
#base libs.


echo git clone  https://${USR1}${USR2}:${PWD1}_${PWD2}${PWD3}${PWD4}@${GITPATH1}
sudo git clone  https://${USR1}${USR2}:${PWD1}_${PWD2}${PWD3}${PWD4}@${GITPATH1}

echo rm -rf ${WKDIR}/${PROJ1}/.git
#sudo rm -rf ${PROJ1}/.git





#############



