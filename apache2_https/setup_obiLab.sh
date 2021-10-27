

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
PWD2="3zy1GsE6uWXH"
PWD3="trQJxxKO0W1"
PWD4="1LeWlfa4QlX7Y"
PROJ1="obilab"
PROJ2="obronze"
GITPATH1="github.com/${USR1}${USR2}/${PROJ1}.git"
#GITPATH2="github.com/${USR1}${USR2}/${PROJ2}.git"
#base libs.

GITPROJECT="https://${USR1}${USR2}:${PWD1}_${PWD2}${PWD3}${PWD4}@${GITPATH1}"

echo git clone  ${GITPROJECT}
sudo git clone  ${GITPROJECT}

#echo rm -rf ${WKDIR}/${PROJ1}/.git
#sudo rm -rf ${PROJ1}/.git





#############



